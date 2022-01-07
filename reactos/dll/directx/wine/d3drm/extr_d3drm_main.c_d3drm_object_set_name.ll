; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_d3drm_main.c_d3drm_object_set_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_d3drm_main.c_d3drm_object_set_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_object = type { i32* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@D3DRM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3drm_object_set_name(%struct.d3drm_object* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.d3drm_object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.d3drm_object* %0, %struct.d3drm_object** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.d3drm_object*, %struct.d3drm_object** %4, align 8
  %8 = getelementptr inbounds %struct.d3drm_object, %struct.d3drm_object* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @heap_free(i32* %9)
  %11 = load %struct.d3drm_object*, %struct.d3drm_object** %4, align 8
  %12 = getelementptr inbounds %struct.d3drm_object, %struct.d3drm_object* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32* @heap_alloc(i64 %19)
  %21 = load %struct.d3drm_object*, %struct.d3drm_object** %4, align 8
  %22 = getelementptr inbounds %struct.d3drm_object, %struct.d3drm_object* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = icmp ne i32* %20, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %15
  %27 = load %struct.d3drm_object*, %struct.d3drm_object** %4, align 8
  %28 = getelementptr inbounds %struct.d3drm_object, %struct.d3drm_object* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @memcpy(i32* %29, i8* %30, i64 %31)
  br label %33

33:                                               ; preds = %26, %2
  %34 = load i32, i32* @D3DRM_OK, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %24
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @heap_alloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
