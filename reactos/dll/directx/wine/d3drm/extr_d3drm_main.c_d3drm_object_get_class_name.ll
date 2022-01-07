; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_d3drm_main.c_d3drm_object_get_class_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_d3drm_main.c_d3drm_object_get_class_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_object = type { i32 }

@E_INVALIDARG = common dso_local global i32 0, align 4
@D3DRM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3drm_object_get_class_name(%struct.d3drm_object* %0, i64* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3drm_object*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.d3drm_object* %0, %struct.d3drm_object** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i64*, i64** %6, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %12, i32* %4, align 4
  br label %42

13:                                               ; preds = %3
  %14 = load %struct.d3drm_object*, %struct.d3drm_object** %5, align 8
  %15 = getelementptr inbounds %struct.d3drm_object, %struct.d3drm_object* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @strlen(i32 %16)
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %27, i32* %4, align 4
  br label %42

28:                                               ; preds = %21, %13
  %29 = load i64, i64* %8, align 8
  %30 = load i64*, i64** %6, align 8
  store i64 %29, i64* %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.d3drm_object*, %struct.d3drm_object** %5, align 8
  %36 = getelementptr inbounds %struct.d3drm_object, %struct.d3drm_object* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @memcpy(i8* %34, i32 %37, i64 %38)
  br label %40

40:                                               ; preds = %33, %28
  %41 = load i32, i32* @D3DRM_OK, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %26, %11
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
