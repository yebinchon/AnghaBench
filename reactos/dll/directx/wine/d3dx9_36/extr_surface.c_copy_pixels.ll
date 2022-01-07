; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_copy_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_copy_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.volume = type { i32, i32, i32 }
%struct.pixel_format_desc = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_pixels(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, %struct.volume* %6, %struct.pixel_format_desc* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.volume*, align 8
  %16 = alloca %struct.pixel_format_desc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.volume* %6, %struct.volume** %15, align 8
  store %struct.pixel_format_desc* %7, %struct.pixel_format_desc** %16, align 8
  %23 = load %struct.volume*, %struct.volume** %15, align 8
  %24 = getelementptr inbounds %struct.volume, %struct.volume* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %16, align 8
  %27 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = sub nsw i32 %29, 1
  %31 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %16, align 8
  %32 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %30, %33
  store i32 %34, i32* %21, align 4
  %35 = load %struct.volume*, %struct.volume** %15, align 8
  %36 = getelementptr inbounds %struct.volume, %struct.volume* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %16, align 8
  %39 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %16, align 8
  %44 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %42, %45
  store i32 %46, i32* %22, align 4
  store i32 0, i32* %18, align 4
  br label %47

47:                                               ; preds = %91, %8
  %48 = load i32, i32* %18, align 4
  %49 = load %struct.volume*, %struct.volume** %15, align 8
  %50 = getelementptr inbounds %struct.volume, %struct.volume* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %94

53:                                               ; preds = %47
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %11, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32* %59, i32** %20, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %14, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  store i32* %65, i32** %19, align 8
  store i32 0, i32* %17, align 4
  br label %66

66:                                               ; preds = %87, %53
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %22, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = load i32*, i32** %19, align 8
  %72 = load i32*, i32** %20, align 8
  %73 = load i32, i32* %21, align 4
  %74 = load %struct.pixel_format_desc*, %struct.pixel_format_desc** %16, align 8
  %75 = getelementptr inbounds %struct.pixel_format_desc, %struct.pixel_format_desc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %73, %76
  %78 = call i32 @memcpy(i32* %71, i32* %72, i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = load i32*, i32** %20, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %20, align 8
  %83 = load i32, i32* %13, align 4
  %84 = load i32*, i32** %19, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %19, align 8
  br label %87

87:                                               ; preds = %70
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %17, align 4
  br label %66

90:                                               ; preds = %66
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %18, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %18, align 4
  br label %47

94:                                               ; preds = %47
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
