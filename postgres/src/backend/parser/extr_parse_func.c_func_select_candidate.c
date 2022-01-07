
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; scalar_t__* args; } ;
typedef scalar_t__ TYPCATEGORY ;
typedef scalar_t__ Oid ;
typedef TYPE_1__* FuncCandidateList ;


 int COERCION_IMPLICIT ;
 int ERRCODE_TOO_MANY_ARGUMENTS ;
 int ERROR ;
 int FUNC_MAX_ARGS ;
 scalar_t__ IsPreferredType (scalar_t__,scalar_t__) ;
 scalar_t__ TYPCATEGORY_INVALID ;
 scalar_t__ TYPCATEGORY_STRING ;
 scalar_t__ TypeCategory (scalar_t__) ;
 scalar_t__ UNKNOWNOID ;
 scalar_t__ can_coerce_type (int,scalar_t__*,scalar_t__*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg_plural (char*,char*,int,int) ;
 scalar_t__ getBaseType (scalar_t__) ;
 int get_type_category_preferred (scalar_t__,scalar_t__*,int*) ;

FuncCandidateList
func_select_candidate(int nargs,
       Oid *input_typeids,
       FuncCandidateList candidates)
{
 FuncCandidateList current_candidate,
    first_candidate,
    last_candidate;
 Oid *current_typeids;
 Oid current_type;
 int i;
 int ncandidates;
 int nbestMatch,
    nmatch,
    nunknowns;
 Oid input_base_typeids[FUNC_MAX_ARGS];
 TYPCATEGORY slot_category[FUNC_MAX_ARGS],
    current_category;
 bool current_is_preferred;
 bool slot_has_preferred_type[FUNC_MAX_ARGS];
 bool resolved_unknowns;


 if (nargs > FUNC_MAX_ARGS)
  ereport(ERROR,
    (errcode(ERRCODE_TOO_MANY_ARGUMENTS),
     errmsg_plural("cannot pass more than %d argument to a function",
          "cannot pass more than %d arguments to a function",
          FUNC_MAX_ARGS,
          FUNC_MAX_ARGS)));
 nunknowns = 0;
 for (i = 0; i < nargs; i++)
 {
  if (input_typeids[i] != UNKNOWNOID)
   input_base_typeids[i] = getBaseType(input_typeids[i]);
  else
  {

   input_base_typeids[i] = UNKNOWNOID;
   nunknowns++;
  }
 }





 ncandidates = 0;
 nbestMatch = 0;
 last_candidate = ((void*)0);
 for (current_candidate = candidates;
   current_candidate != ((void*)0);
   current_candidate = current_candidate->next)
 {
  current_typeids = current_candidate->args;
  nmatch = 0;
  for (i = 0; i < nargs; i++)
  {
   if (input_base_typeids[i] != UNKNOWNOID &&
    current_typeids[i] == input_base_typeids[i])
    nmatch++;
  }


  if ((nmatch > nbestMatch) || (last_candidate == ((void*)0)))
  {
   nbestMatch = nmatch;
   candidates = current_candidate;
   last_candidate = current_candidate;
   ncandidates = 1;
  }

  else if (nmatch == nbestMatch)
  {
   last_candidate->next = current_candidate;
   last_candidate = current_candidate;
   ncandidates++;
  }

 }

 if (last_candidate)
  last_candidate->next = ((void*)0);

 if (ncandidates == 1)
  return candidates;
 for (i = 0; i < nargs; i++)
  slot_category[i] = TypeCategory(input_base_typeids[i]);
 ncandidates = 0;
 nbestMatch = 0;
 last_candidate = ((void*)0);
 for (current_candidate = candidates;
   current_candidate != ((void*)0);
   current_candidate = current_candidate->next)
 {
  current_typeids = current_candidate->args;
  nmatch = 0;
  for (i = 0; i < nargs; i++)
  {
   if (input_base_typeids[i] != UNKNOWNOID)
   {
    if (current_typeids[i] == input_base_typeids[i] ||
     IsPreferredType(slot_category[i], current_typeids[i]))
     nmatch++;
   }
  }

  if ((nmatch > nbestMatch) || (last_candidate == ((void*)0)))
  {
   nbestMatch = nmatch;
   candidates = current_candidate;
   last_candidate = current_candidate;
   ncandidates = 1;
  }
  else if (nmatch == nbestMatch)
  {
   last_candidate->next = current_candidate;
   last_candidate = current_candidate;
   ncandidates++;
  }
 }

 if (last_candidate)
  last_candidate->next = ((void*)0);

 if (ncandidates == 1)
  return candidates;







 if (nunknowns == 0)
  return ((void*)0);
 resolved_unknowns = 0;
 for (i = 0; i < nargs; i++)
 {
  bool have_conflict;

  if (input_base_typeids[i] != UNKNOWNOID)
   continue;
  resolved_unknowns = 1;
  slot_category[i] = TYPCATEGORY_INVALID;
  slot_has_preferred_type[i] = 0;
  have_conflict = 0;
  for (current_candidate = candidates;
    current_candidate != ((void*)0);
    current_candidate = current_candidate->next)
  {
   current_typeids = current_candidate->args;
   current_type = current_typeids[i];
   get_type_category_preferred(current_type,
          &current_category,
          &current_is_preferred);
   if (slot_category[i] == TYPCATEGORY_INVALID)
   {

    slot_category[i] = current_category;
    slot_has_preferred_type[i] = current_is_preferred;
   }
   else if (current_category == slot_category[i])
   {

    slot_has_preferred_type[i] |= current_is_preferred;
   }
   else
   {

    if (current_category == TYPCATEGORY_STRING)
    {

     slot_category[i] = current_category;
     slot_has_preferred_type[i] = current_is_preferred;
    }
    else
    {



     have_conflict = 1;
    }
   }
  }
  if (have_conflict && slot_category[i] != TYPCATEGORY_STRING)
  {

   resolved_unknowns = 0;
   break;
  }
 }

 if (resolved_unknowns)
 {

  ncandidates = 0;
  first_candidate = candidates;
  last_candidate = ((void*)0);
  for (current_candidate = candidates;
    current_candidate != ((void*)0);
    current_candidate = current_candidate->next)
  {
   bool keepit = 1;

   current_typeids = current_candidate->args;
   for (i = 0; i < nargs; i++)
   {
    if (input_base_typeids[i] != UNKNOWNOID)
     continue;
    current_type = current_typeids[i];
    get_type_category_preferred(current_type,
           &current_category,
           &current_is_preferred);
    if (current_category != slot_category[i])
    {
     keepit = 0;
     break;
    }
    if (slot_has_preferred_type[i] && !current_is_preferred)
    {
     keepit = 0;
     break;
    }
   }
   if (keepit)
   {

    last_candidate = current_candidate;
    ncandidates++;
   }
   else
   {

    if (last_candidate)
     last_candidate->next = current_candidate->next;
    else
     first_candidate = current_candidate->next;
   }
  }


  if (last_candidate)
  {
   candidates = first_candidate;

   last_candidate->next = ((void*)0);
  }

  if (ncandidates == 1)
   return candidates;
 }
 if (nunknowns < nargs)
 {
  Oid known_type = UNKNOWNOID;

  for (i = 0; i < nargs; i++)
  {
   if (input_base_typeids[i] == UNKNOWNOID)
    continue;
   if (known_type == UNKNOWNOID)
    known_type = input_base_typeids[i];
   else if (known_type != input_base_typeids[i])
   {

    known_type = UNKNOWNOID;
    break;
   }
  }

  if (known_type != UNKNOWNOID)
  {

   for (i = 0; i < nargs; i++)
    input_base_typeids[i] = known_type;
   ncandidates = 0;
   last_candidate = ((void*)0);
   for (current_candidate = candidates;
     current_candidate != ((void*)0);
     current_candidate = current_candidate->next)
   {
    current_typeids = current_candidate->args;
    if (can_coerce_type(nargs, input_base_typeids, current_typeids,
         COERCION_IMPLICIT))
    {
     if (++ncandidates > 1)
      break;
     last_candidate = current_candidate;
    }
   }
   if (ncandidates == 1)
   {

    last_candidate->next = ((void*)0);
    return last_candidate;
   }
  }
 }

 return ((void*)0);
}
