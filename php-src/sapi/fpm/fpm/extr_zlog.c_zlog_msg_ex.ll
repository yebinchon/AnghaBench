; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_msg_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_msg_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlog_stream = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zlog_msg_ex(i8* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.zlog_stream, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %12, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* %12, align 8
  %21 = add i64 %19, %20
  %22 = call i32 @zlog_stream_init_internal(%struct.zlog_stream* %11, i32 %18, i64 %21, i32 0)
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @zlog_stream_prefix_ex(%struct.zlog_stream* %11, i8* %23, i32 %24)
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @zlog_stream_str(%struct.zlog_stream* %11, i8* %26, i64 %27)
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @zlog_stream_str(%struct.zlog_stream* %11, i8* %29, i64 %30)
  %32 = call i32 @zlog_stream_finish(%struct.zlog_stream* %11)
  %33 = call i32 @zlog_stream_destroy(%struct.zlog_stream* %11)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @zlog_stream_init_internal(%struct.zlog_stream*, i32, i64, i32) #1

declare dso_local i32 @zlog_stream_prefix_ex(%struct.zlog_stream*, i8*, i32) #1

declare dso_local i32 @zlog_stream_str(%struct.zlog_stream*, i8*, i64) #1

declare dso_local i32 @zlog_stream_finish(%struct.zlog_stream*) #1

declare dso_local i32 @zlog_stream_destroy(%struct.zlog_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
