; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_func_params.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_func_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }
%struct.ep_func = type { i32 }
%struct.cf_token = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.ep_var = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@PARSE_CONTINUE = common dso_local global i32 0, align 4
@PARSE_EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.ep_func*)* @ep_parse_func_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_parse_func_params(%struct.effect_parser* %0, %struct.ep_func* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.effect_parser*, align 8
  %5 = alloca %struct.ep_func*, align 8
  %6 = alloca %struct.cf_token, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ep_var, align 4
  store %struct.effect_parser* %0, %struct.effect_parser** %4, align 8
  store %struct.ep_func* %1, %struct.ep_func** %5, align 8
  %9 = call i32 @cf_token_clear(%struct.cf_token* %6)
  %10 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %11 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %10, i32 0, i32 0
  %12 = call i32 @cf_peek_valid_token(i32* %11, %struct.cf_token* %6)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %6, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 41
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %24 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %23, i32 0, i32 0
  %25 = call i32 @cf_next_token(i32* %24)
  br label %74

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %67, %26
  %28 = call i32 @ep_var_init(%struct.ep_var* %8)
  %29 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %30 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %29, i32 0, i32 0
  %31 = call i32 @cf_token_is(i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %27
  %34 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %35 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %34, i32 0, i32 0
  %36 = call i32 @cf_token_is(i32* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %40 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %39, i32 0, i32 0
  %41 = call i32 @cf_adderror_syntax_error(i32* %40)
  br label %42

42:                                               ; preds = %38, %33, %27
  %43 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %44 = load %struct.ep_func*, %struct.ep_func** %5, align 8
  %45 = call i32 @ep_parse_func_param(%struct.effect_parser* %43, %struct.ep_func* %44, %struct.ep_var* %8)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @PARSE_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = call i32 @ep_var_free(%struct.ep_var* %8)
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @PARSE_CONTINUE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %74

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @PARSE_EOF, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %75

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61, %42
  %63 = load %struct.ep_func*, %struct.ep_func** %5, align 8
  %64 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @da_push_back(i32 %65, %struct.ep_var* %8)
  br label %67

67:                                               ; preds = %62
  %68 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %69 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %68, i32 0, i32 0
  %70 = call i32 @cf_token_is(i32* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br i1 %72, label %27, label %73

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %54, %22
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %59, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @cf_token_clear(%struct.cf_token*) #1

declare dso_local i32 @cf_peek_valid_token(i32*, %struct.cf_token*) #1

declare dso_local i32 @cf_next_token(i32*) #1

declare dso_local i32 @ep_var_init(%struct.ep_var*) #1

declare dso_local i32 @cf_token_is(i32*, i8*) #1

declare dso_local i32 @cf_adderror_syntax_error(i32*) #1

declare dso_local i32 @ep_parse_func_param(%struct.effect_parser*, %struct.ep_func*, %struct.ep_var*) #1

declare dso_local i32 @ep_var_free(%struct.ep_var*) #1

declare dso_local i32 @da_push_back(i32, %struct.ep_var*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
