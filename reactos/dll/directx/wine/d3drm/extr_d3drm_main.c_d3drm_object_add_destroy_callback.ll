; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_d3drm_main.c_d3drm_object_add_destroy_callback.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_d3drm_main.c_d3drm_object_add_destroy_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_object = type { i32 }
%struct.destroy_callback = type { i32, i8*, i64 }

@D3DRMERR_BADVALUE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@D3DRM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3drm_object_add_destroy_callback(%struct.d3drm_object* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3drm_object*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.destroy_callback*, align 8
  store %struct.d3drm_object* %0, %struct.d3drm_object** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @D3DRMERR_BADVALUE, align 4
  store i32 %12, i32* %4, align 4
  br label %31

13:                                               ; preds = %3
  %14 = call %struct.destroy_callback* @heap_alloc(i32 24)
  store %struct.destroy_callback* %14, %struct.destroy_callback** %8, align 8
  %15 = icmp ne %struct.destroy_callback* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %17, i32* %4, align 4
  br label %31

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.destroy_callback*, %struct.destroy_callback** %8, align 8
  %21 = getelementptr inbounds %struct.destroy_callback, %struct.destroy_callback* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.destroy_callback*, %struct.destroy_callback** %8, align 8
  %24 = getelementptr inbounds %struct.destroy_callback, %struct.destroy_callback* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.d3drm_object*, %struct.d3drm_object** %5, align 8
  %26 = getelementptr inbounds %struct.d3drm_object, %struct.d3drm_object* %25, i32 0, i32 0
  %27 = load %struct.destroy_callback*, %struct.destroy_callback** %8, align 8
  %28 = getelementptr inbounds %struct.destroy_callback, %struct.destroy_callback* %27, i32 0, i32 0
  %29 = call i32 @list_add_head(i32* %26, i32* %28)
  %30 = load i32, i32* @D3DRM_OK, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %18, %16, %11
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.destroy_callback* @heap_alloc(i32) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
