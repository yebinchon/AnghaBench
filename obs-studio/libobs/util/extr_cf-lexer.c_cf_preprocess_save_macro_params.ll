; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_save_macro_params.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_save_macro_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { i32 }
%struct.cf_def = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.cf_token = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.macro_params = type { i32 }
%struct.macro_param = type { i32 }

@CFTOKEN_OTHER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"',' or ')'\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Mismatching number of macro parameters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_preprocessor*, %struct.cf_token**, %struct.cf_def*, %struct.cf_token*, %struct.macro_params*, %struct.macro_params*)* @cf_preprocess_save_macro_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_preprocess_save_macro_params(%struct.cf_preprocessor* %0, %struct.cf_token** %1, %struct.cf_def* %2, %struct.cf_token* %3, %struct.macro_params* %4, %struct.macro_params* %5) #0 {
  %7 = alloca %struct.cf_preprocessor*, align 8
  %8 = alloca %struct.cf_token**, align 8
  %9 = alloca %struct.cf_def*, align 8
  %10 = alloca %struct.cf_token*, align 8
  %11 = alloca %struct.macro_params*, align 8
  %12 = alloca %struct.macro_params*, align 8
  %13 = alloca %struct.cf_token*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.macro_param, align 4
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %7, align 8
  store %struct.cf_token** %1, %struct.cf_token*** %8, align 8
  store %struct.cf_def* %2, %struct.cf_def** %9, align 8
  store %struct.cf_token* %3, %struct.cf_token** %10, align 8
  store %struct.macro_params* %4, %struct.macro_params** %11, align 8
  store %struct.macro_params* %5, %struct.macro_params** %12, align 8
  %16 = load %struct.cf_token**, %struct.cf_token*** %8, align 8
  %17 = load %struct.cf_token*, %struct.cf_token** %16, align 8
  store %struct.cf_token* %17, %struct.cf_token** %13, align 8
  store i64 0, i64* %14, align 8
  %18 = call i32 @next_token(%struct.cf_token** %13, i32 0)
  %19 = load %struct.cf_token*, %struct.cf_token** %13, align 8
  %20 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CFTOKEN_OTHER, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %6
  %25 = load %struct.cf_token*, %struct.cf_token** %13, align 8
  %26 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 40
  br i1 %31, label %32, label %36

