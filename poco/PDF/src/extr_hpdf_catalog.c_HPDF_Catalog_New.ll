; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_catalog.c_HPDF_Catalog_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_catalog.c_HPDF_Catalog_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@HPDF_OSUBCLASS_CATALOG = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Catalog\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Pages\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @HPDF_Catalog_New(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %7, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.TYPE_9__* @HPDF_Dict_New(i32 %8)
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %6, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %44

13:                                               ; preds = %2
  %14 = load i32, i32* @HPDF_OSUBCLASS_CATALOG, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %14
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %22 = call i64 @HPDF_Xref_Add(i32 %20, %struct.TYPE_9__* %21)
  %23 = load i64, i64* @HPDF_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %44

26:                                               ; preds = %13
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = call i64 @HPDF_Dict_AddName(%struct.TYPE_9__* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %7, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @HPDF_Pages_New(i32 %32, i32* null, i32 %33)
  %35 = call i64 @HPDF_Dict_Add(%struct.TYPE_9__* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @HPDF_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %26
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %44

42:                                               ; preds = %26
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %3, align 8
  br label %44

44:                                               ; preds = %42, %41, %25, %12
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %45
}

declare dso_local %struct.TYPE_9__* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_9__*) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @HPDF_Pages_New(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
