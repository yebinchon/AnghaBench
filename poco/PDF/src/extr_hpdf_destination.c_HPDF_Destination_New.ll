; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_destination.c_HPDF_Destination_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_destination.c_HPDF_Destination_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c" HPDF_Destination_New\0A\00", align 1
@HPDF_INVALID_PAGE = common dso_local global i32 0, align 4
@HPDF_OSUBCLASS_DESTINATION = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_DESTINATION_TYPE_NAMES = common dso_local global i32* null, align 8
@HPDF_FIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @HPDF_Destination_New(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @HPDF_Page_Validate(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HPDF_INVALID_PAGE, align 4
  %18 = call i32 @HPDF_SetError(i32 %16, i32 %17, i32 0)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %57

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = call %struct.TYPE_13__* @HPDF_Array_New(%struct.TYPE_12__* %20)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %8, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = icmp ne %struct.TYPE_13__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %57

25:                                               ; preds = %19
  %26 = load i32, i32* @HPDF_OSUBCLASS_DESTINATION, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %34 = call i64 @HPDF_Xref_Add(i32 %32, %struct.TYPE_13__* %33)
  %35 = load i64, i64* @HPDF_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %57

38:                                               ; preds = %25
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @HPDF_Array_Add(%struct.TYPE_13__* %39, i32 %40)
  %42 = load i64, i64* @HPDF_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %57

45:                                               ; preds = %38
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = load i32*, i32** @HPDF_DESTINATION_TYPE_NAMES, align 8
  %48 = load i64, i64* @HPDF_FIT, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @HPDF_Array_AddName(%struct.TYPE_13__* %46, i32 %50)
  %52 = load i64, i64* @HPDF_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %57

55:                                               ; preds = %45
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %4, align 8
  br label %57

57:                                               ; preds = %55, %54, %44, %37, %24, %13
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %58
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_Page_Validate(i32) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @HPDF_Array_New(%struct.TYPE_12__*) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_13__*) #1

declare dso_local i64 @HPDF_Array_Add(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @HPDF_Array_AddName(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
