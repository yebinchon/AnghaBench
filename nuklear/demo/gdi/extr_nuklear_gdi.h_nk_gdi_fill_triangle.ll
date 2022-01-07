; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_fill_triangle.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_fill_triangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_color = type { i32 }
%struct.TYPE_3__ = type { i16, i16 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i16, i16, i16, i16, i16, i32)* @nk_gdi_fill_triangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdi_fill_triangle(i32 %0, i16 signext %1, i16 signext %2, i16 signext %3, i16 signext %4, i16 signext %5, i16 signext %6, i32 %7) #0 {
  %9 = alloca %struct.nk_color, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca [3 x %struct.TYPE_3__], align 2
  %19 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  store i32 %7, i32* %19, align 4
  store i32 %0, i32* %10, align 4
  store i16 %1, i16* %11, align 2
  store i16 %2, i16* %12, align 2
  store i16 %3, i16* %13, align 2
  store i16 %4, i16* %14, align 2
  store i16 %5, i16* %15, align 2
  store i16 %6, i16* %16, align 2
  %20 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %9, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @convert_color(i32 %21)
  store i32 %22, i32* %17, align 4
  %23 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %18, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i16, i16* %11, align 2
  store i16 %25, i16* %24, align 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %27 = load i16, i16* %12, align 2
  store i16 %27, i16* %26, align 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i16, i16* %13, align 2
  store i16 %30, i16* %29, align 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %32 = load i16, i16* %14, align 2
  store i16 %32, i16* %31, align 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i16, i16* %15, align 2
  store i16 %35, i16* %34, align 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %37 = load i16, i16* %16, align 2
  store i16 %37, i16* %36, align 2
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @SetDCPenColor(i32 %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @SetDCBrushColor(i32 %41, i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %18, i64 0, i64 0
  %46 = call i32 @Polygon(i32 %44, %struct.TYPE_3__* %45, i32 3)
  ret void
}

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @SetDCPenColor(i32, i32) #1

declare dso_local i32 @SetDCBrushColor(i32, i32) #1

declare dso_local i32 @Polygon(i32, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
