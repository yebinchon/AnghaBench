#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int args; } ;
struct TYPE_6__ {TYPE_1__* op; } ;
struct TYPE_8__ {TYPE_3__ s_extended_operator; TYPE_2__ s_operator; } ;
struct demangle_component {int type; TYPE_4__ u; } ;
struct d_info {int /*<<< orphan*/  expansion; } ;
struct TYPE_5__ {char* code; int len; int args; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEMANGLE_COMPONENT_BINARY ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_BINARY_ARGS ; 
#define  DEMANGLE_COMPONENT_CAST 130 
#define  DEMANGLE_COMPONENT_EXTENDED_OPERATOR 129 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_INITIALIZER_LIST ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_NULLARY ; 
#define  DEMANGLE_COMPONENT_OPERATOR 128 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_PACK_EXPANSION ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_QUAL_NAME ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_TEMPLATE ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_TRINARY ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_TRINARY_ARG1 ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_TRINARY_ARG2 ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_UNARY ; 
 int INT_MAX ; 
 scalar_t__ FUNC0 (char) ; 
 struct demangle_component* FUNC1 (struct d_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct d_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct d_info*,char) ; 
 int FUNC4 (struct d_info*) ; 
 struct demangle_component* FUNC5 (struct d_info*) ; 
 struct demangle_component* FUNC6 (struct d_info*,char) ; 
 struct demangle_component* FUNC7 (struct d_info*,int /*<<< orphan*/ ,struct demangle_component*,struct demangle_component*) ; 
 struct demangle_component* FUNC8 (struct d_info*,int) ; 
 struct demangle_component* FUNC9 (struct d_info*) ; 
 char FUNC10 (struct d_info*) ; 
 char FUNC11 (struct d_info*) ; 
 struct demangle_component* FUNC12 (struct d_info*) ; 
 struct demangle_component* FUNC13 (struct d_info*) ; 
 struct demangle_component* FUNC14 (struct d_info*) ; 
 struct demangle_component* FUNC15 (struct d_info*) ; 
 int /*<<< orphan*/  FUNC16 (struct demangle_component*) ; 
 scalar_t__ FUNC17 (char const*,char*) ; 

__attribute__((used)) static inline struct demangle_component *
FUNC18 (struct d_info *di)
{
  char peek;

  peek = FUNC10 (di);
  if (peek == 'L')
    return FUNC5 (di);
  else if (peek == 'T')
    return FUNC14 (di);
  else if (peek == 's' && FUNC11 (di) == 'r')
    {
      struct demangle_component *type;
      struct demangle_component *name;

      FUNC2 (di, 2);
      type = FUNC1 (di);
      name = FUNC15 (di);
      if (FUNC10 (di) != 'I')
	return FUNC7 (di, DEMANGLE_COMPONENT_QUAL_NAME, type, name);
      else
	return FUNC7 (di, DEMANGLE_COMPONENT_QUAL_NAME, type,
			    FUNC7 (di, DEMANGLE_COMPONENT_TEMPLATE, name,
					 FUNC12 (di)));
    }
  else if (peek == 's' && FUNC11 (di) == 'p')
    {
      FUNC2 (di, 2);
      return FUNC7 (di, DEMANGLE_COMPONENT_PACK_EXPANSION,
			  FUNC18 (di), NULL);
    }
  else if (peek == 'f' && FUNC11 (di) == 'p')
    {
      /* Function parameter used in a late-specified return type.  */
      int index;
      FUNC2 (di, 2);
      if (FUNC10 (di) == 'T')
	{
	  /* 'this' parameter.  */
	  FUNC2 (di, 1);
	  index = 0;
	}
      else
	{
	  index = FUNC4 (di);
	  if (index == INT_MAX || index == -1)
	    return NULL;
	  index++;
	}
      return FUNC8 (di, index);
    }
  else if (FUNC0 (peek)
	   || (peek == 'o' && FUNC11 (di) == 'n'))
    {
      /* We can get an unqualified name as an expression in the case of
         a dependent function call, i.e. decltype(f(t)).  */
      struct demangle_component *name;

      if (peek == 'o')
	/* operator-function-id, i.e. operator+(t).  */
	FUNC2 (di, 2);

      name = FUNC15 (di);
      if (name == NULL)
	return NULL;
      if (FUNC10 (di) == 'I')
	return FUNC7 (di, DEMANGLE_COMPONENT_TEMPLATE, name,
			    FUNC12 (di));
      else
	return name;
    }
  else if ((peek == 'i' || peek == 't')
	   && FUNC11 (di) == 'l')
    {
      /* Brace-enclosed initializer list, untyped or typed.  */
      struct demangle_component *type = NULL;
      FUNC2 (di, 2);
      if (peek == 't')
	type = FUNC1 (di);
      if (!FUNC11 (di))
	return NULL;
      return FUNC7 (di, DEMANGLE_COMPONENT_INITIALIZER_LIST,
			  type, FUNC6 (di, 'E'));
    }
  else
    {
      struct demangle_component *op;
      const char *code = NULL;
      int args;

      op = FUNC9 (di);
      if (op == NULL)
	return NULL;

      if (op->type == DEMANGLE_COMPONENT_OPERATOR)
	{
	  code = op->u.s_operator.op->code;
	  di->expansion += op->u.s_operator.op->len - 2;
	  if (FUNC17 (code, "st") == 0)
	    return FUNC7 (di, DEMANGLE_COMPONENT_UNARY, op,
				FUNC1 (di));
	}

      switch (op->type)
	{
	default:
	  return NULL;
	case DEMANGLE_COMPONENT_OPERATOR:
	  args = op->u.s_operator.op->args;
	  break;
	case DEMANGLE_COMPONENT_EXTENDED_OPERATOR:
	  args = op->u.s_extended_operator.args;
	  break;
	case DEMANGLE_COMPONENT_CAST:
	  args = 1;
	  break;
	}

      switch (args)
	{
	case 0:
	  return FUNC7 (di, DEMANGLE_COMPONENT_NULLARY, op, NULL);

	case 1:
	  {
	    struct demangle_component *operand;
	    int suffix = 0;

	    if (code && (code[0] == 'p' || code[0] == 'm')
		&& code[1] == code[0])
	      /* pp_ and mm_ are the prefix variants.  */
	      suffix = !FUNC3 (di, '_');

	    if (op->type == DEMANGLE_COMPONENT_CAST
		&& FUNC3 (di, '_'))
	      operand = FUNC6 (di, 'E');
	    else if (code && !FUNC17 (code, "sP"))
	      operand = FUNC13 (di);
	    else
	      operand = FUNC18 (di);

	    if (suffix)
	      /* Indicate the suffix variant for d_print_comp.  */
	      operand = FUNC7 (di, DEMANGLE_COMPONENT_BINARY_ARGS,
				     operand, operand);

	    return FUNC7 (di, DEMANGLE_COMPONENT_UNARY, op, operand);
	  }
	case 2:
	  {
	    struct demangle_component *left;
	    struct demangle_component *right;

	    if (code == NULL)
	      return NULL;
	    if (FUNC16 (op))
	      left = FUNC1 (di);
	    else if (code[0] == 'f')
	      /* fold-expression.  */
	      left = FUNC9 (di);
	    else
	      left = FUNC18 (di);
	    if (!FUNC17 (code, "cl"))
	      right = FUNC6 (di, 'E');
	    else if (!FUNC17 (code, "dt") || !FUNC17 (code, "pt"))
	      {
		right = FUNC15 (di);
		if (FUNC10 (di) == 'I')
		  right = FUNC7 (di, DEMANGLE_COMPONENT_TEMPLATE,
				       right, FUNC12 (di));
	      }
	    else
	      right = FUNC18 (di);

	    return FUNC7 (di, DEMANGLE_COMPONENT_BINARY, op,
				FUNC7 (di,
					     DEMANGLE_COMPONENT_BINARY_ARGS,
					     left, right));
	  }
	case 3:
	  {
	    struct demangle_component *first;
	    struct demangle_component *second;
	    struct demangle_component *third;

	    if (code == NULL)
	      return NULL;
	    else if (!FUNC17 (code, "qu"))
	      {
		/* ?: expression.  */
		first = FUNC18 (di);
		second = FUNC18 (di);
		third = FUNC18 (di);
		if (third == NULL)
		  return NULL;
	      }
	    else if (code[0] == 'f')
	      {
		/* fold-expression.  */
		first = FUNC9 (di);
		second = FUNC18 (di);
		third = FUNC18 (di);
		if (third == NULL)
		  return NULL;
	      }
	    else if (code[0] == 'n')
	      {
		/* new-expression.  */
		if (code[1] != 'w' && code[1] != 'a')
		  return NULL;
		first = FUNC6 (di, '_');
		second = FUNC1 (di);
		if (FUNC10 (di) == 'E')
		  {
		    FUNC2 (di, 1);
		    third = NULL;
		  }
		else if (FUNC10 (di) == 'p'
			 && FUNC11 (di) == 'i')
		  {
		    /* Parenthesized initializer.  */
		    FUNC2 (di, 2);
		    third = FUNC6 (di, 'E');
		  }
		else if (FUNC10 (di) == 'i'
			 && FUNC11 (di) == 'l')
		  /* initializer-list.  */
		  third = FUNC18 (di);
		else
		  return NULL;
	      }
	    else
	      return NULL;
	    return FUNC7 (di, DEMANGLE_COMPONENT_TRINARY, op,
				FUNC7 (di,
					     DEMANGLE_COMPONENT_TRINARY_ARG1,
					     first,
					     FUNC7 (di,
							  DEMANGLE_COMPONENT_TRINARY_ARG2,
							  second, third)));
	  }
	default:
	  return NULL;
	}
    }
}