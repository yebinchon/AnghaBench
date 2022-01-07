; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_HPDF_Page_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_HPDF_Page_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_18__*, i32, i32, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { %struct.TYPE_16__*, i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c" HPDF_Page_New\0A\00", align 1
@HPDF_OSUBCLASS_PAGE = common dso_local global i32 0, align 4
@Page_OnFree = common dso_local global i32 0, align 4
@Page_BeforeWrite = common dso_local global i32 0, align 4
@HPDF_GMODE_PAGE_DESCRIPTION = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Page\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"MediaBox\00", align 1
@HPDF_DEF_PAGE_WIDTH = common dso_local global i64 0, align 8
@HPDF_DEF_PAGE_HEIGHT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"Contents\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @HPDF_Page_New(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.TYPE_19__* @HPDF_Dict_New(i32 %10)
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %8, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %13 = icmp ne %struct.TYPE_19__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %128

15:                                               ; preds = %2
  %16 = load i32, i32* @HPDF_OSUBCLASS_PAGE, align 4
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %16
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* @Page_OnFree, align 4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @Page_BeforeWrite, align 4
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_18__* @HPDF_GetMem(i32 %30, i32 4)
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %7, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %33 = icmp ne %struct.TYPE_18__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %15
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %36 = call i32 @HPDF_Dict_Free(%struct.TYPE_19__* %35)
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %128

37:                                               ; preds = %15
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %40, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %42 = call i32 @HPDF_MemSet(%struct.TYPE_18__* %41, i32 0, i32 4)
  %43 = load i32, i32* @HPDF_GMODE_PAGE_DESCRIPTION, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = call i8* @HPDF_ToPoint(i32 0, i32 0)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = call i8* @HPDF_ToPoint(i32 0, i32 0)
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %54 = call i64 @HPDF_Xref_Add(i32 %52, %struct.TYPE_19__* %53)
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @HPDF_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %37
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %128

59:                                               ; preds = %37
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @HPDF_GState_New(i32 %62, i32* null)
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call %struct.TYPE_16__* @HPDF_DictStream_New(i32 %68, i32 %69)
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %72, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %59
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = icmp ne %struct.TYPE_16__* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %77, %59
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %128

83:                                               ; preds = %77
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %95 = call i64 @HPDF_Dict_AddName(%struct.TYPE_19__* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i64, i64* %6, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %6, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* @HPDF_DEF_PAGE_WIDTH, align 8
  %103 = trunc i64 %102 to i32
  %104 = load i64, i64* @HPDF_DEF_PAGE_HEIGHT, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @HPDF_ToBox(i32 0, i32 0, i32 %103, i32 %105)
  %107 = call %struct.TYPE_16__* @HPDF_Box_Array_New(i32 %101, i32 %106)
  %108 = call i64 @HPDF_Dict_Add(%struct.TYPE_19__* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_16__* %107)
  %109 = load i64, i64* %6, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %6, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = call i64 @HPDF_Dict_Add(%struct.TYPE_19__* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_16__* %114)
  %116 = load i64, i64* %6, align 8
  %117 = add nsw i64 %116, %115
  store i64 %117, i64* %6, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %119 = call i64 @AddResource(%struct.TYPE_19__* %118)
  %120 = load i64, i64* %6, align 8
  %121 = add nsw i64 %120, %119
  store i64 %121, i64* %6, align 8
  %122 = load i64, i64* %6, align 8
  %123 = load i64, i64* @HPDF_OK, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %83
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %128

126:                                              ; preds = %83
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %127, %struct.TYPE_19__** %3, align 8
  br label %128

128:                                              ; preds = %126, %125, %82, %58, %34, %14
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  ret %struct.TYPE_19__* %129
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_19__* @HPDF_Dict_New(i32) #1

declare dso_local %struct.TYPE_18__* @HPDF_GetMem(i32, i32) #1

declare dso_local i32 @HPDF_Dict_Free(%struct.TYPE_19__*) #1

declare dso_local i32 @HPDF_MemSet(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i8* @HPDF_ToPoint(i32, i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @HPDF_GState_New(i32, i32*) #1

declare dso_local %struct.TYPE_16__* @HPDF_DictStream_New(i32, i32) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_19__*, i8*, i8*) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_19__*, i8*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @HPDF_Box_Array_New(i32, i32) #1

declare dso_local i32 @HPDF_ToBox(i32, i32, i32, i32) #1

declare dso_local i64 @AddResource(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
