; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_namedict.c_HPDF_EmbeddedFile_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_namedict.c_HPDF_EmbeddedFile_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64 }

@HPDF_OK = common dso_local global i64 0, align 8
@HPDF_STREAM_FILTER_FLATE_DECODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"EF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @HPDF_EmbeddedFile_New(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i64, i64* @HPDF_OK, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.TYPE_12__* @HPDF_Dict_New(i32 %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %9, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %90

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = call i64 @HPDF_Xref_Add(i32 %21, %struct.TYPE_12__* %22)
  %24 = load i64, i64* @HPDF_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %90

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.TYPE_12__* @HPDF_DictStream_New(i32 %28, i32 %29)
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %12, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %32 = icmp ne %struct.TYPE_12__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %90

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @HPDF_FileReader_New(i32 %35, i8* %36)
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %90

41:                                               ; preds = %34
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @HPDF_Stream_Free(i64 %44)
  %46 = load i64, i64* %13, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* @HPDF_STREAM_FILTER_FLATE_DECODE, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call %struct.TYPE_12__* @HPDF_Dict_New(i32 %52)
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %11, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %55 = icmp ne %struct.TYPE_12__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %41
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %90

57:                                               ; preds = %41
  %58 = load i32, i32* %5, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = call %struct.TYPE_12__* @HPDF_String_New(i32 %58, i8* %59, i32* null)
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %10, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %62 = icmp ne %struct.TYPE_12__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %90

64:                                               ; preds = %57
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %66 = call i64 @HPDF_Dict_AddName(%struct.TYPE_12__* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i64, i64* %8, align 8
  %68 = add nsw i64 %67, %66
  store i64 %68, i64* %8, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %71 = call i64 @HPDF_Dict_Add(%struct.TYPE_12__* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %70)
  %72 = load i64, i64* %8, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %8, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %76 = call i64 @HPDF_Dict_Add(%struct.TYPE_12__* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_12__* %75)
  %77 = load i64, i64* %8, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %8, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %81 = call i64 @HPDF_Dict_Add(%struct.TYPE_12__* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %80)
  %82 = load i64, i64* %8, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @HPDF_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %64
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %90

88:                                               ; preds = %64
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %4, align 8
  br label %90

90:                                               ; preds = %88, %87, %63, %56, %40, %33, %26, %19
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %91
}

declare dso_local %struct.TYPE_12__* @HPDF_Dict_New(i32) #1

declare dso_local i64 @HPDF_Xref_Add(i32, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @HPDF_DictStream_New(i32, i32) #1

declare dso_local i64 @HPDF_FileReader_New(i32, i8*) #1

declare dso_local i32 @HPDF_Stream_Free(i64) #1

declare dso_local %struct.TYPE_12__* @HPDF_String_New(i32, i8*, i32*) #1

declare dso_local i64 @HPDF_Dict_AddName(%struct.TYPE_12__*, i8*, i8*) #1

declare dso_local i64 @HPDF_Dict_Add(%struct.TYPE_12__*, i8*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
