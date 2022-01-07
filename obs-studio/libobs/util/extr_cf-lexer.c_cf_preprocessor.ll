; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocessor.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocessor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { i32 }
%struct.cf_token = type { i64, i32 }
%struct.dstr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"define\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ifdef\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ifndef\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"endif\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"#$1 outside of #if/#ifdef/#ifndef block\00", align 1
@CFTOKEN_NEWLINE = common dso_local global i64 0, align 8
@CFTOKEN_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_preprocessor*, i32, %struct.cf_token**)* @cf_preprocessor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_preprocessor(%struct.cf_preprocessor* %0, i32 %1, %struct.cf_token** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cf_preprocessor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cf_token**, align 8
  %8 = alloca %struct.cf_token*, align 8
  %9 = alloca %struct.dstr, align 4
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cf_token** %2, %struct.cf_token*** %7, align 8
  %10 = load %struct.cf_token**, %struct.cf_token*** %7, align 8
  %11 = load %struct.cf_token*, %struct.cf_token** %10, align 8
  store %struct.cf_token* %11, %struct.cf_token** %8, align 8
  %12 = load %struct.cf_token*, %struct.cf_token** %8, align 8
  %13 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %12, i32 0, i32 1
  %14 = call i64 @strref_cmp(i32* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %5, align 8
  %18 = load %struct.cf_token**, %struct.cf_token*** %7, align 8
  %19 = call i32 @cf_preprocess_include(%struct.cf_preprocessor* %17, %struct.cf_token** %18)
  br label %105

20:                                               ; preds = %3
  %21 = load %struct.cf_token*, %struct.cf_token** %8, align 8
  %22 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %21, i32 0, i32 1
  %23 = call i64 @strref_cmp(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %5, align 8
  %27 = load %struct.cf_token**, %struct.cf_token*** %7, align 8
  %28 = call i32 @cf_preprocess_define(%struct.cf_preprocessor* %26, %struct.cf_token** %27)
  br label %104

29:                                               ; preds = %20
  %30 = load %struct.cf_token*, %struct.cf_token** %8, align 8
  %31 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %30, i32 0, i32 1
  %32 = call i64 @strref_cmp(i32* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %5, align 8
  %36 = load %struct.cf_token**, %struct.cf_token*** %7, align 8
  %37 = call i32 @cf_preprocess_undef(%struct.cf_preprocessor* %35, %struct.cf_token** %36)
  br label %103

38:                                               ; preds = %29
  %39 = load %struct.cf_token*, %struct.cf_token** %8, align 8
  %40 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %39, i32 0, i32 1
  %41 = call i64 @strref_cmp(i32* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %5, align 8
  %45 = load %struct.cf_token**, %struct.cf_token*** %7, align 8
  %46 = call i32 @cf_preprocess_ifdef(%struct.cf_preprocessor* %44, i32 0, %struct.cf_token** %45)
  br label %102

47:                                               ; preds = %38
  %48 = load %struct.cf_token*, %struct.cf_token** %8, align 8
  %49 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %48, i32 0, i32 1
  %50 = call i64 @strref_cmp(i32* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %5, align 8
  %54 = load %struct.cf_token**, %struct.cf_token*** %7, align 8
  %55 = call i32 @cf_preprocess_ifdef(%struct.cf_preprocessor* %53, i32 1, %struct.cf_token** %54)
  br label %101

56:                                               ; preds = %47
  %57 = load %struct.cf_token*, %struct.cf_token** %8, align 8
  %58 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %57, i32 0, i32 1
  %59 = call i64 @strref_cmp(i32* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.cf_token*, %struct.cf_token** %8, align 8
  %63 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %62, i32 0, i32 1
  %64 = call i64 @strref_cmp(i32* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %61, %56
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %66
  %70 = load %struct.cf_token*, %struct.cf_token** %8, align 8
  %71 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %70, i32 0, i32 1
  %72 = call i32 @dstr_init_copy_strref(%struct.dstr* %9, i32* %71)
  %73 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %5, align 8
  %74 = load %struct.cf_token*, %struct.cf_token** %8, align 8
  %75 = getelementptr inbounds %struct.dstr, %struct.dstr* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @cf_adderror(%struct.cf_preprocessor* %73, %struct.cf_token* %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %76, i32* null, i32* null)
  %78 = call i32 @dstr_free(%struct.dstr* %9)
  %79 = load %struct.cf_token**, %struct.cf_token*** %7, align 8
  %80 = load %struct.cf_token*, %struct.cf_token** %79, align 8
  %81 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %80, i32 1
  store %struct.cf_token* %81, %struct.cf_token** %79, align 8
  store i32 1, i32* %4, align 4
  br label %106

82:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %106

83:                                               ; preds = %61
  %84 = load %struct.cf_token*, %struct.cf_token** %8, align 8
  %85 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @CFTOKEN_NEWLINE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load %struct.cf_token*, %struct.cf_token** %8, align 8
  %91 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @CFTOKEN_NONE, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load %struct.cf_token**, %struct.cf_token*** %7, align 8
  %97 = load %struct.cf_token*, %struct.cf_token** %96, align 8
  %98 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %97, i32 1
  store %struct.cf_token* %98, %struct.cf_token** %96, align 8
  br label %99

99:                                               ; preds = %95, %89, %83
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %52
  br label %102

102:                                              ; preds = %101, %43
  br label %103

103:                                              ; preds = %102, %34
  br label %104

104:                                              ; preds = %103, %25
  br label %105

105:                                              ; preds = %104, %16
  store i32 1, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %82, %69
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @strref_cmp(i32*, i8*) #1

declare dso_local i32 @cf_preprocess_include(%struct.cf_preprocessor*, %struct.cf_token**) #1

declare dso_local i32 @cf_preprocess_define(%struct.cf_preprocessor*, %struct.cf_token**) #1

declare dso_local i32 @cf_preprocess_undef(%struct.cf_preprocessor*, %struct.cf_token**) #1

declare dso_local i32 @cf_preprocess_ifdef(%struct.cf_preprocessor*, i32, %struct.cf_token**) #1

declare dso_local i32 @dstr_init_copy_strref(%struct.dstr*, i32*) #1

declare dso_local i32 @cf_adderror(%struct.cf_preprocessor*, %struct.cf_token*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
