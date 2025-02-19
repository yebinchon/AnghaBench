; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_AddResource.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_AddResource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c" HPDF_Page_AddResource\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Resources\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ProcSet\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"PDF\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ImageB\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ImageC\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ImageI\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AddResource(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load i64, i64* @HPDF_OK, align 8
  store i64 %7, i64* %4, align 8
  %8 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_10__* @HPDF_Dict_New(i32 %11)
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @HPDF_Error_GetCode(i32 %18)
  store i64 %19, i64* %2, align 8
  br label %99

20:                                               ; preds = %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = call i64 @HPDF_Dict_Add(%struct.TYPE_10__* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %22)
  %24 = load i64, i64* %4, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* %4, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_10__* @HPDF_Array_New(i32 %28)
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %6, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = icmp ne %struct.TYPE_10__* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %20
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @HPDF_Error_GetCode(i32 %35)
  store i64 %36, i64* %2, align 8
  br label %99

37:                                               ; preds = %20
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = call i64 @HPDF_Dict_Add(%struct.TYPE_10__* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %39)
  %41 = load i64, i64* @HPDF_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @HPDF_Error_GetCode(i32 %46)
  store i64 %47, i64* %2, align 8
  br label %99

48:                                               ; preds = %37
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @HPDF_Name_New(i32 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %54 = call i64 @HPDF_Array_Add(%struct.TYPE_10__* %49, i32 %53)
  %55 = load i64, i64* %4, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %4, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @HPDF_Name_New(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %62 = call i64 @HPDF_Array_Add(%struct.TYPE_10__* %57, i32 %61)
  %63 = load i64, i64* %4, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %4, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @HPDF_Name_New(i32 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %70 = call i64 @HPDF_Array_Add(%struct.TYPE_10__* %65, i32 %69)
  %71 = load i64, i64* %4, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %4, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @HPDF_Name_New(i32 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %78 = call i64 @HPDF_Array_Add(%struct.TYPE_10__* %73, i32 %77)
  %79 = load i64, i64* %4, align 8
  %80 = add nsw i64 %79, %78
  store i64 %80, i64* %4, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @HPDF_Name_New(i32 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %86 = call i64 @HPDF_Array_Add(%struct.TYPE_10__* %81, i32 %85)
  %87 = load i64, i64* %4, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %4, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @HPDF_OK, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %48
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @HPDF_Error_GetCode(i32 %95)
  store i64 %96, i64* %2, align 8
  br label %99

97:                                               ; preds = %48
  %98 = load i64, i64* @HPDF_OK, align 8
  store i64 %98, i64* %2, align 8
  br label %99

99:                                               ; preds = %97, %92, %43, %32, %15
  %100 = load i64, i64* %2, align 8
  ret i64 %100
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_10__* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_10__*, i8*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @HPDF_Array_New(i32) #1

declare dso_local i64 @HPDF_Array_Add(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @HPDF_Name_New(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
