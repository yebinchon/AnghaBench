; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcvideo.c_PcVideoPutChar.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcvideo.c_PcVideoPutChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIDEOTEXT_MEM_ADDRESS = common dso_local global i64 0, align 8
@BytesPerScanLine = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PcVideoPutChar(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* @VIDEOTEXT_MEM_ADDRESS, align 8
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @BytesPerScanLine, align 4
  %14 = mul i32 %12, %13
  %15 = zext i32 %14 to i64
  %16 = add nsw i64 %11, %15
  %17 = load i32, i32* %8, align 4
  %18 = mul i32 %17, 2
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = trunc i64 %22 to i32
  %24 = shl i32 %23, 8
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 255
  %27 = or i32 %24, %26
  %28 = load i32*, i32** %10, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
