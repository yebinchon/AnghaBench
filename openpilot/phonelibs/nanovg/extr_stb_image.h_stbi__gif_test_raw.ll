; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__gif_test_raw.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__gif_test_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @stbi__gif_test_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__gif_test_raw(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call signext i8 @stbi__get8(i32* %5)
  %7 = sext i8 %6 to i32
  %8 = icmp ne i32 %7, 71
  br i1 %8, label %24, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call signext i8 @stbi__get8(i32* %10)
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 73
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = load i32*, i32** %3, align 8
  %16 = call signext i8 @stbi__get8(i32* %15)
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 70
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i32*, i32** %3, align 8
  %21 = call signext i8 @stbi__get8(i32* %20)
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 56
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %14, %9, %1
  store i32 0, i32* %2, align 4
  br label %42

25:                                               ; preds = %19
  %26 = load i32*, i32** %3, align 8
  %27 = call signext i8 @stbi__get8(i32* %26)
  %28 = sext i8 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 57
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 55
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %42

35:                                               ; preds = %31, %25
  %36 = load i32*, i32** %3, align 8
  %37 = call signext i8 @stbi__get8(i32* %36)
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 97
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %42

41:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %40, %34, %24
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local signext i8 @stbi__get8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
