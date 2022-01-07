; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__tga_info.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__tga_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @stbi__tga_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__tga_info(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @stbi__get8(i32* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @stbi__get8(i32* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @stbi__rewind(i32* %21)
  store i32 0, i32* %5, align 4
  br label %100

23:                                               ; preds = %4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @stbi__get8(i32* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 3
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 9
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 10
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 11
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %100

44:                                               ; preds = %40, %37, %34, %31, %28, %23
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @stbi__skip(i32* %45, i32 9)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @stbi__get16le(i32* %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @stbi__rewind(i32* %52)
  store i32 0, i32* %5, align 4
  br label %100

54:                                               ; preds = %44
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @stbi__get16le(i32* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @stbi__rewind(i32* %60)
  store i32 0, i32* %5, align 4
  br label %100

62:                                               ; preds = %54
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @stbi__get8(i32* %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 8
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 16
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 24
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 32
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @stbi__rewind(i32* %77)
  store i32 0, i32* %5, align 4
  br label %100

79:                                               ; preds = %73, %70, %67, %62
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %12, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %79
  %87 = load i32*, i32** %8, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %11, align 4
  %91 = load i32*, i32** %8, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32*, i32** %9, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %12, align 4
  %97 = sdiv i32 %96, 8
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %92
  store i32 1, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %76, %59, %51, %43, %20
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @stbi__get8(i32*) #1

declare dso_local i32 @stbi__rewind(i32*) #1

declare dso_local i32 @stbi__skip(i32*, i32) #1

declare dso_local i32 @stbi__get16le(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
