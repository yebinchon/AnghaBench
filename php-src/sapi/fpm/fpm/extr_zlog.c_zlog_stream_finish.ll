; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_finish.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlog_stream = type { i32, i64, i64, i64 }

@ZLOG_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlog_stream_finish(%struct.zlog_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zlog_stream*, align 8
  store %struct.zlog_stream* %0, %struct.zlog_stream** %3, align 8
  %4 = load %struct.zlog_stream*, %struct.zlog_stream** %3, align 8
  %5 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.zlog_stream*, %struct.zlog_stream** %3, align 8
  %10 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @ZLOG_TRUE, align 4
  store i32 %14, i32* %2, align 4
  br label %47

15:                                               ; preds = %8
  %16 = load %struct.zlog_stream*, %struct.zlog_stream** %3, align 8
  %17 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.zlog_stream*, %struct.zlog_stream** %3, align 8
  %22 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.zlog_stream*, %struct.zlog_stream** %3, align 8
  %27 = call i32 @zlog_stream_finish_buffer_suffix(%struct.zlog_stream* %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.zlog_stream*, %struct.zlog_stream** %3, align 8
  %30 = call i32 @zlog_stream_buf_flush(%struct.zlog_stream* %29)
  br label %43

31:                                               ; preds = %15
  %32 = load %struct.zlog_stream*, %struct.zlog_stream** %3, align 8
  %33 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.zlog_stream*, %struct.zlog_stream** %3, align 8
  %38 = call i32 @zlog_stream_finish_direct_suffix(%struct.zlog_stream* %37)
  br label %42

39:                                               ; preds = %31
  %40 = load %struct.zlog_stream*, %struct.zlog_stream** %3, align 8
  %41 = call i32 @zlog_stream_direct_write(%struct.zlog_stream* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %42

42:                                               ; preds = %39, %36
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.zlog_stream*, %struct.zlog_stream** %3, align 8
  %45 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* @ZLOG_TRUE, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %13
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @zlog_stream_finish_buffer_suffix(%struct.zlog_stream*) #1

declare dso_local i32 @zlog_stream_buf_flush(%struct.zlog_stream*) #1

declare dso_local i32 @zlog_stream_finish_direct_suffix(%struct.zlog_stream*) #1

declare dso_local i32 @zlog_stream_direct_write(%struct.zlog_stream*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
