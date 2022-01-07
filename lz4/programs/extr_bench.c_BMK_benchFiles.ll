; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_bench.c_BMK_benchFiles.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_bench.c_BMK_benchFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_compressibilityDefault = common dso_local global i64 0, align 8
@LZ4HC_CLEVEL_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Benchmarking levels from %d to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Dictionary error : could not stat dictionary file\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Dictionary error : could not open dictionary file\00", align 1
@LZ4_MAX_DICT_SIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Dictionary error : could not seek dictionary file\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Allocation error : not enough memory\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Dictionary error : could not read dictionary file\00", align 1
@g_benchSeparately = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BMK_benchFiles(i8** %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca double, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = load i64, i64* @g_compressibilityDefault, align 8
  %17 = sitofp i64 %16 to double
  %18 = fdiv double %17, 1.000000e+02
  store double %18, double* %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @LZ4HC_CLEVEL_MAX, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @LZ4HC_CLEVEL_MAX, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %22, %5
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @LZ4HC_CLEVEL_MAX, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @LZ4HC_CLEVEL_MAX, align 4
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %100

47:                                               ; preds = %44
  store i32* null, i32** %14, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @UTIL_getFileSize(i8* %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = call i32 @EXM_THROW(i32 25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %47
  %55 = load i8*, i8** %10, align 8
  %56 = call i32* @fopen(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %56, i32** %14, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = call i32 @EXM_THROW(i32 25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %54
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @LZ4_MAX_DICT_SIZE, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load i32, i32* @LZ4_MAX_DICT_SIZE, align 4
  store i32 %66, i32* %13, align 4
  %67 = load i32*, i32** %14, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i32, i32* @SEEK_SET, align 4
  %72 = call i64 @UTIL_fseek(i32* %67, i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = call i32 @EXM_THROW(i32 25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %65
  br label %79

77:                                               ; preds = %61
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = load i32, i32* %13, align 4
  %81 = call i64 @malloc(i32 %80)
  %82 = inttoptr i64 %81 to i8*
  store i8* %82, i8** %12, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = call i32 @EXM_THROW(i32 25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %79
  %88 = load i8*, i8** %12, align 8
  %89 = load i32, i32* %13, align 4
  %90 = load i32*, i32** %14, align 8
  %91 = call i64 @fread(i8* %88, i32 1, i32 %89, i32* %90)
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp ne i64 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = call i32 @EXM_THROW(i32 25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %87
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @fclose(i32* %98)
  br label %100

100:                                              ; preds = %97, %44
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load double, double* %11, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @BMK_syntheticTest(i32 %104, i32 %105, double %106, i8* %107, i32 %108)
  br label %130

110:                                              ; preds = %100
  %111 = load i64, i64* @g_benchSeparately, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load i8**, i8*** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i8*, i8** %12, align 8
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @BMK_benchFilesSeparately(i8** %114, i32 %115, i32 %116, i32 %117, i8* %118, i32 %119)
  br label %129

121:                                              ; preds = %110
  %122 = load i8**, i8*** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i8*, i8** %12, align 8
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @BMK_benchFileTable(i8** %122, i32 %123, i32 %124, i32 %125, i8* %126, i32 %127)
  br label %129

129:                                              ; preds = %121, %113
  br label %130

130:                                              ; preds = %129, %103
  %131 = load i8*, i8** %12, align 8
  %132 = call i32 @free(i8* %131)
  ret i32 0
}

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i32, i32) #1

declare dso_local i32 @UTIL_getFileSize(i8*) #1

declare dso_local i32 @EXM_THROW(i32, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @UTIL_fseek(i32*, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @BMK_syntheticTest(i32, i32, double, i8*, i32) #1

declare dso_local i32 @BMK_benchFilesSeparately(i8**, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @BMK_benchFileTable(i8**, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
