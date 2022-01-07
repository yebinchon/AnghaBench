; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_namedict.c_HPDF_NameTree_Add.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_namedict.c_HPDF_NameTree_Add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPDF_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Names\00", align 1
@HPDF_OCLASS_ARRAY = common dso_local global i32 0, align 4
@HPDF_INVALID_OBJECT = common dso_local global i32 0, align 4
@HPDF_OCLASS_STRING = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_NameTree_Add(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* @HPDF_INVALID_PARAMETER, align 4
  store i32 %19, i32* %4, align 4
  br label %92

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @HPDF_OCLASS_ARRAY, align 4
  %23 = call i32 @HPDF_Dict_GetItem(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @HPDF_INVALID_OBJECT, align 4
  store i32 %27, i32* %4, align 4
  br label %92

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @HPDF_Array_Items(i32 %29)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = load i64, i64* %10, align 8
  %36 = sub nsw i64 %35, 2
  %37 = load i32, i32* @HPDF_OCLASS_STRING, align 4
  %38 = call i8* @HPDF_Array_GetItem(i32 %34, i64 %36, i32 %37)
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i64 @HPDF_String_Cmp(i8* %39, i8* %40)
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @HPDF_Array_Add(i32 %44, i8* %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @HPDF_Array_Add(i32 %47, i8* %48)
  %50 = load i32, i32* @HPDF_OK, align 4
  store i32 %50, i32* %4, align 4
  br label %92

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %51, %28
  %53 = load i64, i64* %10, align 8
  %54 = sub nsw i64 %53, 4
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %81, %52
  %56 = load i64, i64* %9, align 8
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = load i64, i64* %9, align 8
  %61 = load i32, i32* @HPDF_OCLASS_STRING, align 4
  %62 = call i8* @HPDF_Array_GetItem(i32 %59, i64 %60, i32 %61)
  store i8* %62, i8** %12, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %58
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = call i64 @HPDF_String_Cmp(i8* %66, i8* %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65, %58
  %71 = load i32, i32* %8, align 4
  %72 = load i8*, i8** %12, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @HPDF_Array_Insert(i32 %71, i8* %72, i8* %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i8*, i8** %12, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 @HPDF_Array_Insert(i32 %75, i8* %76, i8* %77)
  %79 = load i32, i32* @HPDF_OK, align 4
  store i32 %79, i32* %4, align 4
  br label %92

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %9, align 8
  %83 = sub nsw i64 %82, 2
  store i64 %83, i64* %9, align 8
  br label %55

84:                                               ; preds = %55
  %85 = load i32, i32* %8, align 4
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @HPDF_Array_Add(i32 %85, i8* %86)
  %88 = load i32, i32* %8, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @HPDF_Array_Add(i32 %88, i8* %89)
  %91 = load i32, i32* @HPDF_OK, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %84, %70, %43, %26, %18
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @HPDF_Dict_GetItem(i32, i8*, i32) #1

declare dso_local i64 @HPDF_Array_Items(i32) #1

declare dso_local i8* @HPDF_Array_GetItem(i32, i64, i32) #1

declare dso_local i64 @HPDF_String_Cmp(i8*, i8*) #1

declare dso_local i32 @HPDF_Array_Add(i32, i8*) #1

declare dso_local i32 @HPDF_Array_Insert(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
