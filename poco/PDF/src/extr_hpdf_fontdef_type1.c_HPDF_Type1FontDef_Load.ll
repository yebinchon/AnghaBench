; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_type1.c_HPDF_Type1FontDef_Load.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_type1.c_HPDF_Type1FontDef_Load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c" HPDF_Type1FontDef_Load\0A\00", align 1
@HPDF_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @HPDF_Type1FontDef_Load(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %46

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32* @HPDF_Type1FontDef_New(i32 %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32* null, i32** %4, align 8
  br label %46

20:                                               ; preds = %14
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @LoadAfm(i32* %21, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @HPDF_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @HPDF_FontDef_Free(i32* %28)
  store i32* null, i32** %4, align 8
  br label %46

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @LoadFontData(i32* %34, i32 %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @HPDF_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @HPDF_FontDef_Free(i32* %41)
  store i32* null, i32** %4, align 8
  br label %46

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %30
  %45 = load i32*, i32** %8, align 8
  store i32* %45, i32** %4, align 8
  br label %46

46:                                               ; preds = %44, %40, %27, %19, %13
  %47 = load i32*, i32** %4, align 8
  ret i32* %47
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32* @HPDF_Type1FontDef_New(i32) #1

declare dso_local i64 @LoadAfm(i32*, i32) #1

declare dso_local i32 @HPDF_FontDef_Free(i32*) #1

declare dso_local i64 @LoadFontData(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
