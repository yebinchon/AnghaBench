; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryOutputErr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_dirread.c_TIFFReadDirEntryOutputErr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Incorrect count for \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Incompatible type for \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"IO error during reading of \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Incorrect value for \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Cannot handle different values per sample for \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Sanity check on size of \22%s\22 value failed\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Out of memory reading of \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Incorrect count for \22%s\22; tag ignored\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Incompatible type for \22%s\22; tag ignored\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"IO error during reading of \22%s\22; tag ignored\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Incorrect value for \22%s\22; tag ignored\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"Cannot handle different values per sample for \22%s\22; tag ignored\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"Sanity check on size of \22%s\22 value failed; tag ignored\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"Out of memory reading of \22%s\22; tag ignored\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i8*, i8*, i32)* @TIFFReadDirEntryOutputErr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TIFFReadDirEntryOutputErr(%struct.TYPE_3__* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %67, label %13

13:                                               ; preds = %5
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %64 [
    i32 133, label %15
    i32 128, label %22
    i32 132, label %29
    i32 130, label %36
    i32 131, label %43
    i32 129, label %50
    i32 134, label %57
  ]

15:                                               ; preds = %13
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @TIFFErrorExt(i32 %18, i8* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %66

22:                                               ; preds = %13
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @TIFFErrorExt(i32 %25, i8* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %66

29:                                               ; preds = %13
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @TIFFErrorExt(i32 %32, i8* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  br label %66

36:                                               ; preds = %13
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @TIFFErrorExt(i32 %39, i8* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  br label %66

43:                                               ; preds = %13
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @TIFFErrorExt(i32 %46, i8* %47, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8* %48)
  br label %66

50:                                               ; preds = %13
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @TIFFErrorExt(i32 %53, i8* %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %55)
  br label %66

57:                                               ; preds = %13
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @TIFFErrorExt(i32 %60, i8* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %62)
  br label %66

64:                                               ; preds = %13
  %65 = call i32 @assert(i32 0)
  br label %66

66:                                               ; preds = %64, %57, %50, %43, %36, %29, %22, %15
  br label %121

67:                                               ; preds = %5
  %68 = load i32, i32* %7, align 4
  switch i32 %68, label %118 [
    i32 133, label %69
    i32 128, label %76
    i32 132, label %83
    i32 130, label %90
    i32 131, label %97
    i32 129, label %104
    i32 134, label %111
  ]

69:                                               ; preds = %67
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @TIFFWarningExt(i32 %72, i8* %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8* %74)
  br label %120

76:                                               ; preds = %67
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @TIFFWarningExt(i32 %79, i8* %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* %81)
  br label %120

83:                                               ; preds = %67
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @TIFFWarningExt(i32 %86, i8* %87, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i8* %88)
  br label %120

90:                                               ; preds = %67
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @TIFFWarningExt(i32 %93, i8* %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* %95)
  br label %120

97:                                               ; preds = %67
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %8, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @TIFFWarningExt(i32 %100, i8* %101, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0), i8* %102)
  br label %120

104:                                              ; preds = %67
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %8, align 8
  %109 = load i8*, i8** %9, align 8
  %110 = call i32 @TIFFWarningExt(i32 %107, i8* %108, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i8* %109)
  br label %120

111:                                              ; preds = %67
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** %8, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = call i32 @TIFFWarningExt(i32 %114, i8* %115, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i8* %116)
  br label %120

118:                                              ; preds = %67
  %119 = call i32 @assert(i32 0)
  br label %120

120:                                              ; preds = %118, %111, %104, %97, %90, %83, %76, %69
  br label %121

121:                                              ; preds = %120, %66
  ret void
}

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TIFFWarningExt(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
