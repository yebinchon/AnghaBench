; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_unwrap_param.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_unwrap_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { i32 }
%struct.darray = type { i32 }
%struct.cf_token = type { i64 }
%struct.macro_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cf_token* }

@CFTOKEN_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_preprocessor*, %struct.darray*, %struct.cf_token**, %struct.cf_token*, %struct.macro_param*)* @cf_preprocess_unwrap_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_preprocess_unwrap_param(%struct.cf_preprocessor* %0, %struct.darray* %1, %struct.cf_token** %2, %struct.cf_token* %3, %struct.macro_param* %4) #0 {
  %6 = alloca %struct.cf_preprocessor*, align 8
  %7 = alloca %struct.darray*, align 8
  %8 = alloca %struct.cf_token**, align 8
  %9 = alloca %struct.cf_token*, align 8
  %10 = alloca %struct.macro_param*, align 8
  %11 = alloca %struct.cf_token*, align 8
  %12 = alloca %struct.cf_token*, align 8
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %6, align 8
  store %struct.darray* %1, %struct.darray** %7, align 8
  store %struct.cf_token** %2, %struct.cf_token*** %8, align 8
  store %struct.cf_token* %3, %struct.cf_token** %9, align 8
  store %struct.macro_param* %4, %struct.macro_param** %10, align 8
  %13 = load %struct.cf_token**, %struct.cf_token*** %8, align 8
  %14 = load %struct.cf_token*, %struct.cf_token** %13, align 8
  store %struct.cf_token* %14, %struct.cf_token** %11, align 8
  %15 = load %struct.macro_param*, %struct.macro_param** %10, align 8
  %16 = getelementptr inbounds %struct.macro_param, %struct.macro_param* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.cf_token*, %struct.cf_token** %17, align 8
  store %struct.cf_token* %18, %struct.cf_token** %12, align 8
  br label %19

19:                                               ; preds = %25, %5
  %20 = load %struct.cf_token*, %struct.cf_token** %12, align 8
  %21 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CFTOKEN_NONE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %6, align 8
  %27 = load %struct.darray*, %struct.darray** %7, align 8
  %28 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  %29 = call i32 @cf_preprocess_addtoken(%struct.cf_preprocessor* %26, %struct.darray* %27, %struct.cf_token** %12, %struct.cf_token* %28, i32* null)
  br label %19

30:                                               ; preds = %19
  %31 = load %struct.cf_token*, %struct.cf_token** %11, align 8
  %32 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %31, i32 1
  store %struct.cf_token* %32, %struct.cf_token** %11, align 8
  %33 = load %struct.cf_token*, %struct.cf_token** %11, align 8
  %34 = load %struct.cf_token**, %struct.cf_token*** %8, align 8
  store %struct.cf_token* %33, %struct.cf_token** %34, align 8
  ret void
}

declare dso_local i32 @cf_preprocess_addtoken(%struct.cf_preprocessor*, %struct.darray*, %struct.cf_token**, %struct.cf_token*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
