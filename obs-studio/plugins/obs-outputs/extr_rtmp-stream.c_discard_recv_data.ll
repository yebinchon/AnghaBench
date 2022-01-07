; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_discard_recv_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_discard_recv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@errno = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"recv error: %d (%d bytes)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtmp_stream*, i64)* @discard_recv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @discard_recv_data(%struct.rtmp_stream* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtmp_stream*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca [512 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.rtmp_stream* %0, %struct.rtmp_stream** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %12 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %11, i32 0, i32 0
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %6, align 8
  br label %13

13:                                               ; preds = %45, %2
  %14 = load i64, i64* %5, align 8
  %15 = icmp ugt i64 %14, 512
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %19

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i64 [ 512, %16 ], [ %18, %17 ]
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %5, align 8
  %23 = sub i64 %22, %21
  store i64 %23, i64* %5, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds [512 x i32], [512 x i32]* %7, i64 0, i64 0
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @recv(i32 %27, i32* %28, i64 %29, i32 0)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %19
  %34 = load i32, i32* @errno, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @LOG_ERROR, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i64, i64* %5, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @do_log(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %37, %33
  store i32 0, i32* %3, align 4
  br label %49

44:                                               ; preds = %19
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %5, align 8
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %13, label %48

48:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @recv(i32, i32*, i64, i32) #1

declare dso_local i32 @do_log(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
