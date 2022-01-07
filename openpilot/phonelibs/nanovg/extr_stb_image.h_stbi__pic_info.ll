; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__pic_info.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__pic_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"S\80\F64\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @stbi__pic_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__pic_info(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [10 x %struct.TYPE_2__], align 16
  %14 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @stbi__pic_is4(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @stbi__rewind(i32* %19)
  store i32 0, i32* %5, align 4
  br label %110

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @stbi__skip(i32* %22, i32 88)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @stbi__get16be(i32* %24)
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @stbi__get16be(i32* %27)
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @stbi__at_eof(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @stbi__rewind(i32* %34)
  store i32 0, i32* %5, align 4
  br label %110

36:                                               ; preds = %21
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 268435456, %42
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @stbi__rewind(i32* %48)
  store i32 0, i32* %5, align 4
  br label %110

50:                                               ; preds = %40, %36
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @stbi__skip(i32* %51, i32 8)
  br label %53

53:                                               ; preds = %100, %50
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp eq i64 %55, 10
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %110

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds [10 x %struct.TYPE_2__], [10 x %struct.TYPE_2__]* %13, i64 0, i64 %61
  store %struct.TYPE_2__* %62, %struct.TYPE_2__** %14, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i8* @stbi__get8(i32* %63)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %12, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = call i8* @stbi__get8(i32* %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = call i8* @stbi__get8(i32* %71)
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i8* @stbi__get8(i32* %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = call i64 @stbi__at_eof(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %58
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @stbi__rewind(i32* %89)
  store i32 0, i32* %5, align 4
  br label %110

91:                                               ; preds = %58
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 8
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32*, i32** %6, align 8
  %98 = call i32 @stbi__rewind(i32* %97)
  store i32 0, i32* %5, align 4
  br label %110

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %53, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %104, 16
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 4, i32 3
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  store i32 1, i32* %5, align 4
  br label %110

110:                                              ; preds = %103, %96, %88, %57, %47, %33, %18
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @stbi__pic_is4(i32*, i8*) #1

declare dso_local i32 @stbi__rewind(i32*) #1

declare dso_local i32 @stbi__skip(i32*, i32) #1

declare dso_local i32 @stbi__get16be(i32*) #1

declare dso_local i64 @stbi__at_eof(i32*) #1

declare dso_local i8* @stbi__get8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
