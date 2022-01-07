; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_RegisterLWLockTranches.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_RegisterLWLockTranches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@LWLockTrancheArray = common dso_local global i8** null, align 8
@LWLockTranchesAllocated = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@LWTRANCHE_FIRST_USER_DEFINED = common dso_local global i32 0, align 4
@NUM_INDIVIDUAL_LWLOCKS = common dso_local global i32 0, align 4
@MainLWLockNames = common dso_local global i8** null, align 8
@LWTRANCHE_BUFFER_MAPPING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"buffer_mapping\00", align 1
@LWTRANCHE_LOCK_MANAGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"lock_manager\00", align 1
@LWTRANCHE_PREDICATE_LOCK_MANAGER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"predicate_lock_manager\00", align 1
@LWTRANCHE_PARALLEL_QUERY_DSA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"parallel_query_dsa\00", align 1
@LWTRANCHE_SESSION_DSA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"session_dsa\00", align 1
@LWTRANCHE_SESSION_RECORD_TABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"session_record_table\00", align 1
@LWTRANCHE_SESSION_TYPMOD_TABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"session_typmod_table\00", align 1
@LWTRANCHE_SHARED_TUPLESTORE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"shared_tuplestore\00", align 1
@LWTRANCHE_TBM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"tbm\00", align 1
@LWTRANCHE_PARALLEL_APPEND = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"parallel_append\00", align 1
@LWTRANCHE_PARALLEL_HASH_JOIN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"parallel_hash_join\00", align 1
@LWTRANCHE_SXACT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"serializable_xact\00", align 1
@NamedLWLockTrancheRequests = common dso_local global i32 0, align 4
@NamedLWLockTrancheArray = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @RegisterLWLockTranches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RegisterLWLockTranches() #0 {
  %1 = alloca i32, align 4
  %2 = load i8**, i8*** @LWLockTrancheArray, align 8
  %3 = icmp eq i8** %2, null
  br i1 %3, label %4, label %17

4:                                                ; preds = %0
  store i32 128, i32* @LWLockTranchesAllocated, align 4
  %5 = load i32, i32* @TopMemoryContext, align 4
  %6 = load i32, i32* @LWLockTranchesAllocated, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 8
  %9 = trunc i64 %8 to i32
  %10 = call i64 @MemoryContextAllocZero(i32 %5, i32 %9)
  %11 = inttoptr i64 %10 to i8**
  store i8** %11, i8*** @LWLockTrancheArray, align 8
  %12 = load i32, i32* @LWLockTranchesAllocated, align 4
  %13 = load i32, i32* @LWTRANCHE_FIRST_USER_DEFINED, align 4
  %14 = icmp sge i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @Assert(i32 %15)
  br label %17

17:                                               ; preds = %4, %0
  store i32 0, i32* %1, align 4
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @NUM_INDIVIDUAL_LWLOCKS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i32, i32* %1, align 4
  %24 = load i8**, i8*** @MainLWLockNames, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @LWLockRegisterTranche(i32 %23, i8* %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %18

33:                                               ; preds = %18
  %34 = load i32, i32* @LWTRANCHE_BUFFER_MAPPING, align 4
  %35 = call i32 @LWLockRegisterTranche(i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @LWTRANCHE_LOCK_MANAGER, align 4
  %37 = call i32 @LWLockRegisterTranche(i32 %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @LWTRANCHE_PREDICATE_LOCK_MANAGER, align 4
  %39 = call i32 @LWLockRegisterTranche(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @LWTRANCHE_PARALLEL_QUERY_DSA, align 4
  %41 = call i32 @LWLockRegisterTranche(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i32, i32* @LWTRANCHE_SESSION_DSA, align 4
  %43 = call i32 @LWLockRegisterTranche(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32, i32* @LWTRANCHE_SESSION_RECORD_TABLE, align 4
  %45 = call i32 @LWLockRegisterTranche(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32, i32* @LWTRANCHE_SESSION_TYPMOD_TABLE, align 4
  %47 = call i32 @LWLockRegisterTranche(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %48 = load i32, i32* @LWTRANCHE_SHARED_TUPLESTORE, align 4
  %49 = call i32 @LWLockRegisterTranche(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %50 = load i32, i32* @LWTRANCHE_TBM, align 4
  %51 = call i32 @LWLockRegisterTranche(i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %52 = load i32, i32* @LWTRANCHE_PARALLEL_APPEND, align 4
  %53 = call i32 @LWLockRegisterTranche(i32 %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %54 = load i32, i32* @LWTRANCHE_PARALLEL_HASH_JOIN, align 4
  %55 = call i32 @LWLockRegisterTranche(i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %56 = load i32, i32* @LWTRANCHE_SXACT, align 4
  %57 = call i32 @LWLockRegisterTranche(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %58

58:                                               ; preds = %76, %33
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @NamedLWLockTrancheRequests, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @NamedLWLockTrancheArray, align 8
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @NamedLWLockTrancheArray, align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @LWLockRegisterTranche(i32 %68, i8* %74)
  br label %76

76:                                               ; preds = %62
  %77 = load i32, i32* %1, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %1, align 4
  br label %58

79:                                               ; preds = %58
  ret void
}

declare dso_local i64 @MemoryContextAllocZero(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockRegisterTranche(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
