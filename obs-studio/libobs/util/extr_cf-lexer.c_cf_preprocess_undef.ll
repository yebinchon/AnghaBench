; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_undef.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_undef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { i64 }
%struct.cf_token = type { i64, i32 }

@CFTOKEN_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_preprocessor*, %struct.cf_token**)* @cf_preprocess_undef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_preprocess_undef(%struct.cf_preprocessor* %0, %struct.cf_token** %1) #0 {
  %3 = alloca %struct.cf_preprocessor*, align 8
  %4 = alloca %struct.cf_token**, align 8
  %5 = alloca %struct.cf_token*, align 8
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %3, align 8
  store %struct.cf_token** %1, %struct.cf_token*** %4, align 8
  %6 = load %struct.cf_token**, %struct.cf_token*** %4, align 8
  %7 = load %struct.cf_token*, %struct.cf_token** %6, align 8
  store %struct.cf_token* %7, %struct.cf_token** %5, align 8
  %8 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %9 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.cf_token**, %struct.cf_token*** %4, align 8
  %14 = call i32 @go_to_newline(%struct.cf_token** %13)
  br label %37

15:                                               ; preds = %2
  %16 = call i32 @next_token(%struct.cf_token** %5, i32 1)
  %17 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %18 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CFTOKEN_NAME, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %24 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %25 = call i32 @cf_adderror_expecting(%struct.cf_preprocessor* %23, %struct.cf_token* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @go_to_newline(%struct.cf_token** %5)
  br label %34

27:                                               ; preds = %15
  %28 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %29 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %30 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %29, i32 0, i32 1
  %31 = call i32 @cf_preprocess_remove_def_strref(%struct.cf_preprocessor* %28, i32* %30)
  %32 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %33 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %32, i32 1
  store %struct.cf_token* %33, %struct.cf_token** %5, align 8
  br label %34

34:                                               ; preds = %27, %22
  %35 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %36 = load %struct.cf_token**, %struct.cf_token*** %4, align 8
  store %struct.cf_token* %35, %struct.cf_token** %36, align 8
  br label %37

37:                                               ; preds = %34, %12
  ret void
}

declare dso_local i32 @go_to_newline(%struct.cf_token**) #1

declare dso_local i32 @next_token(%struct.cf_token**, i32) #1

declare dso_local i32 @cf_adderror_expecting(%struct.cf_preprocessor*, %struct.cf_token*, i8*) #1

declare dso_local i32 @cf_preprocess_remove_def_strref(%struct.cf_preprocessor*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
