; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_exdata.c_HPDF_3DAnnotExData_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_exdata.c_HPDF_3DAnnotExData_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c" HPDF_ExData_New\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ExData\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"3DM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @HPDF_3DAnnotExData_New(i32 %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @HPDF_OK, align 8
  store i64 %8, i64* %7, align 8
  %9 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %4, align 4
  %11 = call i32* @HPDF_Dict_New(i32 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %37

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @HPDF_Xref_Add(i32 %16, i32* %17)
  %19 = load i64, i64* @HPDF_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32* null, i32** %3, align 8
  br label %37

22:                                               ; preds = %15
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @HPDF_Dict_AddName(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i64, i64* %7, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %7, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @HPDF_Dict_AddName(i32* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @HPDF_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i32* null, i32** %3, align 8
  br label %37

35:                                               ; preds = %22
  %36 = load i32*, i32** %6, align 8
  store i32* %36, i32** %3, align 8
  br label %37

37:                                               ; preds = %35, %34, %21, %14
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, i32*) #1

declare dso_local i64 @HPDF_Dict_AddName(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
