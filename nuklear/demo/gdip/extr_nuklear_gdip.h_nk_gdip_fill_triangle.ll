; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_fill_triangle.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_fill_triangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.nk_color = type { i32 }
%struct.TYPE_4__ = type { i16, i16 }

@gdip = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@FillModeAlternate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i16, i16, i16, i16, i16, i32)* @nk_gdip_fill_triangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdip_fill_triangle(i16 signext %0, i16 signext %1, i16 signext %2, i16 signext %3, i16 signext %4, i16 signext %5, i32 %6) #0 {
  %8 = alloca %struct.nk_color, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca [3 x %struct.TYPE_4__], align 2
  %16 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  store i32 %6, i32* %16, align 4
  store i16 %0, i16* %9, align 2
  store i16 %1, i16* %10, align 2
  store i16 %2, i16* %11, align 2
  store i16 %3, i16* %12, align 2
  store i16 %4, i16* %13, align 2
  store i16 %5, i16* %14, align 2
  %17 = getelementptr inbounds [3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* %15, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i16, i16* %9, align 2
  store i16 %19, i16* %18, align 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %21 = load i16, i16* %10, align 2
  store i16 %21, i16* %20, align 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i16, i16* %11, align 2
  store i16 %24, i16* %23, align 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %26 = load i16, i16* %12, align 2
  store i16 %26, i16* %25, align 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i16, i16* %13, align 2
  store i16 %29, i16* %28, align 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %31 = load i16, i16* %14, align 2
  store i16 %31, i16* %30, align 2
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdip, i32 0, i32 0), align 4
  %33 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @convert_color(i32 %34)
  %36 = call i32 @GdipSetSolidFillColor(i32 %32, i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdip, i32 0, i32 1), align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdip, i32 0, i32 0), align 4
  %39 = getelementptr inbounds [3 x %struct.TYPE_4__], [3 x %struct.TYPE_4__]* %15, i64 0, i64 0
  %40 = load i32, i32* @FillModeAlternate, align 4
  %41 = call i32 @GdipFillPolygonI(i32 %37, i32 %38, %struct.TYPE_4__* %39, i32 3, i32 %40)
  ret void
}

declare dso_local i32 @GdipSetSolidFillColor(i32, i32) #1

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @GdipFillPolygonI(i32, i32, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
