; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_common.c_pgtypes_fmt_replace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_common.c_pgtypes_fmt_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.un_fmt_comb = type { i8* }

@PGTYPES_FMT_NUM_MAX_DIGITS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%0.0g\00", align 1
@INT64_FORMAT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02u\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%2u\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%03u\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%04u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgtypes_fmt_replace(i8* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.un_fmt_comb, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = getelementptr inbounds %union.un_fmt_comb, %union.un_fmt_comb* %6, i32 0, i32 0
  store i8* %0, i8** %12, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %156 [
    i32 135, label %14
    i32 134, label %15
    i32 133, label %15
    i32 138, label %49
    i32 137, label %69
    i32 136, label %69
    i32 132, label %69
    i32 130, label %69
    i32 131, label %69
    i32 129, label %69
    i32 128, label %69
  ]

14:                                               ; preds = %4
  br label %157

15:                                               ; preds = %4, %4
  %16 = bitcast %union.un_fmt_comb* %6 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %19, 1
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp sle i32 %20, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %15
  %25 = load i8**, i8*** %8, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast %union.un_fmt_comb* %6 to i8**
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @memcpy(i8* %26, i8* %28, i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i8**, i8*** %8, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = sext i32 %36 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %37, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 133
  br i1 %42, label %43, label %47

43:                                               ; preds = %24
  %44 = bitcast %union.un_fmt_comb* %6 to i8**
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @free(i8* %45)
  br label %47

47:                                               ; preds = %43, %24
  store i32 0, i32* %5, align 4
  br label %158

48:                                               ; preds = %15
  store i32 -1, i32* %5, align 4
  br label %158

49:                                               ; preds = %4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %51, 2
  br i1 %52, label %53, label %68

53:                                               ; preds = %49
  %54 = bitcast %union.un_fmt_comb* %6 to i8*
  %55 = load i8, i8* %54, align 8
  %56 = load i8**, i8*** %8, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 %55, i8* %58, align 1
  %59 = load i8**, i8*** %8, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8 0, i8* %61, align 1
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 4
  %65 = load i8**, i8*** %8, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %65, align 8
  store i32 0, i32* %5, align 4
  br label %158

68:                                               ; preds = %49
  store i32 -1, i32* %5, align 4
  br label %158

69:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  %70 = load i32, i32* @PGTYPES_FMT_NUM_MAX_DIGITS, align 4
  %71 = call i8* @pgtypes_alloc(i32 %70)
  store i8* %71, i8** %11, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOMEM, align 4
  store i32 %75, i32* %5, align 4
  br label %158

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  switch i32 %77, label %121 [
    i32 137, label %78
    i32 136, label %84
    i32 132, label %91
    i32 130, label %97
    i32 131, label %103
    i32 129, label %109
    i32 128, label %115
  ]

78:                                               ; preds = %76
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* @PGTYPES_FMT_NUM_MAX_DIGITS, align 4
  %81 = bitcast %union.un_fmt_comb* %6 to double*
  %82 = load double, double* %81, align 8
  %83 = call i32 @snprintf(i8* %79, i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %82)
  store i32 %83, i32* %10, align 4
  br label %121

84:                                               ; preds = %76
  %85 = load i8*, i8** %11, align 8
  %86 = load i32, i32* @PGTYPES_FMT_NUM_MAX_DIGITS, align 4
  %87 = load i8*, i8** @INT64_FORMAT, align 8
  %88 = bitcast %union.un_fmt_comb* %6 to double*
  %89 = load double, double* %88, align 8
  %90 = call i32 @snprintf(i8* %85, i32 %86, i8* %87, double %89)
  store i32 %90, i32* %10, align 4
  br label %121

91:                                               ; preds = %76
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* @PGTYPES_FMT_NUM_MAX_DIGITS, align 4
  %94 = bitcast %union.un_fmt_comb* %6 to double*
  %95 = load double, double* %94, align 8
  %96 = call i32 @snprintf(i8* %92, i32 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), double %95)
  store i32 %96, i32* %10, align 4
  br label %121

97:                                               ; preds = %76
  %98 = load i8*, i8** %11, align 8
  %99 = load i32, i32* @PGTYPES_FMT_NUM_MAX_DIGITS, align 4
  %100 = bitcast %union.un_fmt_comb* %6 to double*
  %101 = load double, double* %100, align 8
  %102 = call i32 @snprintf(i8* %98, i32 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double %101)
  store i32 %102, i32* %10, align 4
  br label %121

103:                                              ; preds = %76
  %104 = load i8*, i8** %11, align 8
  %105 = load i32, i32* @PGTYPES_FMT_NUM_MAX_DIGITS, align 4
  %106 = bitcast %union.un_fmt_comb* %6 to double*
  %107 = load double, double* %106, align 8
  %108 = call i32 @snprintf(i8* %104, i32 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double %107)
  store i32 %108, i32* %10, align 4
  br label %121

109:                                              ; preds = %76
  %110 = load i8*, i8** %11, align 8
  %111 = load i32, i32* @PGTYPES_FMT_NUM_MAX_DIGITS, align 4
  %112 = bitcast %union.un_fmt_comb* %6 to double*
  %113 = load double, double* %112, align 8
  %114 = call i32 @snprintf(i8* %110, i32 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), double %113)
  store i32 %114, i32* %10, align 4
  br label %121

115:                                              ; preds = %76
  %116 = load i8*, i8** %11, align 8
  %117 = load i32, i32* @PGTYPES_FMT_NUM_MAX_DIGITS, align 4
  %118 = bitcast %union.un_fmt_comb* %6 to double*
  %119 = load double, double* %118, align 8
  %120 = call i32 @snprintf(i8* %116, i32 %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), double %119)
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %76, %115, %109, %103, %97, %91, %84, %78
  %122 = load i32, i32* %10, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @PGTYPES_FMT_NUM_MAX_DIGITS, align 4
  %127 = icmp sge i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124, %121
  %129 = load i8*, i8** %11, align 8
  %130 = call i32 @free(i8* %129)
  store i32 -1, i32* %5, align 4
  br label %158

131:                                              ; preds = %124
  %132 = load i8*, i8** %11, align 8
  %133 = call i32 @strlen(i8* %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %136, %134
  store i32 %137, i32* %135, align 4
  %138 = load i32*, i32** %9, align 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp sle i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %131
  %142 = load i8*, i8** %11, align 8
  %143 = call i32 @free(i8* %142)
  store i32 -1, i32* %5, align 4
  br label %158

144:                                              ; preds = %131
  %145 = load i8**, i8*** %8, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** %11, align 8
  %148 = call i32 @strcpy(i8* %146, i8* %147)
  %149 = load i32, i32* %10, align 4
  %150 = load i8**, i8*** %8, align 8
  %151 = load i8*, i8** %150, align 8
  %152 = sext i32 %149 to i64
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8* %153, i8** %150, align 8
  %154 = load i8*, i8** %11, align 8
  %155 = call i32 @free(i8* %154)
  br label %157

156:                                              ; preds = %4
  br label %157

157:                                              ; preds = %156, %144, %14
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %157, %141, %128, %74, %68, %53, %48, %47
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @pgtypes_alloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, double) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
