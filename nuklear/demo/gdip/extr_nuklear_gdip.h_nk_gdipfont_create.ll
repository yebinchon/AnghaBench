; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdipfont_create.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdipfont_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@CP_UTF8 = common dso_local global i32 0, align 4
@FontStyleRegular = common dso_local global i32 0, align 4
@UnitPixel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @nk_gdipfont_create(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i64 @calloc(i32 1, i32 4)
  %10 = inttoptr i64 %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %5, align 8
  %11 = load i32, i32* @CP_UTF8, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @MultiByteToWideChar(i32 %11, i32 0, i8* %12, i32 -1, i64* null, i32 0)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i64 @_alloca(i32 %18)
  %20 = inttoptr i64 %19 to i64*
  store i64* %20, i64** %8, align 8
  %21 = load i32, i32* @CP_UTF8, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @MultiByteToWideChar(i32 %21, i32 0, i8* %22, i32 -1, i64* %23, i32 %24)
  %26 = load i64*, i64** %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64 0, i64* %29, align 8
  %30 = load i64*, i64** %8, align 8
  %31 = call i32 @GdipCreateFontFamilyFromName(i64* %30, i32* null, i32** %6)
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @FontStyleRegular, align 4
  %35 = load i32, i32* @UnitPixel, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @GdipCreateFont(i32* %32, i32 %33, i32 %34, i32 %35, i32* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @GdipDeleteFontFamily(i32* %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  ret %struct.TYPE_3__* %41
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i64*, i32) #1

declare dso_local i64 @_alloca(i32) #1

declare dso_local i32 @GdipCreateFontFamilyFromName(i64*, i32*, i32**) #1

declare dso_local i32 @GdipCreateFont(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @GdipDeleteFontFamily(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
