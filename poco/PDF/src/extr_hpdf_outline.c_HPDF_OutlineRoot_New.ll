; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_outline.c_HPDF_OutlineRoot_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_outline.c_HPDF_OutlineRoot_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c" HPDF_OutlineRoot_New\0A\00", align 1
@BeforeWrite = common dso_local global i32 0, align 4
@HPDF_OUTLINE_OPENED = common dso_local global i32 0, align 4
@HPDF_OTYPE_HIDDEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"_OPENED\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Outlines\00", align 1
@HPDF_OSUBCLASS_OUTLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @HPDF_OutlineRoot_New(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i64, i64* @HPDF_OK, align 8
  store i64 %9, i64* %7, align 8
  %10 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.TYPE_14__* @HPDF_Dict_New(i32 %11)
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %6, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %14 = icmp ne %struct.TYPE_14__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %61

16:                                               ; preds = %2
  %17 = load i32, i32* @BeforeWrite, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = call i64 @HPDF_Xref_Add(i32 %20, %struct.TYPE_14__* %21)
  %23 = load i64, i64* @HPDF_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %61

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @HPDF_OUTLINE_OPENED, align 4
  %29 = call %struct.TYPE_15__* @HPDF_Number_New(i32 %27, i32 %28)
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %8, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %31 = icmp ne %struct.TYPE_15__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %61

33:                                               ; preds = %26
  %34 = load i32, i32* @HPDF_OTYPE_HIDDEN, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %42 = call i64 @HPDF_Dict_Add(%struct.TYPE_14__* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_15__* %41)
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = call i64 @HPDF_Dict_AddName(%struct.TYPE_14__* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i64, i64* %7, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @HPDF_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %61

53:                                               ; preds = %33
  %54 = load i32, i32* @HPDF_OSUBCLASS_OUTLINE, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %3, align 8
  br label %61

61:                                               ; preds = %53, %52, %32, %25, %15
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %62
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local %struct.TYPE_14__* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @HPDF_Number_New(i32, i32) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_14__*, i8*, %struct.TYPE_15__*) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_14__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
