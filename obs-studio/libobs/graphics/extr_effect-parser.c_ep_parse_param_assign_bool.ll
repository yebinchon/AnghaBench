; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_param_assign_bool.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_param_assign_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }
%struct.ep_param = type { i32 }

@PARSE_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"true or false\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.ep_param*)* @ep_parse_param_assign_bool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_parse_param_assign_bool(%struct.effect_parser* %0, %struct.ep_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.effect_parser*, align 8
  %5 = alloca %struct.ep_param*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %4, align 8
  store %struct.ep_param* %1, %struct.ep_param** %5, align 8
  %8 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %9 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %8, i32 0, i32 0
  %10 = call i32 @cf_next_valid_token(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @PARSE_EOF, align 4
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %16 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %15, i32 0, i32 0
  %17 = call i64 @cf_token_is(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  store i64 1, i64* %6, align 8
  %20 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %21 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @da_push_back_array(i32 %22, i64* %6, i32 8)
  %24 = load i32, i32* @PARSE_SUCCESS, align 4
  store i32 %24, i32* %3, align 4
  br label %42

25:                                               ; preds = %14
  %26 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %27 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %26, i32 0, i32 0
  %28 = call i64 @cf_token_is(i32* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  store i64 0, i64* %7, align 8
  %31 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %32 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @da_push_back_array(i32 %33, i64* %7, i32 8)
  %35 = load i32, i32* @PARSE_SUCCESS, align 4
  store i32 %35, i32* %3, align 4
  br label %42

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %39 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %38, i32 0, i32 0
  %40 = call i32 @cf_adderror_expecting(i32* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @PARSE_EOF, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %30, %19, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @cf_next_valid_token(i32*) #1

declare dso_local i64 @cf_token_is(i32*, i8*) #1

declare dso_local i32 @da_push_back_array(i32, i64*, i32) #1

declare dso_local i32 @cf_adderror_expecting(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
