; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__tga_test.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__tga_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @stbi__tga_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__tga_test(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @stbi__get8(i32* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @stbi__get8(i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @stbi__get8(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 3
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 9
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 10
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 11
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %74

34:                                               ; preds = %30, %27, %24, %21, %18, %13
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @stbi__get16be(i32* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @stbi__get16be(i32* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @stbi__get8(i32* %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @stbi__get16be(i32* %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @stbi__get16be(i32* %43)
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @stbi__get16be(i32* %45)
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %74

49:                                               ; preds = %34
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @stbi__get16be(i32* %50)
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %74

54:                                               ; preds = %49
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @stbi__get8(i32* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 8
  br i1 %58, label %59, label %69

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 16
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 24
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 32
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %70

69:                                               ; preds = %65, %62, %59, %54
  store i32 1, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %68
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @stbi__rewind(i32* %71)
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %53, %48, %33, %12
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @stbi__get8(i32*) #1

declare dso_local i32 @stbi__get16be(i32*) #1

declare dso_local i32 @stbi__rewind(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
