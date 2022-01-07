; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__pnm_test.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__pnm_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @stbi__pnm_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__pnm_test(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @stbi__get8(i32* %6)
  %8 = trunc i64 %7 to i8
  store i8 %8, i8* %4, align 1
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @stbi__get8(i32* %9)
  %11 = trunc i64 %10 to i8
  store i8 %11, i8* %5, align 1
  %12 = load i8, i8* %4, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 80
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load i8, i8* %5, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 53
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i8, i8* %5, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 54
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %1
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @stbi__rewind(i32* %24)
  store i32 0, i32* %2, align 4
  br label %27

26:                                               ; preds = %19, %15
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @stbi__get8(i32*) #1

declare dso_local i32 @stbi__rewind(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
