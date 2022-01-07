; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_buf_copy_char.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_buf_copy_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlog_stream = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zlog_stream*, i8)* @zlog_stream_buf_copy_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlog_stream_buf_copy_char(%struct.zlog_stream* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zlog_stream*, align 8
  %5 = alloca i8, align 1
  store %struct.zlog_stream* %0, %struct.zlog_stream** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load %struct.zlog_stream*, %struct.zlog_stream** %4, align 8
  %7 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.zlog_stream*, %struct.zlog_stream** %4, align 8
  %11 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %9, %12
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.zlog_stream*, %struct.zlog_stream** %4, align 8
  %17 = call i32 @zlog_stream_buf_alloc_ex(%struct.zlog_stream* %16, i32 1)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %32

20:                                               ; preds = %15, %2
  %21 = load i8, i8* %5, align 1
  %22 = load %struct.zlog_stream*, %struct.zlog_stream** %4, align 8
  %23 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.zlog_stream*, %struct.zlog_stream** %4, align 8
  %27 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %25, i64 %30
  store i8 %21, i8* %31, align 1
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %20, %19
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @zlog_stream_buf_alloc_ex(%struct.zlog_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
