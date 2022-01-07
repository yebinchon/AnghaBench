; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_calculate_dds_surface_size.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_calculate_dds_surface_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pixel_format_desc = type { i64, i32, i32, i32, i32 }

@FORMAT_UNKNOWN = common dso_local global i64 0, align 8
@E_NOTIMPL = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32*)* @calculate_dds_surface_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_dds_surface_size(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.pixel_format_desc*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.pixel_format_desc* @get_format_info(i32 %13)
  store %struct.pixel_format_desc* %14, %struct.pixel_format_desc** %12, align 8
  %15 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %12, align 8
  %16 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FORMAT_UNKNOWN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %21, i32* %6, align 4
  br label %78

22:                                               ; preds = %5
  %23 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %12, align 8
  %24 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %12, align 8
  %29 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %64

32:                                               ; preds = %27, %22
  %33 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %12, align 8
  %34 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %12, align 8
  %38 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %36, %39
  %41 = sub nsw i32 %40, 1
  %42 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %12, align 8
  %43 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sdiv i32 %41, %44
  %46 = call i32 @max(i32 1, i32 %45)
  %47 = mul nsw i32 %35, %46
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %12, align 8
  %53 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %12, align 8
  %58 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = sdiv i32 %56, %59
  %61 = call i32 @max(i32 1, i32 %60)
  %62 = mul nsw i32 %50, %61
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  br label %76

64:                                               ; preds = %27
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %12, align 8
  %67 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = load i32*, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32*, i32** %11, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %64, %32
  %77 = load i32, i32* @D3D_OK, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %76, %20
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.pixel_format_desc* @get_format_info(i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
