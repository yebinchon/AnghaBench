
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int shm_toc ;
typedef int QueryDesc ;
typedef int PlannedStmt ;
typedef int ParamListInfo ;
typedef int DestReceiver ;


 int * CreateQueryDesc (int *,char*,int ,int ,int *,int ,int *,int) ;
 int GetActiveSnapshot () ;
 int InvalidSnapshot ;
 int PARALLEL_KEY_PARAMLISTINFO ;
 int PARALLEL_KEY_PLANNEDSTMT ;
 int PARALLEL_KEY_QUERY_TEXT ;
 int RestoreParamList (char**) ;
 char* shm_toc_lookup (int *,int ,int) ;
 scalar_t__ stringToNode (char*) ;

__attribute__((used)) static QueryDesc *
ExecParallelGetQueryDesc(shm_toc *toc, DestReceiver *receiver,
       int instrument_options)
{
 char *pstmtspace;
 char *paramspace;
 PlannedStmt *pstmt;
 ParamListInfo paramLI;
 char *queryString;


 queryString = shm_toc_lookup(toc, PARALLEL_KEY_QUERY_TEXT, 0);


 pstmtspace = shm_toc_lookup(toc, PARALLEL_KEY_PLANNEDSTMT, 0);
 pstmt = (PlannedStmt *) stringToNode(pstmtspace);


 paramspace = shm_toc_lookup(toc, PARALLEL_KEY_PARAMLISTINFO, 0);
 paramLI = RestoreParamList(&paramspace);


 return CreateQueryDesc(pstmt,
         queryString,
         GetActiveSnapshot(), InvalidSnapshot,
         receiver, paramLI, ((void*)0), instrument_options);
}
