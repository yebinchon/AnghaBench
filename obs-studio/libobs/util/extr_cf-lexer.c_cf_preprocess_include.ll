; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_include.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_preprocess_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_preprocessor = type { i64 }
%struct.cf_token = type { i64, i32 }

@CFTOKEN_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid or incomplete string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_preprocessor*, %struct.cf_token**)* @cf_preprocess_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_preprocess_include(%struct.cf_preprocessor* %0, %struct.cf_token** %1) #0 {
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
  br label %60

15:                                               ; preds = %2
  %16 = call i32 @next_token(%struct.cf_token** %5, i32 1)
  %17 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %18 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CFTOKEN_STRING, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %24 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %25 = call i32 @cf_adderror_expecting(%struct.cf_preprocessor* %23, %struct.cf_token* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @go_to_newline(%struct.cf_token** %5)
  br label %57

27:                                               ; preds = %15
  %28 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %29 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %28, i32 0, i32 1
  %30 = call i64 @is_sys_include(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %54

33:                                               ; preds = %27
  %34 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %35 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %34, i32 0, i32 1
  %36 = call i64 @is_loc_include(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %40 = getelementptr inbounds %struct.cf_preprocessor, %struct.cf_preprocessor* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %45 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %46 = call i32 @cf_include_file(%struct.cf_preprocessor* %44, %struct.cf_token* %45)
  br label %47

47:                                               ; preds = %43, %38
  br label %53

48:                                               ; preds = %33
  %49 = load %struct.cf_preprocessor*, %struct.cf_preprocessor** %3, align 8
  %50 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %51 = call i32 @cf_adderror(%struct.cf_preprocessor* %49, %struct.cf_token* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, i32* null)
  %52 = call i32 @go_to_newline(%struct.cf_token** %5)
  br label %57

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %32
  %55 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %56 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %55, i32 1
  store %struct.cf_token* %56, %struct.cf_token** %5, align 8
  br label %57

57:                                               ; preds = %54, %48, %22
  %58 = load %struct.cf_token*, %struct.cf_token** %5, align 8
  %59 = load %struct.cf_token**, %struct.cf_token*** %4, align 8
  store %struct.cf_token* %58, %struct.cf_token** %59, align 8
  br label %60

60:                                               ; preds = %57, %12
  ret void
}

declare dso_local i32 @go_to_newline(%struct.cf_token**) #1

declare dso_local i32 @next_token(%struct.cf_token**, i32) #1

declare dso_local i32 @cf_adderror_expecting(%struct.cf_preprocessor*, %struct.cf_token*, i8*) #1

declare dso_local i64 @is_sys_include(i32*) #1

declare dso_local i64 @is_loc_include(i32*) #1

declare dso_local i32 @cf_include_file(%struct.cf_preprocessor*, %struct.cf_token*) #1

declare dso_local i32 @cf_adderror(%struct.cf_preprocessor*, %struct.cf_token*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
