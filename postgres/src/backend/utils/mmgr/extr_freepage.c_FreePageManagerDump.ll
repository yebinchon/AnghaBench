; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageManagerDump.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageManagerDump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32*, i32, i32, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i8* }

@.str = private unnamed_addr constant [47 x i8] c"metadata: self %zu max contiguous pages = %zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"btree depth %u:\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"singleton: %zu(%zu)\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"btree recycle:\00", align 1
@FPM_NUM_FREELISTS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"freelists:\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"  %zu:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @FreePageManagerDump(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = call i8* @fpm_segment_base(%struct.TYPE_15__* %10)
  store i8* %11, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %12 = call i32 @initStringInfo(%struct.TYPE_14__* %4)
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (%struct.TYPE_14__*, i8*, i64, ...) @appendStringInfo(%struct.TYPE_14__* %4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %17, i32 %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (%struct.TYPE_14__*, i8*, i64, ...) @appendStringInfo(%struct.TYPE_14__* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i8*, i8** %3, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @relptr_access(i8* %31, i32 %34)
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %8, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @FreePageManagerDumpBtree(%struct.TYPE_15__* %37, i32* %38, i32* null, i32 0, %struct.TYPE_14__* %4)
  br label %55

40:                                               ; preds = %1
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (%struct.TYPE_14__*, i8*, i64, ...) @appendStringInfo(%struct.TYPE_14__* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %49, i32 %52)
  br label %54

54:                                               ; preds = %45, %40
  br label %55

55:                                               ; preds = %54, %26
  %56 = load i8*, i8** %3, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @relptr_access(i8* %56, i32 %59)
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** %5, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = call i32 @appendStringInfoString(%struct.TYPE_14__* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @FreePageManagerDumpSpans(%struct.TYPE_15__* %66, i32* %67, i64 1, %struct.TYPE_14__* %4)
  br label %69

69:                                               ; preds = %64, %55
  store i64 0, i64* %7, align 8
  br label %70

70:                                               ; preds = %107, %69
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @FPM_NUM_FREELISTS, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %110

74:                                               ; preds = %70
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @relptr_is_null(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %107

84:                                               ; preds = %74
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = call i32 @appendStringInfoString(%struct.TYPE_14__* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i64, i64* %7, align 8
  %91 = add i64 %90, 1
  %92 = call i32 (%struct.TYPE_14__*, i8*, i64, ...) @appendStringInfo(%struct.TYPE_14__* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 %91)
  %93 = load i8*, i8** %3, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @relptr_access(i8* %93, i32 %99)
  %101 = bitcast i8* %100 to i32*
  store i32* %101, i32** %9, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i64, i64* %7, align 8
  %105 = add i64 %104, 1
  %106 = call i32 @FreePageManagerDumpSpans(%struct.TYPE_15__* %102, i32* %103, i64 %105, %struct.TYPE_14__* %4)
  br label %107

107:                                              ; preds = %89, %83
  %108 = load i64, i64* %7, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %7, align 8
  br label %70

110:                                              ; preds = %70
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  ret i8* %112
}

declare dso_local i8* @fpm_segment_base(%struct.TYPE_15__*) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_14__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_14__*, i8*, i64, ...) #1

declare dso_local i8* @relptr_access(i8*, i32) #1

declare dso_local i32 @FreePageManagerDumpBtree(%struct.TYPE_15__*, i32*, i32*, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @FreePageManagerDumpSpans(%struct.TYPE_15__*, i32*, i64, %struct.TYPE_14__*) #1

declare dso_local i64 @relptr_is_null(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
