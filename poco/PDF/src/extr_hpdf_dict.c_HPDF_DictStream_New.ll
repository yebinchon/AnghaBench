; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_dict.c_HPDF_DictStream_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_dict.c_HPDF_DictStream_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@HPDF_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@HPDF_STREAM_BUF_SIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @HPDF_DictStream_New(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_9__* @HPDF_Dict_New(i32 %9)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %59

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = call i64 @HPDF_Xref_Add(i32 %15, %struct.TYPE_9__* %16)
  %18 = load i64, i64* %8, align 8
  %19 = add nsw i64 %18, %17
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @HPDF_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %59

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = call %struct.TYPE_9__* @HPDF_Number_New(i32 %25, i32 0)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %7, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = icmp ne %struct.TYPE_9__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %59

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = call i64 @HPDF_Xref_Add(i32 %31, %struct.TYPE_9__* %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @HPDF_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %59

38:                                               ; preds = %30
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = call i64 @HPDF_Dict_Add(%struct.TYPE_9__* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @HPDF_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %59

46:                                               ; preds = %38
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @HPDF_STREAM_BUF_SIZ, align 4
  %49 = call i32 @HPDF_MemStream_New(i32 %47, i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %59

57:                                               ; preds = %46
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %3, align 8
  br label %59

59:                                               ; preds = %57, %56, %45, %37, %29, %23, %13
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %60
}

declare dso_local %struct.TYPE_9__* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @HPDF_Number_New(i32, i32) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_9__*, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @HPDF_MemStream_New(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
