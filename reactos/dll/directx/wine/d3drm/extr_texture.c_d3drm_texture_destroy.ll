; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_texture.c_d3drm_texture_destroy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_texture.c_d3drm_texture_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_texture = type { i64, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"texture %p is being destroyed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3drm_texture*)* @d3drm_texture_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d3drm_texture_destroy(%struct.d3drm_texture* %0) #0 {
  %2 = alloca %struct.d3drm_texture*, align 8
  store %struct.d3drm_texture* %0, %struct.d3drm_texture** %2, align 8
  %3 = load %struct.d3drm_texture*, %struct.d3drm_texture** %2, align 8
  %4 = call i32 @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.d3drm_texture* %3)
  %5 = load %struct.d3drm_texture*, %struct.d3drm_texture** %2, align 8
  %6 = getelementptr inbounds %struct.d3drm_texture, %struct.d3drm_texture* %5, i32 0, i32 4
  %7 = load %struct.d3drm_texture*, %struct.d3drm_texture** %2, align 8
  %8 = getelementptr inbounds %struct.d3drm_texture, %struct.d3drm_texture* %7, i32 0, i32 3
  %9 = call i32 @d3drm_object_cleanup(i32* %6, i32* %8)
  %10 = load %struct.d3drm_texture*, %struct.d3drm_texture** %2, align 8
  %11 = getelementptr inbounds %struct.d3drm_texture, %struct.d3drm_texture* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.d3drm_texture*, %struct.d3drm_texture** %2, align 8
  %16 = getelementptr inbounds %struct.d3drm_texture, %struct.d3drm_texture* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14, %1
  %20 = load %struct.d3drm_texture*, %struct.d3drm_texture** %2, align 8
  %21 = getelementptr inbounds %struct.d3drm_texture, %struct.d3drm_texture* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @IDirect3DRM_Release(i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.d3drm_texture*, %struct.d3drm_texture** %2, align 8
  %26 = getelementptr inbounds %struct.d3drm_texture, %struct.d3drm_texture* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.d3drm_texture*, %struct.d3drm_texture** %2, align 8
  %31 = getelementptr inbounds %struct.d3drm_texture, %struct.d3drm_texture* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @IDirectDrawSurface_Release(i64 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.d3drm_texture*, %struct.d3drm_texture** %2, align 8
  %36 = call i32 @heap_free(%struct.d3drm_texture* %35)
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.d3drm_texture*) #1

declare dso_local i32 @d3drm_object_cleanup(i32*, i32*) #1

declare dso_local i32 @IDirect3DRM_Release(i32) #1

declare dso_local i32 @IDirectDrawSurface_Release(i64) #1

declare dso_local i32 @heap_free(%struct.d3drm_texture*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
