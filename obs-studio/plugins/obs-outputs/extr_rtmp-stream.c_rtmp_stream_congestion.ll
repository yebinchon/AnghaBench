; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_rtmp_stream_congestion.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_rtmp_stream_congestion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i64, float, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i8*)* @rtmp_stream_congestion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @rtmp_stream_congestion(i8* %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rtmp_stream*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.rtmp_stream*
  store %struct.rtmp_stream* %6, %struct.rtmp_stream** %4, align 8
  %7 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %8 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %13 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = sitofp i64 %14 to float
  %16 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %17 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = sitofp i64 %18 to float
  %20 = fdiv float %15, %19
  store float %20, float* %2, align 4
  br label %33

21:                                               ; preds = %1
  %22 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %23 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %31

27:                                               ; preds = %21
  %28 = load %struct.rtmp_stream*, %struct.rtmp_stream** %4, align 8
  %29 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %28, i32 0, i32 1
  %30 = load float, float* %29, align 8
  br label %31

31:                                               ; preds = %27, %26
  %32 = phi float [ 1.000000e+00, %26 ], [ %30, %27 ]
  store float %32, float* %2, align 4
  br label %33

33:                                               ; preds = %31, %11
  %34 = load float, float* %2, align 4
  ret float %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
