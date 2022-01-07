; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_other.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@PARSE_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.effect_parser*)* @ep_parse_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_parse_other(%struct.effect_parser* %0) #0 {
  %2 = alloca %struct.effect_parser*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %8 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %9 = call i32 @ep_get_var_specifiers(%struct.effect_parser* %8, i32* %3, i32* %4, i32* %5)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %59

12:                                               ; preds = %1
  %13 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %14 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %13, i32 0, i32 0
  %15 = call i64 @cf_get_name(i32* %14, i8** %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i64, i64* @PARSE_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %59

19:                                               ; preds = %12
  %20 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %21 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %20, i32 0, i32 0
  %22 = call i64 @cf_next_name(i32* %21, i8** %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i64, i64* @PARSE_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %59

26:                                               ; preds = %19
  %27 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %28 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %27, i32 0, i32 0
  %29 = call i32 @cf_next_valid_token(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %59

32:                                               ; preds = %26
  %33 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %34 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %33, i32 0, i32 0
  %35 = call i64 @cf_token_is(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @report_invalid_func_keyword(%struct.effect_parser* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @report_invalid_func_keyword(%struct.effect_parser* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %42)
  %44 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @report_invalid_func_keyword(%struct.effect_parser* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  %47 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @ep_parse_function(%struct.effect_parser* %47, i8* %48, i8* %49)
  br label %64

51:                                               ; preds = %32
  %52 = load %struct.effect_parser*, %struct.effect_parser** %2, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @ep_parse_param(%struct.effect_parser* %52, i8* %53, i8* %54, i32 %55, i32 %56, i32 %57)
  br label %64

59:                                               ; preds = %31, %25, %18, %11
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @bfree(i8* %60)
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @bfree(i8* %62)
  br label %64

64:                                               ; preds = %59, %51, %37
  ret void
}

declare dso_local i32 @ep_get_var_specifiers(%struct.effect_parser*, i32*, i32*, i32*) #1

declare dso_local i64 @cf_get_name(i32*, i8**, i8*, i8*) #1

declare dso_local i64 @cf_next_name(i32*, i8**, i8*, i8*) #1

declare dso_local i32 @cf_next_valid_token(i32*) #1

declare dso_local i64 @cf_token_is(i32*, i8*) #1

declare dso_local i32 @report_invalid_func_keyword(%struct.effect_parser*, i8*, i32) #1

declare dso_local i32 @ep_parse_function(%struct.effect_parser*, i8*, i8*) #1

declare dso_local i32 @ep_parse_param(%struct.effect_parser*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
