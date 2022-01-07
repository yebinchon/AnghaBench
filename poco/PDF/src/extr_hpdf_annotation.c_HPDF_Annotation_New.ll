; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_annotation.c_HPDF_Annotation_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_annotation.c_HPDF_Annotation_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c" HPDF_Annotation_New\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Rect\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Annot\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Subtype\00", align 1
@HPDF_ANNOT_TYPE_NAMES = common dso_local global i8** null, align 8
@HPDF_OSUBCLASS_ANNOTATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @HPDF_Annotation_New(i32 %0, i32 %1, i64 %2, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  %13 = load i64, i64* @HPDF_OK, align 8
  store i64 %13, i64* %11, align 8
  %14 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.TYPE_12__* @HPDF_Dict_New(i32 %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %9, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %103

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = call i64 @HPDF_Xref_Add(i32 %21, %struct.TYPE_12__* %22)
  %24 = load i64, i64* @HPDF_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %103

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @HPDF_Array_New(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %103

33:                                               ; preds = %27
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @HPDF_Dict_Add(%struct.TYPE_12__* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* @HPDF_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %103

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %46, %40
  %55 = load i32, i32* %10, align 4
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @HPDF_Array_AddReal(i32 %55, i64 %57)
  %59 = load i64, i64* %11, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %11, align 8
  %61 = load i32, i32* %10, align 4
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @HPDF_Array_AddReal(i32 %61, i64 %63)
  %65 = load i64, i64* %11, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %11, align 8
  %67 = load i32, i32* %10, align 4
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @HPDF_Array_AddReal(i32 %67, i64 %69)
  %71 = load i64, i64* %11, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %11, align 8
  %73 = load i32, i32* %10, align 4
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @HPDF_Array_AddReal(i32 %73, i64 %75)
  %77 = load i64, i64* %11, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %11, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = call i64 @HPDF_Dict_AddName(%struct.TYPE_12__* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i64, i64* %11, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %11, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %84 = load i8**, i8*** @HPDF_ANNOT_TYPE_NAMES, align 8
  %85 = load i64, i64* %8, align 8
  %86 = getelementptr inbounds i8*, i8** %84, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @HPDF_Dict_AddName(%struct.TYPE_12__* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  %89 = load i64, i64* %11, align 8
  %90 = add nsw i64 %89, %88
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* @HPDF_OK, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %54
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %103

95:                                               ; preds = %54
  %96 = load i32, i32* @HPDF_OSUBCLASS_ANNOTATION, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %5, align 8
  br label %103

103:                                              ; preds = %95, %94, %39, %32, %26, %19
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %104
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_12__* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @HPDF_Array_New(i32) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i64 @HPDF_Array_AddReal(i32, i64) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_12__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
