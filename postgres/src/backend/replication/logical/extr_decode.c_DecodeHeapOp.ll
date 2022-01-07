; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_decode.c_DecodeHeapOp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_decode.c_DecodeHeapOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32* }
%struct.TYPE_15__ = type { i32, i32 }

@XLOG_HEAP_OPMASK = common dso_local global i32 0, align 4
@SNAPBUILD_FULL_SNAPSHOT = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unexpected RM_HEAP_ID record type: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_15__*)* @DecodeHeapOp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecodeHeapOp(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @XLogRecGetInfo(i32 %10)
  %12 = load i32, i32* @XLOG_HEAP_OPMASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @XLogRecGetXid(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ReorderBufferProcessXid(i32 %23, i32 %24, i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @SnapBuildCurrentState(i32* %29)
  %31 = load i64, i64* @SNAPBUILD_FULL_SNAPSHOT, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %2
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %2
  br label %131

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %127 [
    i32 131, label %41
    i32 133, label %54
    i32 128, label %54
    i32 134, label %67
    i32 129, label %80
    i32 132, label %93
    i32 135, label %113
    i32 130, label %126
  ]

41:                                               ; preds = %39
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SnapBuildProcessChange(i32* %42, i32 %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = call i32 @DecodeInsert(%struct.TYPE_16__* %50, %struct.TYPE_15__* %51)
  br label %53

53:                                               ; preds = %49, %41
  br label %131

54:                                               ; preds = %39, %39
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @SnapBuildProcessChange(i32* %55, i32 %56, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %65 = call i32 @DecodeUpdate(%struct.TYPE_16__* %63, %struct.TYPE_15__* %64)
  br label %66

66:                                               ; preds = %62, %54
  br label %131

67:                                               ; preds = %39
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @SnapBuildProcessChange(i32* %68, i32 %69, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = call i32 @DecodeDelete(%struct.TYPE_16__* %76, %struct.TYPE_15__* %77)
  br label %79

79:                                               ; preds = %75, %67
  br label %131

80:                                               ; preds = %39
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @SnapBuildProcessChange(i32* %81, i32 %82, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = call i32 @DecodeTruncate(%struct.TYPE_16__* %89, %struct.TYPE_15__* %90)
  br label %92

92:                                               ; preds = %88, %80
  br label %131

93:                                               ; preds = %39
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @TransactionIdIsValid(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  br label %131

98:                                               ; preds = %93
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @SnapBuildProcessChange(i32* %99, i32 %100, i32 %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ReorderBufferXidSetCatalogChanges(i32 %107, i32 %108, i32 %111)
  br label %131

113:                                              ; preds = %39
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @SnapBuildProcessChange(i32* %114, i32 %115, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = call i32 @DecodeSpecConfirm(%struct.TYPE_16__* %122, %struct.TYPE_15__* %123)
  br label %125

125:                                              ; preds = %121, %113
  br label %131

126:                                              ; preds = %39
  br label %131

127:                                              ; preds = %39
  %128 = load i32, i32* @ERROR, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @elog(i32 %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %38, %127, %126, %125, %98, %97, %92, %79, %66, %53
  ret void
}

declare dso_local i32 @XLogRecGetInfo(i32) #1

declare dso_local i32 @XLogRecGetXid(i32) #1

declare dso_local i32 @ReorderBufferProcessXid(i32, i32, i32) #1

declare dso_local i64 @SnapBuildCurrentState(i32*) #1

declare dso_local i32 @SnapBuildProcessChange(i32*, i32, i32) #1

declare dso_local i32 @DecodeInsert(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @DecodeUpdate(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @DecodeDelete(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @DecodeTruncate(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @ReorderBufferXidSetCatalogChanges(i32, i32, i32) #1

declare dso_local i32 @DecodeSpecConfirm(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
