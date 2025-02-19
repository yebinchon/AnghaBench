; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_stroke_polygon.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_stroke_polygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_vec2i = type { i32, i32 }
%struct.nk_color = type { i32 }

@PS_SOLID = common dso_local global i32 0, align 4
@DC_PEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.nk_vec2i*, i32, i16, i32)* @nk_gdi_stroke_polygon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdi_stroke_polygon(i32 %0, %struct.nk_vec2i* %1, i32 %2, i16 zeroext %3, i32 %4) #0 {
  %6 = alloca %struct.nk_color, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nk_vec2i*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %6, i32 0, i32 0
  store i32 %4, i32* %14, align 4
  store i32 %0, i32* %7, align 4
  store %struct.nk_vec2i* %1, %struct.nk_vec2i** %8, align 8
  store i32 %2, i32* %9, align 4
  store i16 %3, i16* %10, align 2
  %15 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @convert_color(i32 %16)
  store i32 %17, i32* %11, align 4
  store i32* null, i32** %12, align 8
  %18 = load i16, i16* %10, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @SetDCPenColor(i32 %22, i32 %23)
  br label %33

25:                                               ; preds = %5
  %26 = load i32, i32* @PS_SOLID, align 4
  %27 = load i16, i16* %10, align 2
  %28 = load i32, i32* %11, align 4
  %29 = call i32* @CreatePen(i32 %26, i16 zeroext %27, i32 %28)
  store i32* %29, i32** %12, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @SelectObject(i32 %30, i32* %31)
  br label %33

33:                                               ; preds = %25, %21
  %34 = load i32, i32* %9, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %80

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %39 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %38, i64 0
  %40 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %43 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %42, i64 0
  %44 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @MoveToEx(i32 %37, i32 %41, i32 %45, i32* null)
  store i32 1, i32* %13, align 4
  br label %47

47:                                               ; preds = %66, %36
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %53, i64 %55
  %57 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %59, i64 %61
  %63 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @LineTo(i32 %52, i32 %58, i32 %64)
  br label %66

66:                                               ; preds = %51
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %47

69:                                               ; preds = %47
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %72 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %71, i64 0
  %73 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nk_vec2i*, %struct.nk_vec2i** %8, align 8
  %76 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %75, i64 0
  %77 = getelementptr inbounds %struct.nk_vec2i, %struct.nk_vec2i* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @LineTo(i32 %70, i32 %74, i32 %78)
  br label %80

80:                                               ; preds = %69, %33
  %81 = load i32*, i32** %12, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @DC_PEN, align 4
  %86 = call i32* @GetStockObject(i32 %85)
  %87 = call i32 @SelectObject(i32 %84, i32* %86)
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @DeleteObject(i32* %88)
  br label %90

90:                                               ; preds = %83, %80
  ret void
}

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @SetDCPenColor(i32, i32) #1

declare dso_local i32* @CreatePen(i32, i16 zeroext, i32) #1

declare dso_local i32 @SelectObject(i32, i32*) #1

declare dso_local i32 @MoveToEx(i32, i32, i32, i32*) #1

declare dso_local i32 @LineTo(i32, i32, i32) #1

declare dso_local i32* @GetStockObject(i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
