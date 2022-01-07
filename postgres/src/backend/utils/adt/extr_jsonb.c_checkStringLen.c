
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 size_t JENTRY_OFFLENMASK ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,size_t) ;
 int errmsg (char*) ;

__attribute__((used)) static size_t
checkStringLen(size_t len)
{
 if (len > JENTRY_OFFLENMASK)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("string too long to represent as jsonb string"),
     errdetail("Due to an implementation restriction, jsonb strings cannot exceed %d bytes.",
         JENTRY_OFFLENMASK)));

 return len;
}
