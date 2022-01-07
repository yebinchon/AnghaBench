; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gddemo.c_main.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gddemo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"demoin.png\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Can't load source image; this demo\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"is much more impressive if demoin.png\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"is available.\0A\00", align 1
@gdStyledBrushed = common dso_local global i32 0, align 4
@gdFontGiant = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"hi\00", align 1
@gdFontSmall = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"demoout.png\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x %struct.TYPE_3__], align 16
  %12 = alloca [8 x i32], align 16
  store i32 0, i32* %1, align 4
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %13 = call i64 @gdImageCreateTrueColor(i32 256, i32 256)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @gdImageColorAllocate(i64 %14, i32 255, i32 255, i32 255)
  store i32 %15, i32* %7, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @gdImageColorTransparent(i64 %16, i32 %17)
  %19 = call i32* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %2, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %0
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %37

29:                                               ; preds = %0
  %30 = load i32*, i32** %2, align 8
  %31 = call i64 @gdImageCreateFromPng(i32* %30)
  store i64 %31, i64* %4, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @fclose(i32* %32)
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @gdImageCopyResized(i64 %34, i64 %35, i32 32, i32 32, i32 0, i32 0, i32 192, i32 192, i32 255, i32 255)
  br label %37

37:                                               ; preds = %29, %22
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @gdImageColorAllocate(i64 %38, i32 255, i32 0, i32 0)
  store i32 %39, i32* %9, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @gdImageColorAllocate(i64 %40, i32 0, i32 255, i32 0)
  store i32 %41, i32* %10, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @gdImageColorAllocate(i64 %42, i32 0, i32 0, i32 255)
  store i32 %43, i32* %8, align 4
  %44 = load i64, i64* %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @gdImageLine(i64 %44, i32 16, i32 16, i32 240, i32 16, i32 %45)
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @gdImageLine(i64 %47, i32 240, i32 16, i32 240, i32 240, i32 %48)
  %50 = load i64, i64* %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @gdImageLine(i64 %50, i32 240, i32 240, i32 16, i32 240, i32 %51)
  %53 = load i64, i64* %5, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @gdImageLine(i64 %53, i32 16, i32 240, i32 16, i32 16, i32 %54)
  %56 = load i64, i64* %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @gdImageArc(i64 %56, i32 128, i32 128, i32 60, i32 20, i32 0, i32 720, i32 %57)
  %59 = load i64, i64* %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @gdImageArc(i64 %59, i32 128, i32 128, i32 40, i32 40, i32 90, i32 270, i32 %60)
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @gdImageFill(i64 %62, i32 8, i32 8, i32 %63)
  %65 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %11, i64 0, i64 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 64, i32* %66, align 16
  %67 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %11, i64 0, i64 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %11, i64 0, i64 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %11, i64 0, i64 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 128, i32* %72, align 4
  %73 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %11, i64 0, i64 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 128, i32* %74, align 16
  %75 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %11, i64 0, i64 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 128, i32* %76, align 4
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds [3 x %struct.TYPE_3__], [3 x %struct.TYPE_3__]* %11, i64 0, i64 0
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @gdImageFilledPolygon(i64 %77, %struct.TYPE_3__* %78, i32 3, i32 %79)
  %81 = load i64, i64* %4, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %113

83:                                               ; preds = %37
  %84 = call i64 @gdImageCreateTrueColor(i32 16, i32 16)
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @gdImageSX(i64 %87)
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @gdImageSY(i64 %89)
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @gdImageSX(i64 %91)
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @gdImageSY(i64 %93)
  %95 = call i32 @gdImageCopyResized(i64 %85, i64 %86, i32 0, i32 0, i32 0, i32 0, i32 %88, i32 %90, i32 %92, i32 %94)
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @gdImageSetBrush(i64 %96, i64 %97)
  %99 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  store i32 0, i32* %99, align 16
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 1
  store i32 0, i32* %100, align 4
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 2
  store i32 0, i32* %101, align 8
  %102 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3
  store i32 0, i32* %102, align 4
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 4
  store i32 0, i32* %103, align 16
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 5
  store i32 0, i32* %104, align 4
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 6
  store i32 0, i32* %105, align 8
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 7
  store i32 1, i32* %106, align 4
  %107 = load i64, i64* %5, align 8
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %109 = call i32 @gdImageSetStyle(i64 %107, i32* %108, i32 8)
  %110 = load i64, i64* %5, align 8
  %111 = load i32, i32* @gdStyledBrushed, align 4
  %112 = call i32 @gdImageLine(i64 %110, i32 0, i32 255, i32 255, i32 0, i32 %111)
  br label %113

113:                                              ; preds = %83, %37
  %114 = load i64, i64* %5, align 8
  %115 = load i32, i32* @gdFontGiant, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @gdImageString(i64 %114, i32 %115, i32 32, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  %118 = load i64, i64* %5, align 8
  %119 = load i32, i32* @gdFontSmall, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @gdImageStringUp(i64 %118, i32 %119, i32 64, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load i64, i64* %5, align 8
  %123 = call i32 @gdImageInterlace(i64 %122, i32 1)
  %124 = call i32* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %124, i32** %3, align 8
  %125 = load i64, i64* %5, align 8
  %126 = load i32*, i32** %3, align 8
  %127 = call i32 @gdImagePng(i64 %125, i32* %126)
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 @fclose(i32* %128)
  %130 = load i64, i64* %5, align 8
  %131 = call i32 @gdImageDestroy(i64 %130)
  %132 = load i64, i64* %4, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %113
  %135 = load i64, i64* %4, align 8
  %136 = call i32 @gdImageDestroy(i64 %135)
  br label %137

137:                                              ; preds = %134, %113
  ret i32 0
}

declare dso_local i64 @gdImageCreateTrueColor(i32, i32) #1

declare dso_local i32 @gdImageColorAllocate(i64, i32, i32, i32) #1

declare dso_local i32 @gdImageColorTransparent(i64, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @gdImageCreateFromPng(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @gdImageCopyResized(i64, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gdImageLine(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gdImageArc(i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gdImageFill(i64, i32, i32, i32) #1

declare dso_local i32 @gdImageFilledPolygon(i64, %struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @gdImageSX(i64) #1

declare dso_local i32 @gdImageSY(i64) #1

declare dso_local i32 @gdImageSetBrush(i64, i64) #1

declare dso_local i32 @gdImageSetStyle(i64, i32*, i32) #1

declare dso_local i32 @gdImageString(i64, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @gdImageStringUp(i64, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @gdImageInterlace(i64, i32) #1

declare dso_local i32 @gdImagePng(i64, i32*) #1

declare dso_local i32 @gdImageDestroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
