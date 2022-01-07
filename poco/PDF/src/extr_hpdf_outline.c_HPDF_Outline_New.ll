; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_outline.c_HPDF_Outline_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_outline.c_HPDF_Outline_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c" HPDF_Outline_New\0A\00", align 1
@BeforeWrite = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"Title\00", align 1
@HPDF_OUTLINE_OPENED = common dso_local global i32 0, align 4
@HPDF_OTYPE_HIDDEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"_OPENED\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Outlines\00", align 1
@HPDF_OSUBCLASS_OUTLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @HPDF_Outline_New(i32 %0, %struct.TYPE_20__* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i64, i64* @HPDF_OK, align 8
  store i64 %16, i64* %14, align 8
  %17 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %22 = icmp ne %struct.TYPE_20__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %20, %5
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  br label %97

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.TYPE_20__* @HPDF_Dict_New(i32 %28)
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %12, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %31 = icmp ne %struct.TYPE_20__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  br label %97

33:                                               ; preds = %27
  %34 = load i32, i32* @BeforeWrite, align 4
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %39 = call i64 @HPDF_Xref_Add(i32 %37, %struct.TYPE_20__* %38)
  %40 = load i64, i64* @HPDF_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  br label %97

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call %struct.TYPE_19__* @HPDF_String_New(i32 %44, i8* %45, i32 %46)
  store %struct.TYPE_19__* %47, %struct.TYPE_19__** %13, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %49 = icmp ne %struct.TYPE_19__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  br label %97

51:                                               ; preds = %43
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %54 = call i64 @HPDF_Dict_Add(%struct.TYPE_20__* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_19__* %53)
  %55 = load i64, i64* %14, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %14, align 8
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @HPDF_OUTLINE_OPENED, align 4
  %60 = call %struct.TYPE_19__* @HPDF_Number_New(i32 %58, i32 %59)
  store %struct.TYPE_19__* %60, %struct.TYPE_19__** %15, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %62 = icmp ne %struct.TYPE_19__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  br label %97

64:                                               ; preds = %57
  %65 = load i32, i32* @HPDF_OTYPE_HIDDEN, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %65
  store i32 %70, i32* %68, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %73 = call i64 @HPDF_Dict_Add(%struct.TYPE_20__* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_19__* %72)
  %74 = load i64, i64* %14, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %14, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %77 = call i64 @HPDF_Dict_AddName(%struct.TYPE_20__* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i64, i64* %14, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %14, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %82 = call i64 @AddChild(%struct.TYPE_20__* %80, %struct.TYPE_20__* %81)
  %83 = load i64, i64* %14, align 8
  %84 = add nsw i64 %83, %82
  store i64 %84, i64* %14, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* @HPDF_OK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %64
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %6, align 8
  br label %97

89:                                               ; preds = %64
  %90 = load i32, i32* @HPDF_OSUBCLASS_OUTLINE, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %96, %struct.TYPE_20__** %6, align 8
  br label %97

97:                                               ; preds = %89, %88, %63, %50, %42, %32, %26
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  ret %struct.TYPE_20__* %98
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_20__* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @HPDF_String_New(i32, i8*, i32) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_20__*, i8*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @HPDF_Number_New(i32, i32) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_20__*, i8*, i8*) #1

declare dso_local i64 @AddChild(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
