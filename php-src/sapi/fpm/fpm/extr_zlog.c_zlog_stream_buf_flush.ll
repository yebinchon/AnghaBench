; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_buf_flush.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_buf_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlog_stream = type { i32, i64, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@ZLOG_LEVEL_MASK = common dso_local global i32 0, align 4
@syslog_priorities = common dso_local global i32* null, align 8
@zlog_level = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zlog_stream*)* @zlog_stream_buf_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlog_stream_buf_flush(%struct.zlog_stream* %0) #0 {
  %2 = alloca %struct.zlog_stream*, align 8
  %3 = alloca i32, align 4
  store %struct.zlog_stream* %0, %struct.zlog_stream** %2, align 8
  %4 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %5 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @ZLOG_LEVEL_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %10 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %14 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %18 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %21 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = call i32 @external_logger(i32 %8, i64 %16, i64 %23)
  %25 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %26 = call i32 @zlog_stream_buf_copy_char(%struct.zlog_stream* %25, i8 signext 10)
  %27 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %28 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %29 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %33 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @zlog_stream_direct_write(%struct.zlog_stream* %27, i64 %31, i64 %34)
  store i32 %35, i32* %3, align 4
  %36 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %37 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @external_logger(i32, i64, i64) #1

declare dso_local i32 @zlog_stream_buf_copy_char(%struct.zlog_stream*, i8 signext) #1

declare dso_local i32 @zlog_stream_direct_write(%struct.zlog_stream*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
