; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_d3drm_main.c_d3drm_object_get_name.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3drm/extr_d3drm_main.c_d3drm_object_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3drm_object = type { i64 }

@E_INVALIDARG = common dso_local global i32 0, align 4
@D3DRM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3drm_object_get_name(%struct.d3drm_object* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3drm_object*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.d3drm_object* %0, %struct.d3drm_object** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %12, i32* %4, align 4
  br label %63

13:                                               ; preds = %3
  %14 = load %struct.d3drm_object*, %struct.d3drm_object** %5, align 8
  %15 = getelementptr inbounds %struct.d3drm_object, %struct.d3drm_object* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.d3drm_object*, %struct.d3drm_object** %5, align 8
  %20 = getelementptr inbounds %struct.d3drm_object, %struct.d3drm_object* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @strlen(i64 %21)
  %23 = add nsw i32 %22, 1
  br label %25

24:                                               ; preds = %13
  br label %25

25:                                               ; preds = %24, %18
  %26 = phi i32 [ %23, %18 ], [ 0, %24 ]
  store i32 %26, i32* %8, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %35, i32* %4, align 4
  br label %63

36:                                               ; preds = %29, %25
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load %struct.d3drm_object*, %struct.d3drm_object** %5, align 8
  %41 = getelementptr inbounds %struct.d3drm_object, %struct.d3drm_object* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.d3drm_object*, %struct.d3drm_object** %5, align 8
  %47 = getelementptr inbounds %struct.d3drm_object, %struct.d3drm_object* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @memcpy(i8* %45, i64 %48, i32 %49)
  br label %58

51:                                               ; preds = %39
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i8*, i8** %7, align 8
  store i8 0, i8* %56, align 1
  br label %57

57:                                               ; preds = %55, %51
  br label %58

58:                                               ; preds = %57, %44
  br label %59

59:                                               ; preds = %58, %36
  %60 = load i32, i32* %8, align 4
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @D3DRM_OK, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %34, %11
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
