; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_AddAnnotation.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_AddAnnotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c" HPDF_Pages\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Annots\00", align 1
@HPDF_OCLASS_ARRAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, %struct.TYPE_13__*)* @AddAnnotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AddAnnotation(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %8 = load i64, i64* @HPDF_OK, align 8
  store i64 %8, i64* %7, align 8
  %9 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = load i32, i32* @HPDF_OCLASS_ARRAY, align 4
  %12 = call %struct.TYPE_13__* @HPDF_Dict_GetItem(%struct.TYPE_13__* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %6, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = icmp ne %struct.TYPE_13__* %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_13__* @HPDF_Array_New(i32 %18)
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %6, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = icmp ne %struct.TYPE_13__* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @HPDF_Error_GetCode(i32 %25)
  store i64 %26, i64* %3, align 8
  br label %50

27:                                               ; preds = %15
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = call i64 @HPDF_Dict_Add(%struct.TYPE_13__* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @HPDF_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* %7, align 8
  store i64 %35, i64* %3, align 8
  br label %50

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = call i64 @HPDF_Array_Add(%struct.TYPE_13__* %38, %struct.TYPE_13__* %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* @HPDF_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i64, i64* %7, align 8
  store i64 %44, i64* %3, align 8
  br label %50

45:                                               ; preds = %37
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = call i64 @HPDF_Dict_Add(%struct.TYPE_13__* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_13__* %47)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %45, %43, %34, %22
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_13__* @HPDF_Dict_GetItem(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local %struct.TYPE_13__* @HPDF_Array_New(i32) #1

declare dso_local i64 @HPDF_Error_GetCode(i32) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_13__*, i8*, %struct.TYPE_13__*) #1

declare dso_local i64 @HPDF_Array_Add(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
