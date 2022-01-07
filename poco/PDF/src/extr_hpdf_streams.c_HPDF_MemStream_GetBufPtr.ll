; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_MemStream_GetBufPtr.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_MemStream_GetBufPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c" HPDF_MemStream_GetBufPtr\0A\00", align 1
@HPDF_STREAM_MEMORY = common dso_local global i64 0, align 8
@HPDF_INVALID_OBJECT = common dso_local global i32 0, align 4
@HPDF_INVALID_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @HPDF_MemStream_GetBufPtr(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HPDF_STREAM_MEMORY, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @HPDF_INVALID_OBJECT, align 4
  %21 = call i32 @HPDF_SetError(i32 %19, i32 %20, i32 0)
  store i32* null, i32** %4, align 8
  br label %63

22:                                               ; preds = %3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %9, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @HPDF_List_ItemAt(%struct.TYPE_7__* %29, i32 %30)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %22
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @HPDF_INVALID_PARAMETER, align 4
  %40 = call i32 @HPDF_SetError(i32 %38, i32 %39, i32 0)
  %41 = load i32*, i32** %7, align 8
  store i32 0, i32* %41, align 4
  store i32* null, i32** %4, align 8
  br label %63

42:                                               ; preds = %22
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  br label %59

55:                                               ; preds = %42
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %54, %51 ], [ %58, %55 ]
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %8, align 8
  store i32* %62, i32** %4, align 8
  br label %63

63:                                               ; preds = %59, %35, %16
  %64 = load i32*, i32** %4, align 8
  ret i32* %64
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i64 @HPDF_List_ItemAt(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
