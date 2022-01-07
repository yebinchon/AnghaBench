; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_FileWriter_New.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_streams.c_HPDF_FileWriter_New.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c" HPDF_FileWriter_New\0A\00", align 1
@HPDF_FILE_OPEN_ERROR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@HPDF_STREAM_SIG_BYTES = common dso_local global i32 0, align 4
@HPDF_FileWriter_WriteFunc = common dso_local global i32 0, align 4
@HPDF_FileStream_FreeFunc = common dso_local global i32 0, align 4
@HPDF_FileStream_TellFunc = common dso_local global i32 0, align 4
@HPDF_STREAM_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @HPDF_FileWriter_New(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @HPDF_FOPEN(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %9, i64* %7, align 8
  %10 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HPDF_FILE_OPEN_ERROR, align 4
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @HPDF_SetError(i32 %16, i32 %17, i32 %18)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = call i64 @HPDF_GetMem(%struct.TYPE_8__* %21, i32 4)
  %23 = inttoptr i64 %22 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %6, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = icmp ne %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %55

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = call i32 @HPDF_MemSet(%struct.TYPE_7__* %27, i32 0, i32 4)
  %29 = load i32, i32* @HPDF_STREAM_SIG_BYTES, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 5
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %39, align 8
  %40 = load i32, i32* @HPDF_FileWriter_WriteFunc, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @HPDF_FileStream_FreeFunc, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @HPDF_FileStream_TellFunc, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* @HPDF_STREAM_FILE, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %26, %20
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %3, align 8
  br label %57

57:                                               ; preds = %55, %13
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %58
}

declare dso_local i64 @HPDF_FOPEN(i8*, i8*) #1

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_SetError(i32, i32, i32) #1

declare dso_local i64 @HPDF_GetMem(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @HPDF_MemSet(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
