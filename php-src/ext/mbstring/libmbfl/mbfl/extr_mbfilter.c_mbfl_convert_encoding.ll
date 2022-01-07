; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_convert_encoding.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_convert_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i8*, i32* }
%struct.TYPE_17__ = type { i64 (i32, %struct.TYPE_17__*)*, i32, i32 }

@mbfl_encoding_wchar = common dso_local global i32 0, align 4
@MBFL_OUTPUTFILTER_ILLEGAL_MODE_CHAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @mbfl_convert_encoding(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = icmp eq %struct.TYPE_16__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = icmp eq %struct.TYPE_16__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %124

22:                                               ; preds = %18
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %12, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i32* @mbfl_convert_filter_get_vtbl(i32* %25, i32* %26)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call %struct.TYPE_17__* @mbfl_convert_filter_new(i32* %32, i32* %33, i32 (i32, i8*)* @mbfl_memory_device_output, i32* null, %struct.TYPE_17__* %10)
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %11, align 8
  br label %57

35:                                               ; preds = %22
  %36 = load i32*, i32** %7, align 8
  %37 = call %struct.TYPE_17__* @mbfl_convert_filter_new(i32* @mbfl_encoding_wchar, i32* %36, i32 (i32, i8*)* @mbfl_memory_device_output, i32* null, %struct.TYPE_17__* %10)
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %12, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %39 = icmp ne %struct.TYPE_17__* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i64 (i32, %struct.TYPE_17__*)*, i64 (i32, %struct.TYPE_17__*)** %45, align 8
  %47 = bitcast i64 (i32, %struct.TYPE_17__*)* %46 to i32 (i32, i8*)*
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %49 = call %struct.TYPE_17__* @mbfl_convert_filter_new(i32* %43, i32* @mbfl_encoding_wchar, i32 (i32, i8*)* %47, i32* null, %struct.TYPE_17__* %48)
  store %struct.TYPE_17__* %49, %struct.TYPE_17__** %11, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %51 = icmp eq %struct.TYPE_17__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %54 = call i32 @mbfl_convert_filter_delete(%struct.TYPE_17__* %53)
  br label %55

55:                                               ; preds = %52, %40
  br label %56

56:                                               ; preds = %55, %35
  br label %57

57:                                               ; preds = %56, %29
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %59 = icmp eq %struct.TYPE_17__* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %124

61:                                               ; preds = %57
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %63 = icmp ne %struct.TYPE_17__* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* @MBFL_OUTPUTFILTER_ILLEGAL_MODE_CHAR, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  store i32 63, i32* %69, align 8
  br label %70

70:                                               ; preds = %64, %61
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = ashr i32 %76, 2
  %78 = add nsw i32 %77, 8
  %79 = call i32 @mbfl_memory_device_init(%struct.TYPE_17__* %10, i32 %73, i32 %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %8, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %9, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %109

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %105, %89
  %91 = load i64, i64* %8, align 8
  %92 = icmp ugt i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %90
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i64 (i32, %struct.TYPE_17__*)*, i64 (i32, %struct.TYPE_17__*)** %95, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %9, align 8
  %99 = load i8, i8* %97, align 1
  %100 = zext i8 %99 to i32
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %102 = call i64 %96(i32 %100, %struct.TYPE_17__* %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  br label %108

105:                                              ; preds = %93
  %106 = load i64, i64* %8, align 8
  %107 = add i64 %106, -1
  store i64 %107, i64* %8, align 8
  br label %90

108:                                              ; preds = %104, %90
  br label %109

109:                                              ; preds = %108, %70
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %111 = call i32 @mbfl_convert_filter_flush(%struct.TYPE_17__* %110)
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %113 = call i32 @mbfl_convert_filter_delete(%struct.TYPE_17__* %112)
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %115 = icmp ne %struct.TYPE_17__* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %118 = call i32 @mbfl_convert_filter_flush(%struct.TYPE_17__* %117)
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %120 = call i32 @mbfl_convert_filter_delete(%struct.TYPE_17__* %119)
  br label %121

121:                                              ; preds = %116, %109
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %123 = call %struct.TYPE_16__* @mbfl_memory_device_result(%struct.TYPE_17__* %10, %struct.TYPE_16__* %122)
  store %struct.TYPE_16__* %123, %struct.TYPE_16__** %4, align 8
  br label %124

124:                                              ; preds = %121, %60, %21
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  ret %struct.TYPE_16__* %125
}

declare dso_local i32* @mbfl_convert_filter_get_vtbl(i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @mbfl_convert_filter_new(i32*, i32*, i32 (i32, i8*)*, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @mbfl_memory_device_output(i32, i8*) #1

declare dso_local i32 @mbfl_convert_filter_delete(%struct.TYPE_17__*) #1

declare dso_local i32 @mbfl_memory_device_init(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @mbfl_convert_filter_flush(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_16__* @mbfl_memory_device_result(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
