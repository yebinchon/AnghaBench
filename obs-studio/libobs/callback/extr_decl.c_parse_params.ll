; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_decl.c_parse_params.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_decl.c_parse_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_parser = type { i32 }
%struct.decl_info = type { i32 }
%struct.cf_token = type { i64 }

@CFTOKEN_NAME = common dso_local global i64 0, align 8
@PARSE_EOF = common dso_local global i32 0, align 4
@PARSE_CONTINUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_parser*, %struct.decl_info*)* @parse_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_params(%struct.cf_parser* %0, %struct.decl_info* %1) #0 {
  %3 = alloca %struct.cf_parser*, align 8
  %4 = alloca %struct.decl_info*, align 8
  %5 = alloca %struct.cf_token, align 8
  %6 = alloca i32, align 4
  store %struct.cf_parser* %0, %struct.cf_parser** %3, align 8
  store %struct.decl_info* %1, %struct.decl_info** %4, align 8
  %7 = load %struct.cf_parser*, %struct.cf_parser** %3, align 8
  %8 = call i32 @cf_peek_valid_token(%struct.cf_parser* %7, %struct.cf_token* %5)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %59

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %51, %11
  %13 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %5, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CFTOKEN_NAME, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %12
  %18 = load %struct.cf_parser*, %struct.cf_parser** %3, align 8
  %19 = load %struct.decl_info*, %struct.decl_info** %4, align 8
  %20 = call i32 @parse_param(%struct.cf_parser* %18, %struct.decl_info* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PARSE_EOF, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %59

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PARSE_CONTINUE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.cf_parser*, %struct.cf_parser** %3, align 8
  %31 = call i32 @cf_next_valid_token(%struct.cf_parser* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %59

34:                                               ; preds = %29, %25
  %35 = load %struct.cf_parser*, %struct.cf_parser** %3, align 8
  %36 = call i64 @cf_token_is(%struct.cf_parser* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %52

39:                                               ; preds = %34
  %40 = load %struct.cf_parser*, %struct.cf_parser** %3, align 8
  %41 = call i32 @cf_token_should_be(%struct.cf_parser* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %42 = load i32, i32* @PARSE_EOF, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %59

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.cf_parser*, %struct.cf_parser** %3, align 8
  %48 = call i32 @cf_peek_valid_token(%struct.cf_parser* %47, %struct.cf_token* %5)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %59

51:                                               ; preds = %46
  br label %12

52:                                               ; preds = %38, %12
  %53 = load %struct.cf_parser*, %struct.cf_parser** %3, align 8
  %54 = call i64 @cf_token_is(%struct.cf_parser* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = load %struct.cf_parser*, %struct.cf_parser** %3, align 8
  %58 = call i32 @cf_next_token_should_be(%struct.cf_parser* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null, i32* null)
  br label %59

59:                                               ; preds = %10, %24, %33, %44, %50, %56, %52
  ret void
}

declare dso_local i32 @cf_peek_valid_token(%struct.cf_parser*, %struct.cf_token*) #1

declare dso_local i32 @parse_param(%struct.cf_parser*, %struct.decl_info*) #1

declare dso_local i32 @cf_next_valid_token(%struct.cf_parser*) #1

declare dso_local i64 @cf_token_is(%struct.cf_parser*, i8*) #1

declare dso_local i32 @cf_token_should_be(%struct.cf_parser*, i8*, i8*, i32*) #1

declare dso_local i32 @cf_next_token_should_be(%struct.cf_parser*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
