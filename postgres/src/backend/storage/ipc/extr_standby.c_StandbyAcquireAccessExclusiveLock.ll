; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_StandbyAcquireAccessExclusiveLock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_standby.c_StandbyAcquireAccessExclusiveLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_6__ = type { i8*, i8*, i8* }

@DEBUG4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"adding recovery lock: db %u rel %u\00", align 1
@RecoveryLockLists = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @StandbyAcquireAccessExclusiveLock(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @TransactionIdIsValid(i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @TransactionIdDidCommit(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @TransactionIdDidAbort(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14, %3
  br label %72

23:                                               ; preds = %18
  %24 = load i32, i32* @DEBUG4, align 4
  %25 = call i32 @trace_recovery(i32 %24)
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @elog(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %27)
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @OidIsValid(i8* %29)
  %31 = call i32 @Assert(i32 %30)
  %32 = load i32, i32* @RecoveryLockLists, align 4
  %33 = load i32, i32* @HASH_ENTER, align 4
  %34 = call %struct.TYPE_7__* @hash_search(i32 %32, i8** %4, i32 %33, i32* %10)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %23
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @NIL, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %37, %23
  %45 = call %struct.TYPE_6__* @palloc(i32 24)
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %8, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = call i32 @lappend(i32 %57, %struct.TYPE_6__* %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @SET_LOCKTAG_RELATION(i32 %62, i8* %65, i8* %68)
  %70 = load i32, i32* @AccessExclusiveLock, align 4
  %71 = call i32 @LockAcquire(i32* %9, i32 %70, i32 1, i32 0)
  br label %72

72:                                               ; preds = %44, %22
  ret void
}

declare dso_local i32 @TransactionIdIsValid(i8*) #1

declare dso_local i64 @TransactionIdDidCommit(i8*) #1

declare dso_local i64 @TransactionIdDidAbort(i8*) #1

declare dso_local i32 @elog(i32, i8*, i8*, i8*) #1

declare dso_local i32 @trace_recovery(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @OidIsValid(i8*) #1

declare dso_local %struct.TYPE_7__* @hash_search(i32, i8**, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @palloc(i32) #1

declare dso_local i32 @lappend(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @SET_LOCKTAG_RELATION(i32, i8*, i8*) #1

declare dso_local i32 @LockAcquire(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
