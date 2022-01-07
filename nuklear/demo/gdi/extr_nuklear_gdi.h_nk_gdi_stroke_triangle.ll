; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_stroke_triangle.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_stroke_triangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_color = type { i32 }
%struct.TYPE_3__ = type { i16, i16 }

@PS_SOLID = common dso_local global i32 0, align 4
@DC_PEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i16, i16, i16, i16, i16, i16, i32)* @nk_gdi_stroke_triangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdi_stroke_triangle(i32 %0, i16 signext %1, i16 signext %2, i16 signext %3, i16 signext %4, i16 signext %5, i16 signext %6, i16 zeroext %7, i32 %8) #0 {
  %10 = alloca %struct.nk_color, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i32, align 4
  %20 = alloca [4 x %struct.TYPE_3__], align 16
  %21 = alloca i32*, align 8
  %22 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %10, i32 0, i32 0
  store i32 %8, i32* %22, align 4
  store i32 %0, i32* %11, align 4
  store i16 %1, i16* %12, align 2
  store i16 %2, i16* %13, align 2
  store i16 %3, i16* %14, align 2
  store i16 %4, i16* %15, align 2
  store i16 %5, i16* %16, align 2
  store i16 %6, i16* %17, align 2
  store i16 %7, i16* %18, align 2
  %23 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %10, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @convert_color(i32 %24)
  store i32 %25, i32* %19, align 4
  %26 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %20, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i16, i16* %12, align 2
  store i16 %28, i16* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %30 = load i16, i16* %13, align 2
  store i16 %30, i16* %29, align 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i16, i16* %14, align 2
  store i16 %33, i16* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %35 = load i16, i16* %15, align 2
  store i16 %35, i16* %34, align 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i16, i16* %16, align 2
  store i16 %38, i16* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %40 = load i16, i16* %17, align 2
  store i16 %40, i16* %39, align 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i16, i16* %12, align 2
  store i16 %43, i16* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %45 = load i16, i16* %13, align 2
  store i16 %45, i16* %44, align 2
  store i32* null, i32** %21, align 8
  %46 = load i16, i16* %18, align 2
  %47 = zext i16 %46 to i32
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %53

49:                                               ; preds = %9
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %19, align 4
  %52 = call i32 @SetDCPenColor(i32 %50, i32 %51)
  br label %61

53:                                               ; preds = %9
  %54 = load i32, i32* @PS_SOLID, align 4
  %55 = load i16, i16* %18, align 2
  %56 = load i32, i32* %19, align 4
  %57 = call i32* @CreatePen(i32 %54, i16 zeroext %55, i32 %56)
  store i32* %57, i32** %21, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32*, i32** %21, align 8
  %60 = call i32 @SelectObject(i32 %58, i32* %59)
  br label %61

61:                                               ; preds = %53, %49
  %62 = load i32, i32* %11, align 4
  %63 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %20, i64 0, i64 0
  %64 = call i32 @Polyline(i32 %62, %struct.TYPE_3__* %63, i32 4)
  %65 = load i32*, i32** %21, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @DC_PEN, align 4
  %70 = call i32* @GetStockObject(i32 %69)
  %71 = call i32 @SelectObject(i32 %68, i32* %70)
  %72 = load i32*, i32** %21, align 8
  %73 = call i32 @DeleteObject(i32* %72)
  br label %74

74:                                               ; preds = %67, %61
  ret void
}

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @SetDCPenColor(i32, i32) #1

declare dso_local i32* @CreatePen(i32, i16 zeroext, i32) #1

declare dso_local i32 @SelectObject(i32, i32*) #1

declare dso_local i32 @Polyline(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32* @GetStockObject(i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
