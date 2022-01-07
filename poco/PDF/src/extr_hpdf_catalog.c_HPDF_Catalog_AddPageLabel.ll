; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_catalog.c_HPDF_Catalog_AddPageLabel.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_catalog.c_HPDF_Catalog_AddPageLabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"PageLabels\00", align 1
@HPDF_OCLASS_DICT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c" HPDF_Catalog_AddPageLabel\0A\00", align 1
@HPDF_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Nums\00", align 1
@HPDF_OCLASS_ARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HPDF_Catalog_AddPageLabel(%struct.TYPE_17__* %0, i32 %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %12 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %13 = call %struct.TYPE_17__* @HPDF_Dict_GetItem(%struct.TYPE_17__* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %12)
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %10, align 8
  %14 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %16 = icmp ne %struct.TYPE_17__* %15, null
  br i1 %16, label %39, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_17__* @HPDF_Dict_New(i32 %20)
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %10, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %23 = icmp ne %struct.TYPE_17__* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  br label %79

30:                                               ; preds = %17
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %33 = call i32 @HPDF_Dict_Add(%struct.TYPE_17__* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @HPDF_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %79

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %41 = load i32, i32* @HPDF_OCLASS_ARRAY, align 4
  %42 = call %struct.TYPE_17__* @HPDF_Dict_GetItem(%struct.TYPE_17__* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %9, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %44 = icmp ne %struct.TYPE_17__* %43, null
  br i1 %44, label %67, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_17__* @HPDF_Array_New(i32 %48)
  store %struct.TYPE_17__* %49, %struct.TYPE_17__** %9, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %51 = icmp ne %struct.TYPE_17__* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %4, align 4
  br label %79

58:                                               ; preds = %45
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %61 = call i32 @HPDF_Dict_Add(%struct.TYPE_17__* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_17__* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @HPDF_OK, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %79

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %39
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @HPDF_Array_AddNumber(%struct.TYPE_17__* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @HPDF_OK, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %79

75:                                               ; preds = %67
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %78 = call i32 @HPDF_Array_Add(%struct.TYPE_17__* %76, %struct.TYPE_17__* %77)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %73, %64, %52, %36, %24
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_17__* @HPDF_Dict_GetItem(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_17__* @HPDF_Dict_New(i32) #1

declare dso_local i32 @HPDF_Dict_Add(%struct.TYPE_17__*, i8*, %struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @HPDF_Array_New(i32) #1

declare dso_local i32 @HPDF_Array_AddNumber(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @HPDF_Array_Add(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
