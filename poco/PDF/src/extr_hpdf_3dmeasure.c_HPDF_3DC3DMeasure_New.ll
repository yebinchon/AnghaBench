; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_3dmeasure.c_HPDF_3DC3DMeasure_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_3dmeasure.c_HPDF_3DC3DMeasure_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c" HPDF_3DC3DMeasure_New\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"3DMeasure\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"3DC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @HPDF_3DC3DMeasure_New(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i64, i64* @HPDF_OK, align 8
  store i64 %12, i64* %11, align 8
  %13 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  %15 = call i32* @HPDF_Dict_New(i32 %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %51

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = call i64 @HPDF_Xref_Add(i32 %20, i32* %21)
  %23 = load i64, i64* @HPDF_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32* null, i32** %5, align 8
  br label %51

26:                                               ; preds = %19
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @HPDF_Dict_AddPoint3D(i32* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i64, i64* %11, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %11, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @HPDF_Dict_AddPoint3D(i32* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i64, i64* %11, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %11, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i64 @HPDF_Dict_AddName(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i64, i64* %11, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %11, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i64 @HPDF_Dict_AddName(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %43 = load i64, i64* %11, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @HPDF_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %26
  store i32* null, i32** %5, align 8
  br label %51

49:                                               ; preds = %26
  %50 = load i32*, i32** %10, align 8
  store i32* %50, i32** %5, align 8
  br label %51

51:                                               ; preds = %49, %48, %25, %18
  %52 = load i32*, i32** %5, align 8
  ret i32* %52
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, i32*) #1

declare dso_local i64 @HPDF_Dict_AddPoint3D(i32*, i8*, i32) #1

declare dso_local i64 @HPDF_Dict_AddName(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
