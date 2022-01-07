; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_d3d11vpp.c_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_d3d11vpp.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { i64, i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %4 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %5 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %4, i32 0, i32 0
  %6 = load %struct.priv*, %struct.priv** %5, align 8
  store %struct.priv* %6, %struct.priv** %3, align 8
  %7 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %8 = call i32 @destroy_video_proc(%struct.mp_filter* %7)
  %9 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %10 = call i32 @flush_frames(%struct.mp_filter* %9)
  %11 = load %struct.priv*, %struct.priv** %3, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @talloc_free(i32 %13)
  %15 = load %struct.priv*, %struct.priv** %3, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @talloc_free(i32 %17)
  %19 = load %struct.priv*, %struct.priv** %3, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.priv*, %struct.priv** %3, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ID3D11VideoContext_Release(i64 %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.priv*, %struct.priv** %3, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.priv*, %struct.priv** %3, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ID3D11VideoDevice_Release(i64 %36)
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.priv*, %struct.priv** %3, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.priv*, %struct.priv** %3, align 8
  %45 = getelementptr inbounds %struct.priv, %struct.priv* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @ID3D11DeviceContext_Release(i64 %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.priv*, %struct.priv** %3, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.priv*, %struct.priv** %3, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ID3D11Device_Release(i64 %56)
  br label %58

58:                                               ; preds = %53, %48
  ret void
}

declare dso_local i32 @destroy_video_proc(%struct.mp_filter*) #1

declare dso_local i32 @flush_frames(%struct.mp_filter*) #1

declare dso_local i32 @talloc_free(i32) #1

declare dso_local i32 @ID3D11VideoContext_Release(i64) #1

declare dso_local i32 @ID3D11VideoDevice_Release(i64) #1

declare dso_local i32 @ID3D11DeviceContext_Release(i64) #1

declare dso_local i32 @ID3D11Device_Release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
