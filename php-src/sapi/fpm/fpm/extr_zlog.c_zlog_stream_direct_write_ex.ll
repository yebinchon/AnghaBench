; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_direct_write_ex.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_direct_write_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlog_stream = type { i64, i32, i64 }

@STDERR_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.zlog_stream*, i8*, i64, i8*, i64)* @zlog_stream_direct_write_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zlog_stream_direct_write_ex(%struct.zlog_stream* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.zlog_stream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.zlog_stream* %0, %struct.zlog_stream** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.zlog_stream*, %struct.zlog_stream** %6, align 8
  %12 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %5
  %16 = load %struct.zlog_stream*, %struct.zlog_stream** %6, align 8
  %17 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @zend_quiet_write(i32 %18, i8* %19, i64 %20)
  %22 = load i64, i64* %10, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.zlog_stream*, %struct.zlog_stream** %6, align 8
  %26 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @zend_quiet_write(i32 %27, i8* %28, i64 %29)
  br label %31

31:                                               ; preds = %24, %15
  br label %32

32:                                               ; preds = %31, %5
  %33 = load %struct.zlog_stream*, %struct.zlog_stream** %6, align 8
  %34 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load i32, i32* @STDERR_FILENO, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @zend_quiet_write(i32 %38, i8* %39, i64 %40)
  %42 = load i64, i64* %10, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, i32* @STDERR_FILENO, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @zend_quiet_write(i32 %45, i8* %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %37
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i64, i64* %8, align 8
  ret i64 %51
}

declare dso_local i32 @zend_quiet_write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
