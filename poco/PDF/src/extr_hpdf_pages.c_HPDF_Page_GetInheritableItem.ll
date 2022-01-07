; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_HPDF_Page_GetInheritableItem.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_HPDF_Page_GetInheritableItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@HPDF_FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c" HPDF_Page_GetInheritableItem\0A\00", align 1
@HPDF_INHERITABLE_ENTRIES = common dso_local global i64* null, align 8
@HPDF_TRUE = common dso_local global i64 0, align 8
@HPDF_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Parent\00", align 1
@HPDF_OCLASS_DICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @HPDF_Page_GetInheritableItem(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* @HPDF_FALSE, align 8
  store i64 %12, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %13 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %30, %3
  %15 = load i64*, i64** @HPDF_INHERITABLE_ENTRIES, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = load i64*, i64** @HPDF_INHERITABLE_ENTRIES, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @HPDF_StrCmp(i8* %21, i64 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i64, i64* @HPDF_TRUE, align 8
  store i64 %29, i64* %8, align 8
  br label %33

30:                                               ; preds = %20
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %9, align 8
  br label %14

33:                                               ; preds = %28, %14
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @HPDF_TRUE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HPDF_INVALID_PARAMETER, align 4
  %42 = call i32 @HPDF_SetError(i32 %40, i32 %41, i32 0)
  store i8* null, i8** %4, align 8
  br label %74

43:                                               ; preds = %33
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i8* @HPDF_Dict_GetItem(%struct.TYPE_5__* %44, i8* %45, i32 %46)
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %72, label %50

50:                                               ; preds = %43
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %52 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %53 = call i8* @HPDF_Dict_GetItem(%struct.TYPE_5__* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = bitcast i8* %53 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %11, align 8
  br label %55

55:                                               ; preds = %66, %50
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %57 = icmp ne %struct.TYPE_5__* %56, null
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i8* @HPDF_Dict_GetItem(%struct.TYPE_5__* %59, i8* %60, i32 %61)
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %71

66:                                               ; preds = %58
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %68 = load i32, i32* @HPDF_OCLASS_DICT, align 4
  %69 = call i8* @HPDF_Dict_GetItem(%struct.TYPE_5__* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = bitcast i8* %69 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %11, align 8
  br label %55

71:                                               ; preds = %65, %55
  br label %72

72:                                               ; preds = %71, %43
  %73 = load i8*, i8** %10, align 8
  store i8* %73, i8** %4, align 8
  br label %74

74:                                               ; preds = %72, %37
  %75 = load i8*, i8** %4, align 8
  ret i8* %75
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_StrCmp(i8*, i64) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i8* @HPDF_Dict_GetItem(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
