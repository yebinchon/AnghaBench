; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mime_header_decoder_new.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mime_header_decoder_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mime_header_decoder_data = type { i32*, i32*, i32*, i32*, i32*, i32, i32*, i64, i64, i32 }

@mbfl_encoding_8bit = common dso_local global i32 0, align 4
@mbfl_encoding_ascii = common dso_local global i32 0, align 4
@mbfl_encoding_wchar = common dso_local global i32 0, align 4
@mbfl_memory_device_output = common dso_local global i32 0, align 4
@mbfl_filter_output_pipe = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mime_header_decoder_data* @mime_header_decoder_new(i32* %0) #0 {
  %2 = alloca %struct.mime_header_decoder_data*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mime_header_decoder_data*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call i64 @mbfl_malloc(i32 80)
  %6 = inttoptr i64 %5 to %struct.mime_header_decoder_data*
  store %struct.mime_header_decoder_data* %6, %struct.mime_header_decoder_data** %4, align 8
  %7 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %8 = icmp eq %struct.mime_header_decoder_data* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.mime_header_decoder_data* null, %struct.mime_header_decoder_data** %2, align 8
  br label %79

10:                                               ; preds = %1
  %11 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %12 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %11, i32 0, i32 5
  %13 = call i32 @mbfl_memory_device_init(i32* %12, i32 0, i32 0)
  %14 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %15 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %14, i32 0, i32 9
  %16 = call i32 @mbfl_memory_device_init(i32* %15, i32 0, i32 0)
  %17 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %18 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %17, i32 0, i32 8
  store i64 0, i64* %18, align 8
  %19 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %20 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %19, i32 0, i32 7
  store i64 0, i64* %20, align 8
  %21 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %22 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %21, i32 0, i32 3
  store i32* @mbfl_encoding_8bit, i32** %22, align 8
  %23 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %24 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %23, i32 0, i32 4
  store i32* @mbfl_encoding_ascii, i32** %24, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %27 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %26, i32 0, i32 6
  store i32* %25, i32** %27, align 8
  %28 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %29 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %28, i32 0, i32 6
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @mbfl_memory_device_output, align 4
  %32 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %33 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %32, i32 0, i32 5
  %34 = call i8* @mbfl_convert_filter_new(i32* @mbfl_encoding_wchar, i32* %30, i32 %31, i32 0, i32* %33)
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %37 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %39 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @mbfl_filter_output_pipe, align 4
  %42 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %43 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i8* @mbfl_convert_filter_new(i32* %40, i32* @mbfl_encoding_wchar, i32 %41, i32 0, i32* %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %48 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %50 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @mbfl_filter_output_pipe, align 4
  %53 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %54 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i8* @mbfl_convert_filter_new(i32* %51, i32* @mbfl_encoding_8bit, i32 %52, i32 0, i32* %55)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %59 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %58, i32 0, i32 0
  store i32* %57, i32** %59, align 8
  %60 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %61 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %10
  %65 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %66 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %71 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %64, %10
  %75 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  %76 = call i32 @mime_header_decoder_delete(%struct.mime_header_decoder_data* %75)
  store %struct.mime_header_decoder_data* null, %struct.mime_header_decoder_data** %2, align 8
  br label %79

77:                                               ; preds = %69
  %78 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %4, align 8
  store %struct.mime_header_decoder_data* %78, %struct.mime_header_decoder_data** %2, align 8
  br label %79

79:                                               ; preds = %77, %74, %9
  %80 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %2, align 8
  ret %struct.mime_header_decoder_data* %80
}

declare dso_local i64 @mbfl_malloc(i32) #1

declare dso_local i32 @mbfl_memory_device_init(i32*, i32, i32) #1

declare dso_local i8* @mbfl_convert_filter_new(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @mime_header_decoder_delete(%struct.mime_header_decoder_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
