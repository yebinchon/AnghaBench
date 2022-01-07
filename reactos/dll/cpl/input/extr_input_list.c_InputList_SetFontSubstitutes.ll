; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/input/extr_input_list.c_InputList_SetFontSubstitutes.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/input/extr_input_list.c_InputList_SetFontSubstitutes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LatinFonts = common dso_local global i32* null, align 8
@CyrillicFonts = common dso_local global i32* null, align 8
@GreekFonts = common dso_local global i32* null, align 8
@HebrewFonts = common dso_local global i32* null, align 8
@ChineseSimplifiedFonts = common dso_local global i32* null, align 8
@ChineseTraditionalFonts = common dso_local global i32* null, align 8
@JapaneseFonts = common dso_local global i32* null, align 8
@KoreanFonts = common dso_local global i32* null, align 8
@UnicodeFonts = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InputList_SetFontSubstitutes(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @LANGIDFROMLCID(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @PRIMARYLANGID(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @SUBLANGID(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %15 [
    i32 160, label %17
    i32 159, label %17
    i32 157, label %17
    i32 148, label %17
    i32 143, label %17
    i32 141, label %17
    i32 139, label %17
    i32 136, label %17
    i32 134, label %17
    i32 153, label %19
    i32 151, label %21
    i32 156, label %23
    i32 149, label %32
    i32 146, label %34
    i32 162, label %36
    i32 161, label %36
    i32 158, label %36
    i32 155, label %36
    i32 154, label %36
    i32 152, label %36
    i32 150, label %36
    i32 147, label %36
    i32 145, label %36
    i32 144, label %36
    i32 142, label %36
    i32 140, label %36
    i32 138, label %36
    i32 137, label %36
    i32 135, label %36
    i32 133, label %36
  ]

15:                                               ; preds = %1
  %16 = load i32*, i32** @LatinFonts, align 8
  store i32* %16, i32** %4, align 8
  br label %38

17:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  %18 = load i32*, i32** @CyrillicFonts, align 8
  store i32* %18, i32** %4, align 8
  br label %38

19:                                               ; preds = %1
  %20 = load i32*, i32** @GreekFonts, align 8
  store i32* %20, i32** %4, align 8
  br label %38

21:                                               ; preds = %1
  %22 = load i32*, i32** @HebrewFonts, align 8
  store i32* %22, i32** %4, align 8
  br label %38

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %29 [
    i32 130, label %25
    i32 129, label %25
    i32 131, label %25
    i32 128, label %27
    i32 132, label %27
  ]

25:                                               ; preds = %23, %23, %23
  %26 = load i32*, i32** @ChineseSimplifiedFonts, align 8
  store i32* %26, i32** %4, align 8
  br label %31

27:                                               ; preds = %23, %23
  %28 = load i32*, i32** @ChineseTraditionalFonts, align 8
  store i32* %28, i32** %4, align 8
  br label %31

29:                                               ; preds = %23
  store i32* null, i32** %4, align 8
  %30 = call i32 (...) @DebugBreak()
  br label %31

31:                                               ; preds = %29, %27, %25
  br label %38

32:                                               ; preds = %1
  %33 = load i32*, i32** @JapaneseFonts, align 8
  store i32* %33, i32** %4, align 8
  br label %38

34:                                               ; preds = %1
  %35 = load i32*, i32** @KoreanFonts, align 8
  store i32* %35, i32** %4, align 8
  br label %38

36:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %37 = load i32*, i32** @UnicodeFonts, align 8
  store i32* %37, i32** %4, align 8
  br label %38

38:                                               ; preds = %36, %34, %32, %31, %21, %19, %17, %15
  %39 = load i32*, i32** %4, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @UpdateRegistryForFontSubstitutes(i32* %42)
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %2, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @LANGIDFROMLCID(i32) #1

declare dso_local i32 @PRIMARYLANGID(i32) #1

declare dso_local i32 @SUBLANGID(i32) #1

declare dso_local i32 @DebugBreak(...) #1

declare dso_local i32 @UpdateRegistryForFontSubstitutes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
