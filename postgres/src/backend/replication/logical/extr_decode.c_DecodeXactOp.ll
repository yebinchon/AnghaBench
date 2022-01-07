; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_decode.c_DecodeXactOp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_decode.c_DecodeXactOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32*, i32* }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32* }

@XLOG_XACT_OPMASK = common dso_local global i32 0, align 4
@SNAPBUILD_FULL_SNAPSHOT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unexpected RM_XACT_ID record type: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_19__*)* @DecodeXactOp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecodeXactOp(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_17__, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %6, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @XLogRecGetInfo(i32* %27)
  %29 = load i32, i32* @XLOG_XACT_OPMASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @SnapBuildCurrentState(i32* %31)
  %33 = load i64, i64* @SNAPBUILD_FULL_SNAPSHOT, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 131
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %133

39:                                               ; preds = %35, %2
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %129 [
    i32 130, label %41
    i32 129, label %41
    i32 133, label %66
    i32 132, label %66
    i32 131, label %91
    i32 128, label %121
  ]

41:                                               ; preds = %39, %39
  %42 = load i32*, i32** %7, align 8
  %43 = call i64 @XLogRecGetData(i32* %42)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %9, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @XLogRecGetInfo(i32* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @ParseCommitRecord(i32 %48, i32* %49, %struct.TYPE_16__* %10)
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @TransactionIdIsValid(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %41
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @XLogRecGetXid(i32* %56)
  store i32 %57, i32* %11, align 4
  br label %61

58:                                               ; preds = %41
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @DecodeCommit(%struct.TYPE_20__* %62, %struct.TYPE_19__* %63, %struct.TYPE_16__* %10, i32 %64)
  br label %133

66:                                               ; preds = %39, %39
  %67 = load i32*, i32** %7, align 8
  %68 = call i64 @XLogRecGetData(i32* %67)
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** %12, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @XLogRecGetInfo(i32* %72)
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @ParseAbortRecord(i32 %73, i32* %74, %struct.TYPE_17__* %13)
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @TransactionIdIsValid(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %66
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @XLogRecGetXid(i32* %81)
  store i32 %82, i32* %14, align 4
  br label %86

83:                                               ; preds = %66
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @DecodeAbort(%struct.TYPE_20__* %87, %struct.TYPE_19__* %88, %struct.TYPE_17__* %13, i32 %89)
  br label %133

91:                                               ; preds = %39
  %92 = load i32*, i32** %7, align 8
  %93 = call i64 @XLogRecGetData(i32* %92)
  %94 = inttoptr i64 %93 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %94, %struct.TYPE_18__** %15, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32* %98, i32** %17, align 8
  store i32 0, i32* %16, align 4
  br label %99

99:                                               ; preds = %117, %91
  %100 = load i32, i32* %16, align 4
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %99
  %106 = load i32*, i32** %6, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %17, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %17, align 8
  %112 = load i32, i32* %110, align 4
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @ReorderBufferAssignChild(i32* %106, i32 %109, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %105
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  br label %99

120:                                              ; preds = %99
  br label %133

121:                                              ; preds = %39
  %122 = load i32*, i32** %6, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @XLogRecGetXid(i32* %123)
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @ReorderBufferProcessXid(i32* %122, i32 %124, i32 %127)
  br label %133

129:                                              ; preds = %39
  %130 = load i32, i32* @ERROR, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @elog(i32 %130, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %38, %129, %121, %120, %86, %61
  ret void
}

declare dso_local i32 @XLogRecGetInfo(i32*) #1

declare dso_local i64 @SnapBuildCurrentState(i32*) #1

declare dso_local i64 @XLogRecGetData(i32*) #1

declare dso_local i32 @ParseCommitRecord(i32, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @XLogRecGetXid(i32*) #1

declare dso_local i32 @DecodeCommit(%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @ParseAbortRecord(i32, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @DecodeAbort(%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ReorderBufferAssignChild(i32*, i32, i32, i32) #1

declare dso_local i32 @ReorderBufferProcessXid(i32*, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
