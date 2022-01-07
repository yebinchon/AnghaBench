; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_decode.c_DecodeLogicalMsgOp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_decode.c_DecodeLogicalMsgOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__*, i64, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i64 }

@XLR_INFO_MASK = common dso_local global i64 0, align 8
@XLOG_LOGICAL_MESSAGE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"unexpected RM_LOGICALMSG_ID record type: %u\00", align 1
@SNAPBUILD_FULL_SNAPSHOT = common dso_local global i64 0, align 8
@SNAPBUILD_CONSISTENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*)* @DecodeLogicalMsgOp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecodeLogicalMsgOp(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @XLogRecGetXid(i32* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @XLogRecGetInfo(i32* %20)
  %22 = load i64, i64* @XLR_INFO_MASK, align 8
  %23 = xor i64 %22, -1
  %24 = and i64 %21, %23
  store i64 %24, i64* %8, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @XLogRecGetOrigin(i32* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @XLOG_LOGICAL_MESSAGE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @elog(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %30, %2
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @XLogRecGetXid(i32* %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ReorderBufferProcessXid(i32 %37, i32 %39, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @SnapBuildCurrentState(i32* %44)
  %46 = load i64, i64* @SNAPBUILD_FULL_SNAPSHOT, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %34
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %34
  br label %136

54:                                               ; preds = %48
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @XLogRecGetData(i32* %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %11, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %60, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %54
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @FilterByOrigin(%struct.TYPE_13__* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %54
  br label %136

74:                                               ; preds = %68
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @SnapBuildProcessChange(i32* %80, i32 %81, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  br label %136

88:                                               ; preds = %79, %74
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %106, label %93

93:                                               ; preds = %88
  %94 = load i32*, i32** %5, align 8
  %95 = call i64 @SnapBuildCurrentState(i32* %94)
  %96 = load i64, i64* @SNAPBUILD_CONSISTENT, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %105, label %98

98:                                               ; preds = %93
  %99 = load i32*, i32** %5, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @SnapBuildXactNeedsSkip(i32* %99, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98, %93
  br label %136

106:                                              ; preds = %98, %88
  br label %107

107:                                              ; preds = %106
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @SnapBuildGetOrBuildSnapshot(i32* %108, i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %130, %133
  %135 = call i32 @ReorderBufferQueueMessage(i32 %113, i32 %114, i32 %115, i32 %118, i64 %121, i32 %124, i32 %127, i32 %134)
  br label %136

136:                                              ; preds = %107, %105, %87, %73, %53
  ret void
}

declare dso_local i32 @XLogRecGetXid(i32*) #1

declare dso_local i64 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @XLogRecGetOrigin(i32*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @ReorderBufferProcessXid(i32, i32, i32) #1

declare dso_local i64 @SnapBuildCurrentState(i32*) #1

declare dso_local i64 @XLogRecGetData(i32*) #1

declare dso_local i64 @FilterByOrigin(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @SnapBuildProcessChange(i32*, i32, i32) #1

declare dso_local i64 @SnapBuildXactNeedsSkip(i32*, i32) #1

declare dso_local i32 @SnapBuildGetOrBuildSnapshot(i32*, i32) #1

declare dso_local i32 @ReorderBufferQueueMessage(i32, i32, i32, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
