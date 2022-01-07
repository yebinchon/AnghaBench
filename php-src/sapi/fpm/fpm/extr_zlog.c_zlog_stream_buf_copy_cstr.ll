; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_buf_copy_cstr.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_buf_copy_cstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlog_stream = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zlog_stream*, i8*, i64)* @zlog_stream_buf_copy_cstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlog_stream_buf_copy_cstr(%struct.zlog_stream* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zlog_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.zlog_stream* %0, %struct.zlog_stream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %9 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %13 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %11, %14
  %16 = load i64, i64* %7, align 8
  %17 = icmp ule i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @zlog_stream_buf_alloc_ex(%struct.zlog_stream* %19, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %43

24:                                               ; preds = %18, %3
  %25 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %26 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %30 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %28, %31
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @memcpy(i64 %32, i8* %33, i64 %34)
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %38 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, %36
  store i64 %40, i64* %38, align 8
  %41 = load i64, i64* %7, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %24, %23
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @zlog_stream_buf_alloc_ex(%struct.zlog_stream*, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
