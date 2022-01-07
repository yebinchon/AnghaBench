; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_save_macro_param.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_save_macro_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { i32 }
%struct.macro_param = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.cf_token = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.macro_params = type { i32 }

@CFTOKEN_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_preprocessor*, %struct.cf_token**, %struct.macro_param*, %struct.cf_token*, %struct.macro_params*)* @cf_preprocess_save_macro_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_preprocess_save_macro_param(%struct.cf_preprocessor* %0, %struct.cf_token** %1, %struct.macro_param* %2, %struct.cf_token* %3, %struct.macro_params* %4) #0 {
  %6 = alloca %struct.cf_preprocessor*, align 8
  %7 = alloca %struct.cf_token**, align 8
  %8 = alloca %struct.macro_param*, align 8
  %9 = alloca %struct.cf_token*, align 8
  %10 = alloca %struct.macro_params*, align 8
  %11 = alloca %struct.cf_token*, align 8
  %12 = alloca i32, align 4
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %6, align 8
  store %struct.cf_token** %1, %struct.cf_token*** %7, align 8
  store %struct.macro_param* %2, %struct.macro_param** %8, align 8
  store %struct.cf_token* %3, %struct.cf_token** %9, align 8
  store %struct.macro_params* %4, %struct.macro_params** %10, align 8
  %13 = load %struct.cf_token**, %struct.cf_token*** %7, align 8
  %14 = load %struct.cf_token*, %struct.cf_token** %13, align 8
  store %struct.cf_token* %14, %struct.cf_token** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %6, align 8
  %16 = load %struct.macro_param*, %struct.macro_param** %8, align 8
  %17 = getelementptr inbounds %struct.macro_param, %struct.macro_param* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %20 = call i32 @append_space(%struct.cf_preprocessor* %15, i32* %18, %struct.cf_token* %19)
  br label %21

21:                                               ; preds = %69, %5
  %22 = load %struct.cf_token*, %struct.cf_token** %11, align 8
  %23 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CFTOKEN_NONE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %21
  %28 = load %struct.cf_token*, %struct.cf_token** %11, align 8
  %29 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 40
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %69

38:                                               ; preds = %27
  %39 = load %struct.cf_token*, %struct.cf_token** %11, align 8
  %40 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 41
  br i1 %45, label %46, label %54

46:                                               ; preds = %38
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %12, align 4
  br label %53

52:                                               ; preds = %46
  br label %77

53:                                               ; preds = %49
  br label %68

54:                                               ; preds = %38
  %55 = load %struct.cf_token*, %struct.cf_token** %11, align 8
  %56 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 44
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %77

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %54
  br label %68

68:                                               ; preds = %67, %53
  br label %69

69:                                               ; preds = %68, %35
  %70 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %6, align 8
  %71 = load %struct.macro_param*, %struct.macro_param** %8, align 8
  %72 = getelementptr inbounds %struct.macro_param, %struct.macro_param* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %75 = load %struct.macro_params*, %struct.macro_params** %10, align 8
  %76 = call i32 @cf_preprocess_addtoken(%struct.cf_preprocessor* %70, i32* %73, %struct.cf_token** %11, %struct.cf_token* %74, %struct.macro_params* %75)
  br label %21

77:                                               ; preds = %65, %52, %21
  %78 = load %struct.cf_token*, %struct.cf_token** %11, align 8
  %79 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CFTOKEN_NONE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %6, align 8
  %85 = load %struct.cf_token*, %struct.cf_token** %11, align 8
  %86 = call i32 @cf_adderror_unexpected_eof(%struct.cf_preprocessor* %84, %struct.cf_token* %85)
  br label %87

87:                                               ; preds = %83, %77
  %88 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %6, align 8
  %89 = load %struct.macro_param*, %struct.macro_param** %8, align 8
  %90 = getelementptr inbounds %struct.macro_param, %struct.macro_param* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %93 = call i32 @append_space(%struct.cf_preprocessor* %88, i32* %91, %struct.cf_token* %92)
  %94 = load %struct.macro_param*, %struct.macro_param** %8, align 8
  %95 = getelementptr inbounds %struct.macro_param, %struct.macro_param* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = call i32 @append_end_token(i32* %96)
  %98 = load %struct.cf_token*, %struct.cf_token** %11, align 8
  %99 = load %struct.cf_token**, %struct.cf_token*** %7, align 8
  store %struct.cf_token* %98, %struct.cf_token** %99, align 8
  ret void
}

declare dso_local i32 @append_space(%struct.cf_preprocessor*, i32*, %struct.cf_token*) #1

declare dso_local i32 @cf_preprocess_addtoken(%struct.cf_preprocessor*, i32*, %struct.cf_token**, %struct.cf_token*, %struct.macro_params*) #1

declare dso_local i32 @cf_adderror_unexpected_eof(%struct.cf_preprocessor*, %struct.cf_token*) #1

declare dso_local i32 @append_end_token(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
