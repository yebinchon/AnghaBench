; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdipfont_create_from_collection.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdipfont_create_from_collection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@FontStyleRegular = common dso_local global i32 0, align 4
@UnitPixel = common dso_local global i32 0, align 4
@gdip = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @nk_gdipfont_create_from_collection(i32 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  %7 = call i64 @calloc(i32 1, i32 4)
  %8 = inttoptr i64 %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %6, align 8
  %9 = call i32 (...) @nk_gdip_getCurFontCollection()
  %10 = call i64 @GdipGetFontCollectionFamilyCount(i32 %9, i32* %5)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %51

13:                                               ; preds = %1
  %14 = call i64 @calloc(i32 1, i32 8)
  %15 = inttoptr i64 %14 to i32**
  store i32** %15, i32*** %4, align 8
  %16 = load i32**, i32*** %4, align 8
  %17 = icmp ne i32** %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %51

19:                                               ; preds = %13
  %20 = call i32 (...) @nk_gdip_getCurFontCollection()
  %21 = load i32, i32* %5, align 4
  %22 = load i32**, i32*** %4, align 8
  %23 = call i64 @GdipGetFontCollectionFamilyList(i32 %20, i32 %21, i32** %22, i32* %5)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %51

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %51

30:                                               ; preds = %26
  %31 = load i32**, i32*** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %31, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @FontStyleRegular, align 4
  %39 = load i32, i32* @UnitPixel, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i64 @GdipCreateFont(i32* %36, i32 %37, i32 %38, i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %51

45:                                               ; preds = %30
  %46 = load i32**, i32*** %4, align 8
  %47 = call i32 @free(i32** %46)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdip, i32 0, i32 0), align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gdip, i32 0, i32 0), align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %2, align 8
  br label %51

51:                                               ; preds = %45, %44, %29, %25, %18, %12
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %52
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @GdipGetFontCollectionFamilyCount(i32, i32*) #1

declare dso_local i32 @nk_gdip_getCurFontCollection(...) #1

declare dso_local i64 @GdipGetFontCollectionFamilyList(i32, i32, i32**, i32*) #1

declare dso_local i64 @GdipCreateFont(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
