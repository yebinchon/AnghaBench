; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_AtPrepare_Locks.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lock.c_AtPrepare_Locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_11__, %struct.TYPE_16__*, i32, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32 }

@LockMethodLocalHash = common dso_local global i32 0, align 4
@LOCKTAG_VIRTUALTRANSACTION = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"cannot PREPARE while holding both session-level and transaction-level locks on the same object\00", align 1
@TWOPHASE_RM_LOCK_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AtPrepare_Locks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_12__, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @LockMethodLocalHash, align 4
  %9 = call i32 @hash_seq_init(i32* %1, i32 %8)
  br label %10

10:                                               ; preds = %85, %57, %31, %25, %0
  %11 = call i64 @hash_seq_search(i32* %1)
  %12 = inttoptr i64 %11 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %2, align 8
  %13 = icmp ne %struct.TYPE_14__* %12, null
  br i1 %13, label %14, label %100

14:                                               ; preds = %10
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %4, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LOCKTAG_VIRTUALTRANSACTION, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %10

26:                                               ; preds = %14
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %10

32:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %51, %32
  %38 = load i32, i32* %7, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %50

49:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %48
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %7, align 4
  br label %37

54:                                               ; preds = %37
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %10

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* @ERROR, align 4
  %63 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %64 = call i32 @errcode(i32 %63)
  %65 = call i32 @errmsg(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0))
  %66 = call i32 @ereport(i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %61, %58
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = icmp eq %struct.TYPE_16__* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %74 = call %struct.TYPE_16__* @FastPathGetRelationLockEntry(%struct.TYPE_14__* %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 4
  store %struct.TYPE_16__* %74, %struct.TYPE_16__** %76, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %72, %67
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  store i32 0, i32* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = call i32 @memcpy(i32* %88, %struct.TYPE_15__* %91, i32 4)
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* @TWOPHASE_RM_LOCK_ID, align 4
  %99 = call i32 @RegisterTwoPhaseRecord(i32 %98, i32 0, %struct.TYPE_12__* %3, i32 8)
  br label %10

100:                                              ; preds = %10
  ret void
}

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local %struct.TYPE_16__* @FastPathGetRelationLockEntry(%struct.TYPE_14__*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @RegisterTwoPhaseRecord(i32, i32, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
