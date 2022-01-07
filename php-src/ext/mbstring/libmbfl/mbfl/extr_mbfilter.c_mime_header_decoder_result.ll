; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mime_header_decoder_result.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mime_header_decoder_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mime_header_decoder_data = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*)* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*)* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_7__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mime_header_decoder_result(%struct.mime_header_decoder_data* %0, i32* %1) #0 {
  %3 = alloca %struct.mime_header_decoder_data*, align 8
  %4 = alloca i32*, align 8
  store %struct.mime_header_decoder_data* %0, %struct.mime_header_decoder_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %3, align 8
  %6 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %34 [
    i32 1, label %8
    i32 2, label %8
    i32 3, label %8
    i32 4, label %8
    i32 7, label %8
    i32 8, label %8
    i32 9, label %8
    i32 5, label %15
    i32 6, label %15
  ]

8:                                                ; preds = %2, %2, %2, %2, %2, %2, %2
  %9 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %3, align 8
  %10 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %3, align 8
  %13 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %12, i32 0, i32 2
  %14 = call i32 @mbfl_convert_filter_devcat(%struct.TYPE_6__* %11, i32* %13)
  br label %34

15:                                               ; preds = %2, %2
  %16 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %3, align 8
  %17 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %16, i32 0, i32 5
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %19, align 8
  %21 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %3, align 8
  %22 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %21, i32 0, i32 5
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = call i32 %20(%struct.TYPE_7__* %23)
  %25 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %3, align 8
  %26 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %25, i32 0, i32 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %28, align 8
  %30 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %3, align 8
  %31 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %30, i32 0, i32 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = call i32 %29(%struct.TYPE_6__* %32)
  br label %34

34:                                               ; preds = %2, %15, %8
  %35 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %3, align 8
  %36 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %35, i32 0, i32 3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %38, align 8
  %40 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %3, align 8
  %41 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = call i32 %39(%struct.TYPE_5__* %42)
  %44 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %3, align 8
  %45 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %44, i32 0, i32 2
  %46 = call i32 @mbfl_memory_device_reset(i32* %45)
  %47 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %3, align 8
  %48 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %3, align 8
  %50 = getelementptr inbounds %struct.mime_header_decoder_data, %struct.mime_header_decoder_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %4, align 8
  %52 = call i32* @mbfl_memory_device_result(i32* %50, i32* %51)
  ret i32* %52
}

declare dso_local i32 @mbfl_convert_filter_devcat(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @mbfl_memory_device_reset(i32*) #1

declare dso_local i32* @mbfl_memory_device_result(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
