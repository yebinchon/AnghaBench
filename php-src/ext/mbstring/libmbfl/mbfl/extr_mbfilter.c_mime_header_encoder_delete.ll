; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mime_header_encoder_delete.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mime_header_encoder_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mime_header_encoder_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mime_header_encoder_delete(%struct.mime_header_encoder_data* %0) #0 {
  %2 = alloca %struct.mime_header_encoder_data*, align 8
  store %struct.mime_header_encoder_data* %0, %struct.mime_header_encoder_data** %2, align 8
  %3 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %2, align 8
  %4 = icmp ne %struct.mime_header_encoder_data* %3, null
  br i1 %4, label %5, label %39

5:                                                ; preds = %1
  %6 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %2, align 8
  %7 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mbfl_convert_filter_delete(i32 %8)
  %10 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %2, align 8
  %11 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mbfl_convert_filter_delete(i32 %12)
  %14 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %2, align 8
  %15 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mbfl_convert_filter_delete(i32 %16)
  %18 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %2, align 8
  %19 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mbfl_convert_filter_delete(i32 %20)
  %22 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %2, align 8
  %23 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mbfl_convert_filter_delete(i32 %24)
  %26 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %2, align 8
  %27 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mbfl_convert_filter_delete(i32 %28)
  %30 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %2, align 8
  %31 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %30, i32 0, i32 1
  %32 = call i32 @mbfl_memory_device_clear(i32* %31)
  %33 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %2, align 8
  %34 = getelementptr inbounds %struct.mime_header_encoder_data, %struct.mime_header_encoder_data* %33, i32 0, i32 0
  %35 = call i32 @mbfl_memory_device_clear(i32* %34)
  %36 = load %struct.mime_header_encoder_data*, %struct.mime_header_encoder_data** %2, align 8
  %37 = bitcast %struct.mime_header_encoder_data* %36 to i8*
  %38 = call i32 @mbfl_free(i8* %37)
  br label %39

39:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @mbfl_convert_filter_delete(i32) #1

declare dso_local i32 @mbfl_memory_device_clear(i32*) #1

declare dso_local i32 @mbfl_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
