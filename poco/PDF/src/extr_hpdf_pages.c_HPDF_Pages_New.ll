; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_HPDF_Pages_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_HPDF_Pages_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c" HPDF_Pages_New\0A\00", align 1
@HPDF_OSUBCLASS_PAGES = common dso_local global i32 0, align 4
@Pages_BeforeWrite = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Pages\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Kids\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Count\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @HPDF_Pages_New(i32 %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @HPDF_OK, align 8
  store i64 %10, i64* %8, align 8
  %11 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.TYPE_12__* @HPDF_Dict_New(i32 %12)
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %9, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %73

17:                                               ; preds = %3
  %18 = load i32, i32* @HPDF_OSUBCLASS_PAGES, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %18
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @Pages_BeforeWrite, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %29 = call i64 @HPDF_Xref_Add(i32 %27, %struct.TYPE_12__* %28)
  %30 = load i64, i64* @HPDF_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %73

33:                                               ; preds = %17
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %35 = call i64 @HPDF_Dict_AddName(%struct.TYPE_12__* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %8, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @HPDF_Array_New(i32 %41)
  %43 = call i64 @HPDF_Dict_Add(%struct.TYPE_12__* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load i64, i64* %8, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %8, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @HPDF_Number_New(i32 %49, i32 0)
  %51 = call i64 @HPDF_Dict_Add(%struct.TYPE_12__* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load i64, i64* %8, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @HPDF_OK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %33
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = icmp ne %struct.TYPE_12__* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %63 = call i64 @HPDF_Pages_AddKids(%struct.TYPE_12__* %61, %struct.TYPE_12__* %62)
  %64 = load i64, i64* %8, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %60, %57, %33
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @HPDF_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %73

71:                                               ; preds = %66
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %4, align 8
  br label %73

73:                                               ; preds = %71, %70, %32, %16
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %74
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_12__* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @HPDF_Array_New(i32) #1

declare dso_local i32 @HPDF_Number_New(i32, i32) #1

declare dso_local i64 @HPDF_Pages_AddKids(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
