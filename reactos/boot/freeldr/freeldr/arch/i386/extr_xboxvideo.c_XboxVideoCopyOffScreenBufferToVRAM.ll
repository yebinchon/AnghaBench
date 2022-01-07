; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_xboxvideo.c_XboxVideoCopyOffScreenBufferToVRAM.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_xboxvideo.c_XboxVideoCopyOffScreenBufferToVRAM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ScreenHeight = common dso_local global i32 0, align 4
@TOP_BOTTOM_LINES = common dso_local global i32 0, align 4
@CHAR_HEIGHT = common dso_local global i32 0, align 4
@ScreenWidth = common dso_local global i32 0, align 4
@CHAR_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XboxVideoCopyOffScreenBufferToVRAM(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %42, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ScreenHeight, align 4
  %13 = load i32, i32* @TOP_BOTTOM_LINES, align 4
  %14 = mul nsw i32 2, %13
  %15 = sub nsw i32 %12, %14
  %16 = load i32, i32* @CHAR_HEIGHT, align 4
  %17 = sdiv i32 %15, %16
  %18 = icmp slt i32 %11, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ScreenWidth, align 4
  %23 = load i32, i32* @CHAR_WIDTH, align 4
  %24 = sdiv i32 %22, %23
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @XboxVideoPutChar(i32 %29, i32 %32, i32 %33, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32* %37, i32** %4, align 8
  br label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %20

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %10

45:                                               ; preds = %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @XboxVideoPutChar(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
