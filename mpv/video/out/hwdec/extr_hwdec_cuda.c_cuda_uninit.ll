; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda.c_cuda_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda.c_cuda_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec = type { i32, %struct.cuda_hw_priv* }
%struct.cuda_hw_priv = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 (i64)* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec*)* @cuda_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuda_uninit(%struct.ra_hwdec* %0) #0 {
  %2 = alloca %struct.ra_hwdec*, align 8
  %3 = alloca %struct.cuda_hw_priv*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.ra_hwdec* %0, %struct.ra_hwdec** %2, align 8
  %5 = load %struct.ra_hwdec*, %struct.ra_hwdec** %2, align 8
  %6 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %5, i32 0, i32 1
  %7 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %6, align 8
  store %struct.cuda_hw_priv* %7, %struct.cuda_hw_priv** %3, align 8
  %8 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %3, align 8
  %9 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %4, align 8
  %11 = load %struct.ra_hwdec*, %struct.ra_hwdec** %2, align 8
  %12 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %3, align 8
  %15 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %14, i32 0, i32 3
  %16 = call i32 @hwdec_devices_remove(i32 %13, %struct.TYPE_5__* %15)
  %17 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %3, align 8
  %18 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = call i32 @av_buffer_unref(i32* %19)
  %21 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %3, align 8
  %22 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %1
  %26 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %3, align 8
  %27 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %3, align 8
  %30 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (i64)*, i32 (i64)** %35, align 8
  %37 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %3, align 8
  %38 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 %36(i64 %39)
  %41 = call i32 @CHECK_CU(i32 %40)
  br label %42

42:                                               ; preds = %33, %25, %1
  %43 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %3, align 8
  %44 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (i64)*, i32 (i64)** %49, align 8
  %51 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %3, align 8
  %52 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 %50(i64 %53)
  %55 = call i32 @CHECK_CU(i32 %54)
  br label %56

56:                                               ; preds = %47, %42
  %57 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %3, align 8
  %58 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %57, i32 0, i32 2
  %59 = call i32 @cuda_free_functions(%struct.TYPE_4__** %58)
  ret void
}

declare dso_local i32 @hwdec_devices_remove(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @av_buffer_unref(i32*) #1

declare dso_local i32 @CHECK_CU(i32) #1

declare dso_local i32 @cuda_free_functions(%struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
