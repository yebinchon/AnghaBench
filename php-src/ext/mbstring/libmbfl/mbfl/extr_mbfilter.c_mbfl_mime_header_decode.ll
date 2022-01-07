; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_mime_header_decode.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_mime_header_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8*, i32*, i32 }
%struct.mime_header_decoder_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @mbfl_mime_header_decode(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mime_header_decoder_data*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = call i32 @mbfl_string_init(%struct.TYPE_8__* %11)
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.mime_header_decoder_data* @mime_header_decoder_new(i32* %21)
  store %struct.mime_header_decoder_data* %22, %struct.mime_header_decoder_data** %10, align 8
  %23 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %10, align 8
  %24 = icmp eq %struct.mime_header_decoder_data* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %52

26:                                               ; preds = %3
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %9, align 8
  br label %33

33:                                               ; preds = %36, %26
  %34 = load i64, i64* %8, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %9, align 8
  %39 = load i8, i8* %37, align 1
  %40 = zext i8 %39 to i32
  %41 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %10, align 8
  %42 = call i32 @mime_header_decoder_collector(i32 %40, %struct.mime_header_decoder_data* %41)
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %8, align 8
  br label %33

45:                                               ; preds = %33
  %46 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %10, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = call %struct.TYPE_8__* @mime_header_decoder_result(%struct.mime_header_decoder_data* %46, %struct.TYPE_8__* %47)
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %6, align 8
  %49 = load %struct.mime_header_decoder_data*, %struct.mime_header_decoder_data** %10, align 8
  %50 = call i32 @mime_header_decoder_delete(%struct.mime_header_decoder_data* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %4, align 8
  br label %52

52:                                               ; preds = %45, %25
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %53
}

declare dso_local i32 @mbfl_string_init(%struct.TYPE_8__*) #1

declare dso_local %struct.mime_header_decoder_data* @mime_header_decoder_new(i32*) #1

declare dso_local i32 @mime_header_decoder_collector(i32, %struct.mime_header_decoder_data*) #1

declare dso_local %struct.TYPE_8__* @mime_header_decoder_result(%struct.mime_header_decoder_data*, %struct.TYPE_8__*) #1

declare dso_local i32 @mime_header_decoder_delete(%struct.mime_header_decoder_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
