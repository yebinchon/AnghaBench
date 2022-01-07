; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_html_numeric_entity.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_html_numeric_entity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i8*, i32*, i32 }
%struct.collector_htmlnumericentity_data = type { i32*, i32, %struct.TYPE_13__*, i64, i64, i64 }
%struct.TYPE_13__ = type { i64 (i32, %struct.TYPE_13__*)* }

@mbfl_encoding_wchar = common dso_local global i32 0, align 4
@mbfl_memory_device_output = common dso_local global i32 0, align 4
@collector_encode_htmlnumericentity = common dso_local global i32 0, align 4
@collector_encode_hex_htmlnumericentity = common dso_local global i32 0, align 4
@collector_decode_htmlnumericentity = common dso_local global i32 0, align 4
@mbfl_filt_decode_htmlnumericentity_flush = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @mbfl_html_numeric_entity(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.collector_htmlnumericentity_data, align 8
  %13 = alloca %struct.collector_htmlnumericentity_data, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = icmp eq %struct.TYPE_12__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %21 = icmp eq %struct.TYPE_12__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %5
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  br label %139

23:                                               ; preds = %19
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = call i32 @mbfl_string_init(%struct.TYPE_12__* %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @mbfl_memory_device_init(%struct.collector_htmlnumericentity_data* %13, i64 %38, i32 0)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @mbfl_memory_device_output, align 4
  %44 = call i8* @mbfl_convert_filter_new(i32* @mbfl_encoding_wchar, i32* %42, i32 %43, i32 (i8*)* null, %struct.collector_htmlnumericentity_data* %13)
  %45 = bitcast i8* %44 to %struct.TYPE_13__*
  %46 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %12, i32 0, i32 2
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %46, align 8
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %23
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @collector_encode_htmlnumericentity, align 4
  %54 = call i8* @mbfl_convert_filter_new(i32* %52, i32* @mbfl_encoding_wchar, i32 %53, i32 (i8*)* null, %struct.collector_htmlnumericentity_data* %12)
  %55 = bitcast i8* %54 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %14, align 8
  br label %76

56:                                               ; preds = %23
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @collector_encode_hex_htmlnumericentity, align 4
  %64 = call i8* @mbfl_convert_filter_new(i32* %62, i32* @mbfl_encoding_wchar, i32 %63, i32 (i8*)* null, %struct.collector_htmlnumericentity_data* %12)
  %65 = bitcast i8* %64 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %14, align 8
  br label %75

66:                                               ; preds = %56
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @collector_decode_htmlnumericentity, align 4
  %71 = load i64, i64* @mbfl_filt_decode_htmlnumericentity_flush, align 8
  %72 = inttoptr i64 %71 to i32 (i8*)*
  %73 = call i8* @mbfl_convert_filter_new(i32* %69, i32* @mbfl_encoding_wchar, i32 %70, i32 (i8*)* %72, %struct.collector_htmlnumericentity_data* %12)
  %74 = bitcast i8* %73 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %74, %struct.TYPE_13__** %14, align 8
  br label %75

75:                                               ; preds = %66, %59
  br label %76

76:                                               ; preds = %75, %49
  %77 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %12, i32 0, i32 2
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = icmp eq %struct.TYPE_13__* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %82 = icmp eq %struct.TYPE_13__* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %80, %76
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %85 = call i32 @mbfl_convert_filter_delete(%struct.TYPE_13__* %84)
  %86 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %12, i32 0, i32 2
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = call i32 @mbfl_convert_filter_delete(%struct.TYPE_13__* %87)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  br label %139

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %12, i32 0, i32 5
  store i64 0, i64* %90, align 8
  %91 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %12, i32 0, i32 4
  store i64 0, i64* %91, align 8
  %92 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %12, i32 0, i32 3
  store i64 0, i64* %92, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %12, i32 0, i32 0
  store i32* %93, i32** %94, align 8
  %95 = load i32, i32* %10, align 4
  %96 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %12, i32 0, i32 1
  store i32 %95, i32* %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %16, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %15, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %125

105:                                              ; preds = %89
  br label %106

106:                                              ; preds = %121, %105
  %107 = load i64, i64* %15, align 8
  %108 = icmp ugt i64 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i64 (i32, %struct.TYPE_13__*)*, i64 (i32, %struct.TYPE_13__*)** %111, align 8
  %113 = load i8*, i8** %16, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %16, align 8
  %115 = load i8, i8* %113, align 1
  %116 = zext i8 %115 to i32
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %118 = call i64 %112(i32 %116, %struct.TYPE_13__* %117)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %124

121:                                              ; preds = %109
  %122 = load i64, i64* %15, align 8
  %123 = add i64 %122, -1
  store i64 %123, i64* %15, align 8
  br label %106

124:                                              ; preds = %120, %106
  br label %125

125:                                              ; preds = %124, %89
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %127 = call i32 @mbfl_convert_filter_flush(%struct.TYPE_13__* %126)
  %128 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %12, i32 0, i32 2
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = call i32 @mbfl_convert_filter_flush(%struct.TYPE_13__* %129)
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %132 = call %struct.TYPE_12__* @mbfl_memory_device_result(%struct.collector_htmlnumericentity_data* %13, %struct.TYPE_12__* %131)
  store %struct.TYPE_12__* %132, %struct.TYPE_12__** %8, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %134 = call i32 @mbfl_convert_filter_delete(%struct.TYPE_13__* %133)
  %135 = getelementptr inbounds %struct.collector_htmlnumericentity_data, %struct.collector_htmlnumericentity_data* %12, i32 0, i32 2
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = call i32 @mbfl_convert_filter_delete(%struct.TYPE_13__* %136)
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %138, %struct.TYPE_12__** %6, align 8
  br label %139

139:                                              ; preds = %125, %83, %22
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  ret %struct.TYPE_12__* %140
}

declare dso_local i32 @mbfl_string_init(%struct.TYPE_12__*) #1

declare dso_local i32 @mbfl_memory_device_init(%struct.collector_htmlnumericentity_data*, i64, i32) #1

declare dso_local i8* @mbfl_convert_filter_new(i32*, i32*, i32, i32 (i8*)*, %struct.collector_htmlnumericentity_data*) #1

declare dso_local i32 @mbfl_convert_filter_delete(%struct.TYPE_13__*) #1

declare dso_local i32 @mbfl_convert_filter_flush(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @mbfl_memory_device_result(%struct.collector_htmlnumericentity_data*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
