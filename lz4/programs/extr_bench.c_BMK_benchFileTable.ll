; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_bench.c_BMK_benchFileTable.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_bench.c_BMK_benchFileTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"not enough memory for fileSizes\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@LZ4_MAX_INPUT_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [65 x i8] c"File(s) bigger than LZ4's max input size; testing %u MB only...\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Not enough memory; testing %u MB only...\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" %u files\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32, i32, i32, i8*, i32)* @BMK_benchFileTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BMK_benchFileTable(i8** %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [20 x i8], align 16
  %18 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = call i8* @malloc(i64 %21)
  %23 = bitcast i8* %22 to i64*
  store i64* %23, i64** %15, align 8
  %24 = load i8**, i8*** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @UTIL_getTotalFileSize(i8** %24, i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = bitcast [20 x i8]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 20, i1 false)
  %28 = load i64*, i64** %15, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %6
  %31 = call i32 @EXM_THROW(i32 12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %6
  %33 = load i32, i32* %16, align 4
  %34 = mul nsw i32 %33, 3
  %35 = call i32 @BMK_findMaxMem(i32 %34)
  %36 = sdiv i32 %35, 3
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = call i32 @EXM_THROW(i32 12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %32
  %43 = load i64, i64* %14, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %16, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %14, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* @LZ4_MAX_INPUT_SIZE, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i64, i64* @LZ4_MAX_INPUT_SIZE, align 8
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %14, align 8
  %57 = lshr i64 %56, 20
  %58 = trunc i64 %57 to i32
  %59 = call i32 @DISPLAY(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %71

60:                                               ; preds = %50
  %61 = load i64, i64* %14, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i64, i64* %14, align 8
  %67 = lshr i64 %66, 20
  %68 = trunc i64 %67 to i32
  %69 = call i32 @DISPLAY(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %70, %54
  %72 = load i64, i64* %14, align 8
  %73 = load i64, i64* %14, align 8
  %74 = icmp ne i64 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  %78 = add i64 %72, %77
  %79 = call i8* @malloc(i64 %78)
  store i8* %79, i8** %13, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %71
  %83 = call i32 @EXM_THROW(i32 12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %71
  %85 = load i8*, i8** %13, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load i64*, i64** %15, align 8
  %88 = load i8**, i8*** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @BMK_loadFiles(i8* %85, i64 %86, i64* %87, i8** %88, i32 %89)
  %91 = getelementptr inbounds [20 x i8], [20 x i8]* %17, i64 0, i64 0
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @snprintf(i8* %91, i32 20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %8, align 4
  %95 = icmp ugt i32 %94, 1
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = getelementptr inbounds [20 x i8], [20 x i8]* %17, i64 0, i64 0
  br label %102

98:                                               ; preds = %84
  %99 = load i8**, i8*** %7, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  br label %102

102:                                              ; preds = %98, %96
  %103 = phi i8* [ %97, %96 ], [ %101, %98 ]
  store i8* %103, i8** %18, align 8
  %104 = load i8*, i8** %13, align 8
  %105 = load i64, i64* %14, align 8
  %106 = load i8*, i8** %18, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i64*, i64** %15, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i8*, i8** %11, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @BMK_benchCLevel(i8* %104, i64 %105, i8* %106, i32 %107, i32 %108, i64* %109, i32 %110, i8* %111, i32 %112)
  %114 = load i8*, i8** %13, align 8
  %115 = bitcast i8* %114 to i64*
  %116 = call i32 @free(i64* %115)
  %117 = load i64*, i64** %15, align 8
  %118 = call i32 @free(i64* %117)
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @UTIL_getTotalFileSize(i8**, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @EXM_THROW(i32, i8*) #1

declare dso_local i32 @BMK_findMaxMem(i32) #1

declare dso_local i32 @DISPLAY(i8*, i32) #1

declare dso_local i32 @BMK_loadFiles(i8*, i64, i64*, i8**, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @BMK_benchCLevel(i8*, i64, i8*, i32, i32, i64*, i32, i8*, i32) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
