; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_cid.c_HPDF_CIDFontDef_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_cid.c_HPDF_CIDFontDef_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32*, %struct.TYPE_13__*, i32, %struct.TYPE_14__*, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c" HPDF_CIDFontDef_New\0A\00", align 1
@HPDF_FONTDEF_SIG_BYTES = common dso_local global i32 0, align 4
@HPDF_LIMIT_MAX_NAME_LEN = common dso_local global i64 0, align 8
@HPDF_FONTDEF_TYPE_UNINITIALIZED = common dso_local global i32 0, align 4
@HPDF_CIDFontDef_FreeFunc = common dso_local global i32 0, align 4
@HPDF_FALSE = common dso_local global i32 0, align 4
@HPDF_DEF_CHAR_WIDTHS_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @HPDF_CIDFontDef_New(%struct.TYPE_13__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = icmp ne %struct.TYPE_13__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %106

14:                                               ; preds = %3
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = call %struct.TYPE_14__* @HPDF_GetMem(%struct.TYPE_13__* %15, i32 4)
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %8, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %18 = icmp ne %struct.TYPE_14__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %106

20:                                               ; preds = %14
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = call i32 @HPDF_MemSet(%struct.TYPE_14__* %21, i32 0, i32 4)
  %23 = load i32, i32* @HPDF_FONTDEF_SIG_BYTES, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 12
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 11
  %28 = load i64, i64* %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 11
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HPDF_LIMIT_MAX_NAME_LEN, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @HPDF_StrCpy(i64 %28, i8* %29, i64 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 3
  store %struct.TYPE_13__* %36, %struct.TYPE_13__** %38, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 10
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @HPDF_FONTDEF_TYPE_UNINITIALIZED, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @HPDF_CIDFontDef_FreeFunc, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @HPDF_FALSE, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = call %struct.TYPE_14__* @HPDF_GetMem(%struct.TYPE_13__* %56, i32 4)
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %9, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = icmp ne %struct.TYPE_14__* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %20
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = call i32 @HPDF_FreeMem(%struct.TYPE_13__* %63, %struct.TYPE_14__* %64)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %106

66:                                               ; preds = %20
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 5
  store %struct.TYPE_14__* %67, %struct.TYPE_14__** %69, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %71 = call i32 @HPDF_MemSet(%struct.TYPE_14__* %70, i32 0, i32 4)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = load i32, i32* @HPDF_DEF_CHAR_WIDTHS_NUM, align 4
  %74 = call i32 @HPDF_List_New(%struct.TYPE_13__* %72, i32 %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %66
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %86 = call i32 @HPDF_FreeMem(%struct.TYPE_13__* %84, %struct.TYPE_14__* %85)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %91 = call i32 @HPDF_FreeMem(%struct.TYPE_13__* %89, %struct.TYPE_14__* %90)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %106

92:                                               ; preds = %66
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  store i32 500, i32* %94, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  store i32 1000, i32* %96, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 880, i32* %100, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 -1000, i32* %104, align 4
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %105, %struct.TYPE_14__** %4, align 8
  br label %106

106:                                              ; preds = %92, %81, %60, %19, %13
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %107
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_14__* @HPDF_GetMem(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @HPDF_MemSet(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @HPDF_StrCpy(i64, i8*, i64) #1

declare dso_local i32 @HPDF_FreeMem(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

declare dso_local i32 @HPDF_List_New(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
