; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_MemStream_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_MemStream_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_11__*, %struct.TYPE_12__*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c" HPDF_MemStream_New\0A\00", align 1
@HPDF_DEF_ITEMS_PER_BLOCK = common dso_local global i32 0, align 4
@HPDF_STREAM_SIG_BYTES = common dso_local global i32 0, align 4
@HPDF_STREAM_MEMORY = common dso_local global i32 0, align 4
@HPDF_STREAM_BUF_SIZ = common dso_local global i64 0, align 8
@HPDF_MemStream_WriteFunc = common dso_local global i32 0, align 4
@HPDF_MemStream_ReadFunc = common dso_local global i32 0, align 4
@HPDF_MemStream_SeekFunc = common dso_local global i32 0, align 4
@HPDF_MemStream_TellFunc = common dso_local global i32 0, align 4
@HPDF_MemStream_SizeFunc = common dso_local global i32 0, align 4
@HPDF_MemStream_FreeFunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @HPDF_MemStream_New(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = call i64 @HPDF_GetMem(%struct.TYPE_12__* %9, i32 4)
  %11 = inttoptr i64 %10 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %6, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %96

14:                                               ; preds = %2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = call i64 @HPDF_GetMem(%struct.TYPE_12__* %15, i32 4)
  %17 = inttoptr i64 %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %7, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = call i32 @HPDF_FreeMem(%struct.TYPE_12__* %21, %struct.TYPE_11__* %22)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %98

24:                                               ; preds = %14
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = call i32 @HPDF_MemSet(%struct.TYPE_11__* %25, i32 0, i32 4)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = call i32 @HPDF_MemSet(%struct.TYPE_11__* %27, i32 0, i32 4)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = load i32, i32* @HPDF_DEF_ITEMS_PER_BLOCK, align 4
  %31 = call i32 @HPDF_List_New(%struct.TYPE_12__* %29, i32 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 13
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 13
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %24
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %41 = call i32 @HPDF_FreeMem(%struct.TYPE_12__* %39, %struct.TYPE_11__* %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = call i32 @HPDF_FreeMem(%struct.TYPE_12__* %42, %struct.TYPE_11__* %43)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %98

45:                                               ; preds = %24
  %46 = load i32, i32* @HPDF_STREAM_SIG_BYTES, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 12
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @HPDF_STREAM_MEMORY, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 11
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 10
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 9
  store %struct.TYPE_12__* %57, %struct.TYPE_12__** %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 8
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %62, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %45
  %66 = load i64, i64* %5, align 8
  br label %69

67:                                               ; preds = %45
  %68 = load i64, i64* @HPDF_STREAM_BUF_SIZ, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i64 [ %66, %65 ], [ %68, %67 ]
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 6
  store i64 %70, i64* %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 7
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* @HPDF_MemStream_WriteFunc, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @HPDF_MemStream_ReadFunc, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @HPDF_MemStream_SeekFunc, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @HPDF_MemStream_TellFunc, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @HPDF_MemStream_SizeFunc, align 4
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @HPDF_MemStream_FreeFunc, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %69, %2
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %3, align 8
  br label %98

98:                                               ; preds = %96, %38, %20
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %99
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i64 @HPDF_GetMem(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @HPDF_FreeMem(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @HPDF_MemSet(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @HPDF_List_New(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
