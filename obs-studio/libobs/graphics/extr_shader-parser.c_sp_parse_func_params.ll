; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_func_params.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_shader-parser.c_sp_parse_func_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_parser = type { i32 }
%struct.shader_func = type { i32 }
%struct.cf_token = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.shader_var = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@PARSE_CONTINUE = common dso_local global i32 0, align 4
@PARSE_EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shader_parser*, %struct.shader_func*)* @sp_parse_func_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_parse_func_params(%struct.shader_parser* %0, %struct.shader_func* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shader_parser*, align 8
  %5 = alloca %struct.shader_func*, align 8
  %6 = alloca %struct.cf_token, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.shader_var, align 4
  store %struct.shader_parser* %0, %struct.shader_parser** %4, align 8
  store %struct.shader_func* %1, %struct.shader_func** %5, align 8
  %9 = call i32 @cf_token_clear(%struct.cf_token* %6)
  %10 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %11 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %10, i32 0, i32 0
  %12 = call i32 @cf_peek_valid_token(i32* %11, %struct.cf_token* %6)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %6, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 41
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %24 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %23, i32 0, i32 0
  %25 = call i32 @cf_next_token(i32* %24)
  br label %73

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %66, %26
  %28 = call i32 @shader_var_init(%struct.shader_var* %8)
  %29 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %30 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %29, i32 0, i32 0
  %31 = call i32 @cf_token_is(i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %27
  %34 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %35 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %34, i32 0, i32 0
  %36 = call i32 @cf_token_is(i32* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %40 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %39, i32 0, i32 0
  %41 = call i32 @cf_adderror_syntax_error(i32* %40)
  br label %42

42:                                               ; preds = %38, %33, %27
  %43 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %44 = call i32 @sp_parse_func_param(%struct.shader_parser* %43, %struct.shader_var* %8)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @PARSE_SUCCESS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = call i32 @shader_var_free(%struct.shader_var* %8)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @PARSE_CONTINUE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %73

54:                                               ; preds = %48
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @PARSE_EOF, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %74

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %42
  %62 = load %struct.shader_func*, %struct.shader_func** %5, align 8
  %63 = getelementptr inbounds %struct.shader_func, %struct.shader_func* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @da_push_back(i32 %64, %struct.shader_var* %8)
  br label %66

66:                                               ; preds = %61
  %67 = load %struct.shader_parser*, %struct.shader_parser** %4, align 8
  %68 = getelementptr inbounds %struct.shader_parser, %struct.shader_parser* %67, i32 0, i32 0
  %69 = call i32 @cf_token_is(i32* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  br i1 %71, label %27, label %72

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %53, %22
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %58, %14
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @cf_token_clear(%struct.cf_token*) #1

declare dso_local i32 @cf_peek_valid_token(i32*, %struct.cf_token*) #1

declare dso_local i32 @cf_next_token(i32*) #1

declare dso_local i32 @shader_var_init(%struct.shader_var*) #1

declare dso_local i32 @cf_token_is(i32*, i8*) #1

declare dso_local i32 @cf_adderror_syntax_error(i32*) #1

declare dso_local i32 @sp_parse_func_param(%struct.shader_parser*, %struct.shader_var*) #1

declare dso_local i32 @shader_var_free(%struct.shader_var*) #1

declare dso_local i32 @da_push_back(i32, %struct.shader_var*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
