; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_macro_params.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_macro_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { i32 }
%struct.cf_def = type { i32 }
%struct.cf_token = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@CFTOKEN_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@CFTOKEN_OTHER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"',' or ')'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cf_preprocessor*, %struct.cf_def*, %struct.cf_token**)* @cf_preprocess_macro_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_preprocess_macro_params(%struct.cf_preprocessor* %0, %struct.cf_def* %1, %struct.cf_token** %2) #0 {
  %4 = alloca %struct.cf_preprocessor*, align 8
  %5 = alloca %struct.cf_def*, align 8
  %6 = alloca %struct.cf_token**, align 8
  %7 = alloca %struct.cf_token*, align 8
  %8 = alloca i32, align 4
  store %struct.cf_preprocessor* %0, %struct.cf_preprocessor** %4, align 8
  store %struct.cf_def* %1, %struct.cf_def** %5, align 8
  store %struct.cf_token** %2, %struct.cf_token*** %6, align 8
  %9 = load %struct.cf_token**, %struct.cf_token*** %6, align 8
  %10 = load %struct.cf_token*, %struct.cf_token** %9, align 8
  store %struct.cf_token* %10, %struct.cf_token** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.cf_def*, %struct.cf_def** %5, align 8
  %12 = getelementptr inbounds %struct.cf_def, %struct.cf_def* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  br label %13

13:                                               ; preds = %57, %3
  %14 = call i32 @next_token(%struct.cf_token** %7, i32 1)
  %15 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %16 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CFTOKEN_NAME, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %4, align 8
  %22 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %23 = call i32 @cf_adderror_expecting(%struct.cf_preprocessor* %21, %struct.cf_token* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @go_to_newline(%struct.cf_token** %7)
  br label %67

25:                                               ; preds = %13
  %26 = load %struct.cf_def*, %struct.cf_def** %5, align 8
  %27 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %28 = call i32 @cf_def_addparam(%struct.cf_def* %26, %struct.cf_token* %27)
  %29 = call i32 @next_token(%struct.cf_token** %7, i32 1)
  %30 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %31 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CFTOKEN_OTHER, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %25
  %36 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %37 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 44
  br i1 %42, label %43, label %56

43:                                               ; preds = %35
  %44 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %45 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 41
  br i1 %50, label %51, label %56

51:                                               ; preds = %43, %25
  %52 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %4, align 8
  %53 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %54 = call i32 @cf_adderror_expecting(%struct.cf_preprocessor* %52, %struct.cf_token* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @go_to_newline(%struct.cf_token** %7)
  br label %67

56:                                               ; preds = %43, %35
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %59 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 41
  br i1 %64, label %13, label %65

65:                                               ; preds = %57
  %66 = call i32 @next_token(%struct.cf_token** %7, i32 1)
  store i32 1, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %51, %20
  %68 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %69 = load %struct.cf_token**, %struct.cf_token*** %6, align 8
  store %struct.cf_token* %68, %struct.cf_token** %69, align 8
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @next_token(%struct.cf_token**, i32) #1

declare dso_local i32 @cf_adderror_expecting(%struct.cf_preprocessor*, %struct.cf_token*, i8*) #1

declare dso_local i32 @go_to_newline(%struct.cf_token**) #1

declare dso_local i32 @cf_def_addparam(%struct.cf_def*, %struct.cf_token*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
