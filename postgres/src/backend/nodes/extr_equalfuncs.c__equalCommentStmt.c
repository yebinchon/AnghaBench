
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CommentStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int comment ;
 int object ;
 int objtype ;

__attribute__((used)) static bool
_equalCommentStmt(const CommentStmt *a, const CommentStmt *b)
{
 COMPARE_SCALAR_FIELD(objtype);
 COMPARE_NODE_FIELD(object);
 COMPARE_STRING_FIELD(comment);

 return 1;
}
