; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_fill_circle.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_fill_circle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_color = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i16, i16, i16, i32)* @nk_gdi_fill_circle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdi_fill_circle(i32 %0, i16 signext %1, i16 signext %2, i16 zeroext %3, i16 zeroext %4, i32 %5) #0 {
  %7 = alloca %struct.nk_color, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %7, i32 0, i32 0
  store i32 %5, i32* %14, align 4
  store i32 %0, i32* %8, align 4
  store i16 %1, i16* %9, align 2
  store i16 %2, i16* %10, align 2
  store i16 %3, i16* %11, align 2
  store i16 %4, i16* %12, align 2
  %15 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %7, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @convert_color(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @SetDCBrushColor(i32 %18, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @SetDCPenColor(i32 %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i16, i16* %9, align 2
  %26 = load i16, i16* %10, align 2
  %27 = load i16, i16* %9, align 2
  %28 = sext i16 %27 to i32
  %29 = load i16, i16* %11, align 2
  %30 = zext i16 %29 to i32
  %31 = add nsw i32 %28, %30
  %32 = trunc i32 %31 to i16
  %33 = load i16, i16* %10, align 2
  %34 = sext i16 %33 to i32
  %35 = load i16, i16* %12, align 2
  %36 = zext i16 %35 to i32
  %37 = add nsw i32 %34, %36
  %38 = trunc i32 %37 to i16
  %39 = call i32 @Ellipse(i32 %24, i16 signext %25, i16 signext %26, i16 signext %32, i16 signext %38)
  ret void
}

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @SetDCBrushColor(i32, i32) #1

declare dso_local i32 @SetDCPenColor(i32, i32) #1

declare dso_local i32 @Ellipse(i32, i16 signext, i16 signext, i16 signext, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
