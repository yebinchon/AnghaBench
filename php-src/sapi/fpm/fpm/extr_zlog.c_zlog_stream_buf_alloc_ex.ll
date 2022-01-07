; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_buf_alloc_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_buf_alloc_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlog_stream = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8* }

@zlog_limit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zlog_stream*, i64)* @zlog_stream_buf_alloc_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlog_stream_buf_alloc_ex(%struct.zlog_stream* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zlog_stream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.zlog_stream* %0, %struct.zlog_stream** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.zlog_stream*, %struct.zlog_stream** %4, align 8
  %9 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.zlog_stream*, %struct.zlog_stream** %4, align 8
  %16 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  br label %18

18:                                               ; preds = %14, %13
  %19 = phi i64 [ %11, %13 ], [ %17, %14 ]
  store i64 %19, i64* %7, align 8
  %20 = load %struct.zlog_stream*, %struct.zlog_stream** %4, align 8
  %21 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = load i32, i32* @zlog_limit, align 4
  %27 = load i64, i64* %7, align 8
  %28 = mul i64 %27, 2
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @MAX(i64 %28, i64 %29)
  %31 = call i64 @MIN(i32 %26, i32 %30)
  store i64 %31, i64* %7, align 8
  %32 = load %struct.zlog_stream*, %struct.zlog_stream** %4, align 8
  %33 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i8* @realloc(i8* %35, i64 %36)
  store i8* %37, i8** %6, align 8
  br label %46

38:                                               ; preds = %18
  %39 = load i32, i32* @zlog_limit, align 4
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @MAX(i64 %40, i64 %41)
  %43 = call i64 @MIN(i32 %39, i32 %42)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i8* @malloc(i64 %44)
  store i8* %45, i8** %6, align 8
  br label %46

46:                                               ; preds = %38, %25
  %47 = load i8*, i8** %6, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %59

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.zlog_stream*, %struct.zlog_stream** %4, align 8
  %53 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i8* %51, i8** %54, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.zlog_stream*, %struct.zlog_stream** %4, align 8
  %57 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %50, %49
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i64, i64) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
