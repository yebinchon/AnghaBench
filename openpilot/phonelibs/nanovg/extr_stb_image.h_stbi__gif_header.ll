; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__gif_header.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__gif_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8, i8, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"not GIF\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Corrupt GIF\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stbi__g_failure_reason = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*, i32)* @stbi__gif_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__gif_header(i32* %0, %struct.TYPE_3__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = call signext i8 @stbi__get8(i32* %11)
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 71
  br i1 %14, label %30, label %15

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = call signext i8 @stbi__get8(i32* %16)
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 73
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load i32*, i32** %6, align 8
  %22 = call signext i8 @stbi__get8(i32* %21)
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 70
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = call signext i8 @stbi__get8(i32* %26)
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 56
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %20, %15, %4
  %31 = call i32 @stbi__err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %5, align 4
  br label %102

32:                                               ; preds = %25
  %33 = load i32*, i32** %6, align 8
  %34 = call signext i8 @stbi__get8(i32* %33)
  store i8 %34, i8* %10, align 1
  %35 = load i8, i8* %10, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 55
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i8, i8* %10, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 57
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @stbi__err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %43, i32* %5, align 4
  br label %102

44:                                               ; preds = %38, %32
  %45 = load i32*, i32** %6, align 8
  %46 = call signext i8 @stbi__get8(i32* %45)
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 97
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @stbi__err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %50, i32* %5, align 4
  br label %102

51:                                               ; preds = %44
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** @stbi__g_failure_reason, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = call i8* @stbi__get16le(i32* %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i8* @stbi__get16le(i32* %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call signext i8 @stbi__get8(i32* %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i8 %61, i8* %63, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = call signext i8 @stbi__get8(i32* %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i8 %65, i8* %67, align 1
  %68 = load i32*, i32** %6, align 8
  %69 = call signext i8 @stbi__get8(i32* %68)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i8 %69, i8* %71, align 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  store i32 -1, i32* %73, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %51
  %77 = load i32*, i32** %8, align 8
  store i32 4, i32* %77, align 4
  br label %78

78:                                               ; preds = %76, %51
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 1, i32* %5, align 4
  br label %102

82:                                               ; preds = %78
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i8, i8* %84, align 8
  %86 = sext i8 %85 to i32
  %87 = and i32 %86, 128
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %82
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i8, i8* %95, align 8
  %97 = sext i8 %96 to i32
  %98 = and i32 %97, 7
  %99 = shl i32 2, %98
  %100 = call i32 @stbi__gif_parse_colortable(i32* %90, i32 %93, i32 %99, i32 -1)
  br label %101

101:                                              ; preds = %89, %82
  store i32 1, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %81, %49, %42, %30
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local signext i8 @stbi__get8(i32*) #1

declare dso_local i32 @stbi__err(i8*, i8*) #1

declare dso_local i8* @stbi__get16le(i32*) #1

declare dso_local i32 @stbi__gif_parse_colortable(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