32:                                               ; preds = %24, %6
  %33 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %7, align 8
  %34 = load %struct.cf_token*, %struct.cf_token** %13, align 8
  %35 = call i32 @cf_adderror_expecting(%struct.cf_preprocessor* %33, %struct.cf_token* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %137

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %117, %36
  %38 = call i32 @macro_param_init(%struct.macro_param* %15)
  %39 = load %struct.cf_token*, %struct.cf_token** %13, align 8
  %40 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %39, i32 1
  store %struct.cf_token* %40, %struct.cf_token** %13, align 8
  %41 = load i64, i64* %14, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %14, align 8
  %43 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %7, align 8
  %44 = load %struct.cf_token*, %struct.cf_token** %10, align 8
  %45 = load %struct.macro_params*, %struct.macro_params** %11, align 8
  %46 = call i32 @cf_preprocess_save_macro_param(%struct.cf_preprocessor* %43, %struct.cf_token** %13, %struct.macro_param* %15, %struct.cf_token* %44, %struct.macro_params* %45)
  %47 = load %struct.cf_token*, %struct.cf_token** %13, align 8
  %48 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CFTOKEN_OTHER, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %68, label %52

52:                                               ; preds = %37
  %53 = load %struct.cf_token*, %struct.cf_token** %13, align 8
  %54 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 44
  br i1 %59, label %60, label %73

60:                                               ; preds = %52
  %61 = load %struct.cf_token*, %struct.cf_token** %13, align 8
  %62 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 41
  br i1 %67, label %68, label %73

68:                                               ; preds = %60, %37
  %69 = call i32 @macro_param_free(%struct.macro_param* %15)
  %70 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %7, align 8
  %71 = load %struct.cf_token*, %struct.cf_token** %13, align 8
  %72 = call i32 @cf_adderror_expecting(%struct.cf_preprocessor* %70, %struct.cf_token* %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %137

73:                                               ; preds = %60, %52
  %74 = call i64 @param_is_whitespace(%struct.macro_param* %15)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %73
  %77 = load i64, i64* %14, align 8
  %78 = icmp eq i64 %77, 1
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load %struct.cf_def*, %struct.cf_def** %9, align 8
  %81 = getelementptr inbounds %struct.cf_def, %struct.cf_def* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %79
  %86 = load %struct.cf_token*, %struct.cf_token** %13, align 8
  %87 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 41
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = call i32 @macro_param_free(%struct.macro_param* %15)
  br label %125

95:                                               ; preds = %85, %79, %76
  br label %96

96:                                               ; preds = %95, %73
  %97 = load i64, i64* %14, align 8
  %98 = load %struct.cf_def*, %struct.cf_def** %9, align 8
  %99 = getelementptr inbounds %struct.cf_def, %struct.cf_def* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ule i64 %97, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.macro_param, %struct.macro_param* %15, i32 0, i32 0
  %105 = load %struct.cf_def*, %struct.cf_def** %9, align 8
  %106 = load i64, i64* %14, align 8
  %107 = sub i64 %106, 1
  %108 = call i32 @cf_def_getparam(%struct.cf_def* %105, i64 %107)
  %109 = call i32 @cf_token_copy(i32* %104, i32 %108)
  %110 = load %struct.macro_params*, %struct.macro_params** %12, align 8
  %111 = getelementptr inbounds %struct.macro_params, %struct.macro_params* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @da_push_back(i32 %112, %struct.macro_param* %15)
  br label %116

114:                                              ; preds = %96
  %115 = call i32 @macro_param_free(%struct.macro_param* %15)
  br label %116

116:                                              ; preds = %114, %103
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.cf_token*, %struct.cf_token** %13, align 8
  %119 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 41
  br i1 %124, label %37, label %125

125:                                              ; preds = %117, %93
  %126 = load i64, i64* %14, align 8
  %127 = load %struct.cf_def*, %struct.cf_def** %9, align 8
  %128 = getelementptr inbounds %struct.cf_def, %struct.cf_def* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %126, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %7, align 8
  %134 = load %struct.cf_token*, %struct.cf_token** %13, align 8
  %135 = call i32 @cf_adderror(%struct.cf_preprocessor* %133, %struct.cf_token* %134, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null, i32* null)
  br label %136

136:                                              ; preds = %132, %125
  br label %137

137:                                              ; preds = %136, %68, %32
  %138 = load %struct.cf_token*, %struct.cf_token** %13, align 8
  %139 = load %struct.cf_token**, %struct.cf_token*** %8, align 8
  store %struct.cf_token* %138, %struct.cf_token** %139, align 8
  ret void
}

declare dso_local i32 @next_token(%struct.cf_token**, i32) #1

declare dso_local i32 @cf_adderror_expecting(%struct.cf_preprocessor*, %struct.cf_token*, i8*) #1

declare dso_local i32 @macro_param_init(%struct.macro_param*) #1

declare dso_local i32 @cf_preprocess_save_macro_param(%struct.cf_preprocessor*, %struct.cf_token**, %struct.macro_param*, %struct.cf_token*, %struct.macro_params*) #1

declare dso_local i32 @macro_param_free(%struct.macro_param*) #1

declare dso_local i64 @param_is_whitespace(%struct.macro_param*) #1

declare dso_local i32 @cf_token_copy(i32*, i32) #1

declare dso_local i32 @cf_def_getparam(%struct.cf_def*, i64) #1

declare dso_local i32 @da_push_back(i32, %struct.macro_param*) #1

declare dso_local i32 @cf_adderror(%struct.cf_preprocessor*, %struct.cf_token*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
