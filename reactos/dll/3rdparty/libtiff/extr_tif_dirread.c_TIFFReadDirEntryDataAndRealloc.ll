; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryDataAndRealloc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryDataAndRealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@TIFFReadDirEntryErrIo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Failed to allocate memory for %s (%ld elements of %ld bytes each)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"TIFFReadDirEntryArray\00", align 1
@TIFFReadDirEntryErrAlloc = common dso_local global i32 0, align 4
@TIFFReadDirEntryErrOk = common dso_local global i32 0, align 4
@INITIAL_THRESHOLD = common dso_local global i64 0, align 8
@MAX_THRESHOLD = common dso_local global i64 0, align 8
@THRESHOLD_MULTIPLIER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i64, i8**)* @TIFFReadDirEntryDataAndRealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TIFFReadDirEntryDataAndRealloc(%struct.TYPE_6__* %0, i32 %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = call i32 @isMapped(%struct.TYPE_6__* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @SeekOK(%struct.TYPE_6__* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @TIFFReadDirEntryErrIo, align 4
  store i32 %25, i32* %5, align 4
  br label %78

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %75, %26
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %76

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = sub nsw i64 %32, %33
  store i64 %34, i64* %13, align 8
  %35 = load i8**, i8*** %9, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %13, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i64 @_TIFFrealloc(i8* %36, i64 %39)
  %41 = inttoptr i64 %40 to i32*
  %42 = bitcast i32* %41 to i8*
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %31
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %13, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @TIFFErrorExt(i32 %48, i32 %51, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 1, i64 %54)
  %56 = load i32, i32* @TIFFReadDirEntryErrAlloc, align 4
  store i32 %56, i32* %5, align 4
  br label %78

57:                                               ; preds = %31
  %58 = load i8*, i8** %11, align 8
  %59 = load i8**, i8*** %9, align 8
  store i8* %58, i8** %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = load i8**, i8*** %9, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i64, i64* %13, align 8
  %66 = call i64 @TIFFReadFile(%struct.TYPE_6__* %60, i8* %64, i64 %65)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %10, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %13, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %57
  %74 = load i32, i32* @TIFFReadDirEntryErrIo, align 4
  store i32 %74, i32* %5, align 4
  br label %78

75:                                               ; preds = %57
  br label %27

76:                                               ; preds = %27
  %77 = load i32, i32* @TIFFReadDirEntryErrOk, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %76, %73, %45, %24
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @isMapped(%struct.TYPE_6__*) #1

declare dso_local i32 @SeekOK(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @_TIFFrealloc(i8*, i64) #1

declare dso_local i32 @TIFFErrorExt(i32, i32, i8*, i8*, i64, i64) #1

declare dso_local i64 @TIFFReadFile(%struct.TYPE_6__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
