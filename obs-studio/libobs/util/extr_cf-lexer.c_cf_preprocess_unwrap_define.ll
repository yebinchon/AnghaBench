; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_unwrap_define.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_unwrap_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { i32 }
%struct.darray = type { i32 }
%struct.cf_token = type { i64 }
%struct.cf_def = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cf_token* }
%struct.macro_params = type { i32 }

@CFTOKEN_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_preprocessor*, %struct.darray*, %struct.cf_token**, %struct.cf_token*, %struct.cf_def*, %struct.macro_params*)* @cf_preprocess_unwrap_define to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_preprocess_unwrap_define(%struct.cf_preprocessor* %0, %struct.darray* %1, %struct.cf_token** %2, %struct.cf_token* %3, %struct.cf_def* %4, %struct.macro_params* %5) #0 {
  %7 = alloca %struct.cf_preprocessor*, align 8
  %8 = alloca %struct.darray*, align 8
  %9 = alloca %struct.cf_token**, align 8
  %10 = alloca %struct.cf_token*, align 8
  %11 = alloca %struct.cf_def*, align 8
  %12 = alloca %struct.macro_params*, align 8
  %13 = alloca %struct.cf_token*, align 8
  %14 = alloca %struct.macro_params, align 4
  %15 = alloca %struct.cf_token*, align 8
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %7, align 8
  store %struct.darray* %1, %struct.darray** %8, align 8
  store %struct.cf_token** %2, %struct.cf_token*** %9, align 8
  store %struct.cf_token* %3, %struct.cf_token** %10, align 8
  store %struct.cf_def* %4, %struct.cf_def** %11, align 8
  store %struct.macro_params* %5, %struct.macro_params** %12, align 8
  %16 = load %struct.cf_token**, %struct.cf_token*** %9, align 8
  %17 = load %struct.cf_token*, %struct.cf_token** %16, align 8
  store %struct.cf_token* %17, %struct.cf_token** %13, align 8
  %18 = load %struct.cf_def*, %struct.cf_def** %11, align 8
  %19 = getelementptr inbounds %struct.cf_def, %struct.cf_def* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.cf_token*, %struct.cf_token** %20, align 8
  store %struct.cf_token* %21, %struct.cf_token** %15, align 8
  %22 = call i32 @macro_params_init(%struct.macro_params* %14)
  %23 = load %struct.cf_def*, %struct.cf_def** %11, align 8
  %24 = getelementptr inbounds %struct.cf_def, %struct.cf_def* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %6
  %28 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %7, align 8
  %29 = load %struct.cf_def*, %struct.cf_def** %11, align 8
  %30 = load %struct.cf_token*, %struct.cf_token** %10, align 8
  %31 = load %struct.macro_params*, %struct.macro_params** %12, align 8
  %32 = call i32 @cf_preprocess_save_macro_params(%struct.cf_preprocessor* %28, %struct.cf_token** %13, %struct.cf_def* %29, %struct.cf_token* %30, %struct.macro_params* %31, %struct.macro_params* %14)
  br label %33

33:                                               ; preds = %27, %6
  br label %34

34:                                               ; preds = %40, %33
  %35 = load %struct.cf_token*, %struct.cf_token** %15, align 8
  %36 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CFTOKEN_NONE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %7, align 8
  %42 = load %struct.darray*, %struct.darray** %8, align 8
  %43 = load %struct.cf_token*, %struct.cf_token** %10, align 8
  %44 = call i32 @cf_preprocess_addtoken(%struct.cf_preprocessor* %41, %struct.darray* %42, %struct.cf_token** %15, %struct.cf_token* %43, %struct.macro_params* %14)
  br label %34

45:                                               ; preds = %34
  %46 = call i32 @macro_params_free(%struct.macro_params* %14)
  %47 = load %struct.cf_token*, %struct.cf_token** %13, align 8
  %48 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %47, i32 1
  store %struct.cf_token* %48, %struct.cf_token** %13, align 8
  %49 = load %struct.cf_token*, %struct.cf_token** %13, align 8
  %50 = load %struct.cf_token**, %struct.cf_token*** %9, align 8
  store %struct.cf_token* %49, %struct.cf_token** %50, align 8
  ret void
}

declare dso_local i32 @macro_params_init(%struct.macro_params*) #1

declare dso_local i32 @cf_preprocess_save_macro_params(%struct.cf_preprocessor*, %struct.cf_token**, %struct.cf_def*, %struct.cf_token*, %struct.macro_params*, %struct.macro_params*) #1

declare dso_local i32 @cf_preprocess_addtoken(%struct.cf_preprocessor*, %struct.darray*, %struct.cf_token**, %struct.cf_token*, %struct.macro_params*) #1

declare dso_local i32 @macro_params_free(%struct.macro_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
