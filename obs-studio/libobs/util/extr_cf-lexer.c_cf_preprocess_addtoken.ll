; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_addtoken.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_addtoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { i64 }
%struct.darray = type { i32 }
%struct.cf_token = type { i64, i32 }
%struct.macro_params = type { i32 }
%struct.cf_def = type { i32 }
%struct.macro_param = type { i32 }

@CFTOKEN_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_preprocessor*, %struct.darray*, %struct.cf_token**, %struct.cf_token*, %struct.macro_params*)* @cf_preprocess_addtoken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_preprocess_addtoken(%struct.cf_preprocessor* %0, %struct.darray* %1, %struct.cf_token** %2, %struct.cf_token* %3, %struct.macro_params* %4) #0 {
  %6 = alloca %struct.cf_preprocessor*, align 8
  %7 = alloca %struct.darray*, align 8
  %8 = alloca %struct.cf_token**, align 8
  %9 = alloca %struct.cf_token*, align 8
  %10 = alloca %struct.macro_params*, align 8
  %11 = alloca %struct.cf_token*, align 8
  %12 = alloca %struct.cf_def*, align 8
  %13 = alloca %struct.macro_param*, align 8
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %6, align 8
  store %struct.darray* %1, %struct.darray** %7, align 8
  store %struct.cf_token** %2, %struct.cf_token*** %8, align 8
  store %struct.cf_token* %3, %struct.cf_token** %9, align 8
  store %struct.macro_params* %4, %struct.macro_params** %10, align 8
  %14 = load %struct.cf_token**, %struct.cf_token*** %8, align 8
  %15 = load %struct.cf_token*, %struct.cf_token** %14, align 8
  store %struct.cf_token* %15, %struct.cf_token** %11, align 8
  %16 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %6, align 8
  %17 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %64

21:                                               ; preds = %5
  %22 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %23 = icmp ne %struct.cf_token* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load %struct.cf_token*, %struct.cf_token** %11, align 8
  store %struct.cf_token* %25, %struct.cf_token** %9, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load %struct.cf_token*, %struct.cf_token** %11, align 8
  %28 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CFTOKEN_NAME, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %26
  %33 = load %struct.macro_params*, %struct.macro_params** %10, align 8
  %34 = load %struct.cf_token*, %struct.cf_token** %11, align 8
  %35 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %34, i32 0, i32 1
  %36 = call %struct.macro_param* @get_macro_param(%struct.macro_params* %33, i32* %35)
  store %struct.macro_param* %36, %struct.macro_param** %13, align 8
  %37 = load %struct.macro_param*, %struct.macro_param** %13, align 8
  %38 = icmp ne %struct.macro_param* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %6, align 8
  %41 = load %struct.darray*, %struct.darray** %7, align 8
  %42 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %43 = load %struct.macro_param*, %struct.macro_param** %13, align 8
  %44 = call i32 @cf_preprocess_unwrap_param(%struct.cf_preprocessor* %40, %struct.darray* %41, %struct.cf_token** %11, %struct.cf_token* %42, %struct.macro_param* %43)
  br label %67

45:                                               ; preds = %32
  %46 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %6, align 8
  %47 = load %struct.cf_token*, %struct.cf_token** %11, align 8
  %48 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %47, i32 0, i32 1
  %49 = call %struct.cf_def* @cf_preprocess_get_def(%struct.cf_preprocessor* %46, i32* %48)
  store %struct.cf_def* %49, %struct.cf_def** %12, align 8
  %50 = load %struct.cf_def*, %struct.cf_def** %12, align 8
  %51 = icmp ne %struct.cf_def* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %6, align 8
  %54 = load %struct.darray*, %struct.darray** %7, align 8
  %55 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %56 = load %struct.cf_def*, %struct.cf_def** %12, align 8
  %57 = load %struct.macro_params*, %struct.macro_params** %10, align 8
  %58 = call i32 @cf_preprocess_unwrap_define(%struct.cf_preprocessor* %53, %struct.darray* %54, %struct.cf_token** %11, %struct.cf_token* %55, %struct.cf_def* %56, %struct.macro_params* %57)
  br label %67

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %26
  %61 = load %struct.darray*, %struct.darray** %7, align 8
  %62 = load %struct.cf_token*, %struct.cf_token** %11, align 8
  %63 = call i32 @darray_push_back(i32 16, %struct.darray* %61, %struct.cf_token* %62)
  br label %64

64:                                               ; preds = %60, %20
  %65 = load %struct.cf_token*, %struct.cf_token** %11, align 8
  %66 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %65, i32 1
  store %struct.cf_token* %66, %struct.cf_token** %11, align 8
  br label %67

67:                                               ; preds = %64, %52, %39
  %68 = load %struct.cf_token*, %struct.cf_token** %11, align 8
  %69 = load %struct.cf_token**, %struct.cf_token*** %8, align 8
  store %struct.cf_token* %68, %struct.cf_token** %69, align 8
  ret void
}

declare dso_local %struct.macro_param* @get_macro_param(%struct.macro_params*, i32*) #1

declare dso_local i32 @cf_preprocess_unwrap_param(%struct.cf_preprocessor*, %struct.darray*, %struct.cf_token**, %struct.cf_token*, %struct.macro_param*) #1

declare dso_local %struct.cf_def* @cf_preprocess_get_def(%struct.cf_preprocessor*, i32*) #1

declare dso_local i32 @cf_preprocess_unwrap_define(%struct.cf_preprocessor*, %struct.darray*, %struct.cf_token**, %struct.cf_token*, %struct.cf_def*, %struct.macro_params*) #1

declare dso_local i32 @darray_push_back(i32, %struct.darray*, %struct.cf_token*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
