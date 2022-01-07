; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__bmp_test_raw.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__bmp_test_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @stbi__bmp_test_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__bmp_test_raw(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call signext i8 @stbi__get8(i32* %6)
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 66
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call signext i8 @stbi__get8(i32* %12)
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 77
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %46

17:                                               ; preds = %11
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @stbi__get32le(i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @stbi__get16le(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @stbi__get16le(i32* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @stbi__get32le(i32* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @stbi__get32le(i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 12
  br i1 %29, label %42, label %30

30:                                               ; preds = %17
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 40
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 56
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 108
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 124
  br label %42

42:                                               ; preds = %39, %36, %33, %30, %17
  %43 = phi i1 [ true, %36 ], [ true, %33 ], [ true, %30 ], [ true, %17 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %16, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local signext i8 @stbi__get8(i32*) #1

declare dso_local i32 @stbi__get32le(i32*) #1

declare dso_local i32 @stbi__get16le(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
