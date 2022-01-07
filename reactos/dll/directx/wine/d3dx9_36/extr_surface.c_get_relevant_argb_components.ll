; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_get_relevant_argb_components.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_surface.c_get_relevant_argb_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argb_conversion_info = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.argb_conversion_info*, i32*, i32*)* @get_relevant_argb_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_relevant_argb_components(%struct.argb_conversion_info* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.argb_conversion_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.argb_conversion_info* %0, %struct.argb_conversion_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %105, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ult i32 %12, 4
  br i1 %13, label %14, label %108

14:                                               ; preds = %11
  %15 = load %struct.argb_conversion_info*, %struct.argb_conversion_info** %4, align 8
  %16 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %105

24:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  %25 = load %struct.argb_conversion_info*, %struct.argb_conversion_info** %4, align 8
  %26 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %96, %24
  %33 = load i32, i32* %8, align 4
  %34 = icmp ult i32 %33, 4
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i1 [ false, %32 ], [ %37, %35 ]
  br i1 %39, label %40, label %99

40:                                               ; preds = %38
  %41 = load %struct.argb_conversion_info*, %struct.argb_conversion_info** %4, align 8
  %42 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = mul i32 %48, 8
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %40
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = mul i32 %59, 8
  %61 = load %struct.argb_conversion_info*, %struct.argb_conversion_info** %4, align 8
  %62 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sub i32 %60, %67
  %69 = shl i32 %58, %68
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %93

72:                                               ; preds = %40
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %77, %78
  %80 = load %struct.argb_conversion_info*, %struct.argb_conversion_info** %4, align 8
  %81 = getelementptr inbounds %struct.argb_conversion_info, %struct.argb_conversion_info* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = mul i32 %87, 8
  %89 = sub i32 %86, %88
  %90 = lshr i32 %79, %89
  %91 = load i32, i32* %9, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %72, %51
  %94 = load i32, i32* %10, align 4
  %95 = lshr i32 %94, 8
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %8, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %32

99:                                               ; preds = %38
  %100 = load i32, i32* %9, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  br label %105

105:                                              ; preds = %99, %23
  %106 = load i32, i32* %7, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %11

108:                                              ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
