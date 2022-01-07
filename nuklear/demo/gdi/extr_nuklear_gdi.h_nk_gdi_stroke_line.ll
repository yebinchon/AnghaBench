; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_stroke_line.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_stroke_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_color = type { i32 }

@PS_SOLID = common dso_local global i32 0, align 4
@DC_PEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i16, i16, i16, i32, i32)* @nk_gdi_stroke_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdi_stroke_line(i32 %0, i16 signext %1, i16 signext %2, i16 signext %3, i16 signext %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.nk_color, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  store i32 %6, i32* %17, align 4
  store i32 %0, i32* %9, align 4
  store i16 %1, i16* %10, align 2
  store i16 %2, i16* %11, align 2
  store i16 %3, i16* %12, align 2
  store i16 %4, i16* %13, align 2
  store i32 %5, i32* %14, align 4
  %18 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @convert_color(i32 %19)
  store i32 %20, i32* %15, align 4
  store i32* null, i32** %16, align 8
  %21 = load i32, i32* %14, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %7
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @SetDCPenColor(i32 %24, i32 %25)
  br label %35

27:                                               ; preds = %7
  %28 = load i32, i32* @PS_SOLID, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = call i32* @CreatePen(i32 %28, i32 %29, i32 %30)
  store i32* %31, i32** %16, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %16, align 8
  %34 = call i32 @SelectObject(i32 %32, i32* %33)
  br label %35

35:                                               ; preds = %27, %23
  %36 = load i32, i32* %9, align 4
  %37 = load i16, i16* %10, align 2
  %38 = load i16, i16* %11, align 2
  %39 = call i32 @MoveToEx(i32 %36, i16 signext %37, i16 signext %38, i32* null)
  %40 = load i32, i32* %9, align 4
  %41 = load i16, i16* %12, align 2
  %42 = load i16, i16* %13, align 2
  %43 = call i32 @LineTo(i32 %40, i16 signext %41, i16 signext %42)
  %44 = load i32*, i32** %16, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %35
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @DC_PEN, align 4
  %49 = call i32* @GetStockObject(i32 %48)
  %50 = call i32 @SelectObject(i32 %47, i32* %49)
  %51 = load i32*, i32** %16, align 8
  %52 = call i32 @DeleteObject(i32* %51)
  br label %53

53:                                               ; preds = %46, %35
  ret void
}

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @SetDCPenColor(i32, i32) #1

declare dso_local i32* @CreatePen(i32, i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32*) #1

declare dso_local i32 @MoveToEx(i32, i16 signext, i16 signext, i32*) #1

declare dso_local i32 @LineTo(i32, i16 signext, i16 signext) #1

declare dso_local i32* @GetStockObject(i32) #1

declare dso_local i32 @DeleteObject(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
