; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pdfa.c_HPDF_PDFA_AppendOutputIntents.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pdfa.c_HPDF_PDFA_AppendOutputIntents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32, i32 }

@HPDF_INVALID_DOCUMENT = common dso_local global i64 0, align 8
@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"OutputIntent\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"GTS_PDFA1\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"OutputConditionIdentifier\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"OutputCondition\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"DestOutputProfile \00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"OutputIntents\00", align 1
@HPDF_OCLASS_ARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HPDF_PDFA_AppendOutputIntents(%struct.TYPE_4__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = call i32 @HPDF_HasDoc(%struct.TYPE_4__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* @HPDF_INVALID_DOCUMENT, align 8
  store i64 %16, i64* %4, align 8
  br label %122

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @HPDF_Dict_New(i32 %20)
  store i32* %21, i32** %9, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i64 @HPDF_Xref_Add(i32 %24, i32* %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @HPDF_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @HPDF_Dict_Free(i32* %31)
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %4, align 8
  br label %122

34:                                               ; preds = %17
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @HPDF_Dict_AddName(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i64, i64* %10, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %10, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @HPDF_Dict_AddName(i32* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i64, i64* %10, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %10, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32* @HPDF_String_New(i32 %46, i8* %47, i32* null)
  %49 = call i64 @HPDF_Dict_Add(i32* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32* %48)
  %50 = load i64, i64* %10, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %10, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32* @HPDF_String_New(i32 %55, i8* %56, i32* null)
  %58 = call i64 @HPDF_Dict_Add(i32* %52, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* %57)
  %59 = load i64, i64* %10, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %10, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call i32* @HPDF_String_New(i32 %64, i8* %65, i32* null)
  %67 = call i64 @HPDF_Dict_Add(i32* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %66)
  %68 = load i64, i64* %10, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %10, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i64 @HPDF_Dict_Add(i32* %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32* %71)
  %73 = load i64, i64* %10, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* @HPDF_OK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %34
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @HPDF_Dict_Free(i32* %79)
  %81 = load i64, i64* %10, align 8
  store i64 %81, i64* %4, align 8
  br label %122

82:                                               ; preds = %34
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* @HPDF_OCLASS_ARRAY, align 4
  %87 = call i32* @HPDF_Dict_GetItem(i32* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  store i32* %87, i32** %8, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %115

90:                                               ; preds = %82
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32* @HPDF_Array_New(i32 %93)
  store i32* %94, i32** %8, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %114

97:                                               ; preds = %90
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = call i64 @HPDF_Dict_Add(i32* %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32* %101)
  store i64 %102, i64* %11, align 8
  %103 = load i64, i64* %11, align 8
  %104 = load i64, i64* @HPDF_OK, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %97
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = call i32 @HPDF_CheckError(i32* %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = call i64 @HPDF_Error_GetDetailCode(i32* %111)
  store i64 %112, i64* %4, align 8
  br label %122

113:                                              ; preds = %97
  br label %114

114:                                              ; preds = %113, %90
  br label %115

115:                                              ; preds = %114, %82
  %116 = load i32*, i32** %8, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @HPDF_Array_Add(i32* %116, i32* %117)
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = call i64 @HPDF_Error_GetDetailCode(i32* %120)
  store i64 %121, i64* %4, align 8
  br label %122

122:                                              ; preds = %115, %106, %78, %30, %15
  %123 = load i64, i64* %4, align 8
  ret i64 %123
}

declare dso_local i32 @HPDF_HasDoc(%struct.TYPE_4__*) #1

declare dso_local i32* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, i32*) #1

declare dso_local i32 @HPDF_Dict_Free(i32*) #1

declare dso_local i64 @HPDF_Dict_AddName(i32*, i8*, i8*) #1

declare dso_local i64 @HPDF_Dict_Add(i32*, i8*, i32*) #1

declare dso_local i32* @HPDF_String_New(i32, i8*, i32*) #1

declare dso_local i32* @HPDF_Dict_GetItem(i32*, i8*, i32) #1

declare dso_local i32* @HPDF_Array_New(i32) #1

declare dso_local i32 @HPDF_CheckError(i32*) #1

declare dso_local i64 @HPDF_Error_GetDetailCode(i32*) #1

declare dso_local i32 @HPDF_Array_Add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
