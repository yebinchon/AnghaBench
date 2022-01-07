; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_str.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlog_stream = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlog_stream_str(%struct.zlog_stream* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zlog_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.zlog_stream* %0, %struct.zlog_stream** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %9 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %14 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %16 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %18 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  br label %26

19:                                               ; preds = %3
  %20 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %21 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %41

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %12
  %27 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %28 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @zlog_stream_buf_append(%struct.zlog_stream* %32, i8* %33, i64 %34)
  store i32 %35, i32* %4, align 4
  br label %41

36:                                               ; preds = %26
  %37 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @zlog_stream_unbuffered_write(%struct.zlog_stream* %37, i8* %38, i64 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %31, %24
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @zlog_stream_buf_append(%struct.zlog_stream*, i8*, i64) #1

declare dso_local i32 @zlog_stream_unbuffered_write(%struct.zlog_stream*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
