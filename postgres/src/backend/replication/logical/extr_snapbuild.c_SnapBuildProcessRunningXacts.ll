; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_snapbuild.c_SnapBuildProcessRunningXacts.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_snapbuild.c_SnapBuildProcessRunningXacts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@SNAPBUILD_CONSISTENT = common dso_local global i64 0, align 8
@InvalidTransactionId = common dso_local global i64 0, align 8
@DEBUG3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"xmin: %u, xmax: %u, oldest running: %u, oldest xmin: %u\00", align 1
@InvalidXLogRecPtr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SnapBuildProcessRunningXacts(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SNAPBUILD_CONSISTENT, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = call i32 @SnapBuildFindSnapshot(%struct.TYPE_15__* %15, i32 %16, %struct.TYPE_14__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %110

21:                                               ; preds = %14
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @SnapBuildSerialize(%struct.TYPE_15__* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %21
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = call i32 @SnapBuildPurgeCommittedTxn(%struct.TYPE_15__* %32)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = call i64 @ReorderBufferGetOldestXmin(%struct.TYPE_13__* %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @InvalidTransactionId, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %26
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %41, %26
  %46 = load i32, i32* @DEBUG3, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @elog(i32 %46, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %49, i32 %52, i64 %55, i64 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @LogicalIncreaseXminForSlot(i32 %58, i64 %59)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SNAPBUILD_CONSISTENT, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %45
  br label %110

67:                                               ; preds = %45
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = call %struct.TYPE_16__* @ReorderBufferGetOldestTXN(%struct.TYPE_13__* %70)
  store %struct.TYPE_16__* %71, %struct.TYPE_16__** %7, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %73 = icmp ne %struct.TYPE_16__* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %67
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @InvalidXLogRecPtr, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @LogicalIncreaseRestartDecodingForSlot(i32 %81, i64 %84)
  br label %110

86:                                               ; preds = %74, %67
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %88 = icmp eq %struct.TYPE_16__* %87, null
  br i1 %88, label %89, label %109

89:                                               ; preds = %86
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @InvalidXLogRecPtr, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %89
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @InvalidXLogRecPtr, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @LogicalIncreaseRestartDecodingForSlot(i32 %104, i64 %107)
  br label %109

109:                                              ; preds = %103, %97, %89, %86
  br label %110

110:                                              ; preds = %20, %66, %109, %80
  ret void
}

declare dso_local i32 @SnapBuildFindSnapshot(%struct.TYPE_15__*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @SnapBuildSerialize(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @SnapBuildPurgeCommittedTxn(%struct.TYPE_15__*) #1

declare dso_local i64 @ReorderBufferGetOldestXmin(%struct.TYPE_13__*) #1

declare dso_local i32 @elog(i32, i8*, i64, i32, i64, i64) #1

declare dso_local i32 @LogicalIncreaseXminForSlot(i32, i64) #1

declare dso_local %struct.TYPE_16__* @ReorderBufferGetOldestTXN(%struct.TYPE_13__*) #1

declare dso_local i32 @LogicalIncreaseRestartDecodingForSlot(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
