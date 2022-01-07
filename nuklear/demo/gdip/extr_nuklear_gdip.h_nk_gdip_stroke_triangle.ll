; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_stroke_triangle.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_stroke_triangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.nk_color = type { i32 }
%struct.TYPE_4__ = type { i16, i16 }

@gdip = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i16, i16, i16, i16, i16, i16, i32)* @nk_gdip_stroke_triangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdip_stroke_triangle(i16 signext %0, i16 signext %1, i16 signext %2, i16 signext %3, i16 signext %4, i16 signext %5, i16 zeroext %6, i32 %7) #0 {
  %9 = alloca %struct.nk_color, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca [4 x %struct.TYPE_4__], align 16
  %18 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  store i32 %7, i32* %18, align 4
  store i16 %0, i16* %10, align 2
  store i16 %1, i16* %11, align 2
  store i16 %2, i16* %12, align 2
  store i16 %3, i16* %13, align 2
  store i16 %4, i16* %14, align 2
  store i16 %5, i16* %15, align 2
  store i16 %6, i16* %16, align 2
  %19 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %17, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i16, i16* %10, align 2
  store i16 %21, i16* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %23 = load i16, i16* %11, align 2
  store i16 %23, i16* %22, align 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i16, i16* %12, align 2
  store i16 %26, i16* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %28 = load i16, i16* %13, align 2
  store i16 %28, i16* %27, align 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i16, i16* %14, align 2
  store i16 %31, i16* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %33 = load i16, i16* %15, align 2
  store i16 %33, i16* %32, align 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i16, i16* %10, align 2
  store i16 %36, i16* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %38 = load i16, i16* %11, align 2
  store i16 %38, i16* %37, align 2
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdip, i32 0, i32 0), align 4
  %40 = load i16, i16* %16, align 2
  %41 = zext i16 %40 to i32
  %42 = call i32 @GdipSetPenWidth(i32 %39, i32 %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdip, i32 0, i32 0), align 4
  %44 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @convert_color(i32 %45)
  %47 = call i32 @GdipSetPenColor(i32 %43, i32 %46)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdip, i32 0, i32 1), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdip, i32 0, i32 0), align 4
  %50 = getelementptr inbounds [4 x %struct.TYPE_4__], [4 x %struct.TYPE_4__]* %17, i64 0, i64 0
  %51 = call i32 @GdipDrawPolygonI(i32 %48, i32 %49, %struct.TYPE_4__* %50, i32 4)
  ret void
}

declare dso_local i32 @GdipSetPenWidth(i32, i32) #1

declare dso_local i32 @GdipSetPenColor(i32, i32) #1

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @GdipDrawPolygonI(i32, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
