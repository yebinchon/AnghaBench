; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_HPDF_Page_GetMediaBox.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_pages.c_HPDF_Page_GetMediaBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c" HPDF_Page_GetMediaBox\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"MediaBox\00", align 1
@HPDF_OCLASS_ARRAY = common dso_local global i32 0, align 4
@HPDF_OCLASS_REAL = common dso_local global i32 0, align 4
@HPDF_PAGE_CANNOT_FIND_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HPDF_Page_GetMediaBox(%struct.TYPE_11__* noalias sret %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %3, align 8
  %6 = bitcast %struct.TYPE_11__* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 32, i1 false)
  %7 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %9 = call i64 @HPDF_Page_Validate(%struct.TYPE_10__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %73

11:                                               ; preds = %2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = load i32, i32* @HPDF_OCLASS_ARRAY, align 4
  %14 = call i64 @HPDF_Page_GetInheritableItem(%struct.TYPE_10__* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %66

17:                                               ; preds = %11
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* @HPDF_OCLASS_REAL, align 4
  %20 = call %struct.TYPE_9__* @HPDF_Array_GetItem(i64 %18, i32 0, i32 %19)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %5, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %17
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* @HPDF_OCLASS_REAL, align 4
  %31 = call %struct.TYPE_9__* @HPDF_Array_GetItem(i64 %29, i32 1, i32 %30)
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %5, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %28
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* @HPDF_OCLASS_REAL, align 4
  %42 = call %struct.TYPE_9__* @HPDF_Array_GetItem(i64 %40, i32 2, i32 %41)
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %5, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %39
  %51 = load i64, i64* %4, align 8
  %52 = load i32, i32* @HPDF_OCLASS_REAL, align 4
  %53 = call %struct.TYPE_9__* @HPDF_Array_GetItem(i64 %51, i32 3, i32 %52)
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %5, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %50
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @HPDF_CheckError(i32 %64)
  br label %72

66:                                               ; preds = %11
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @HPDF_PAGE_CANNOT_FIND_OBJECT, align 4
  %71 = call i32 @HPDF_RaiseError(i32 %69, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %66, %61
  br label %73

73:                                               ; preds = %72, %2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @HPDF_PTRACE(i8*) #2

declare dso_local i64 @HPDF_Page_Validate(%struct.TYPE_10__*) #2

declare dso_local i64 @HPDF_Page_GetInheritableItem(%struct.TYPE_10__*, i8*, i32) #2

declare dso_local %struct.TYPE_9__* @HPDF_Array_GetItem(i64, i32, i32) #2

declare dso_local i32 @HPDF_CheckError(i32) #2

declare dso_local i32 @HPDF_RaiseError(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
