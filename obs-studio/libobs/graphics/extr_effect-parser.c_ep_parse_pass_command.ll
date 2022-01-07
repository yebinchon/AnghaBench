; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_pass_command.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_pass_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }
%struct.ep_pass = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.darray }
%struct.darray = type { i32 }
%struct.TYPE_3__ = type { %struct.darray }

@PARSE_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"vertex_shader\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"vertex_program\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"pixel_shader\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"pixel_program\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@PARSE_CONTINUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@PARSE_SUCCESS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"compile\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"compile keyword not necessary\00", align 1
@LEX_WARNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.ep_pass*)* @ep_parse_pass_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_parse_pass_command(%struct.effect_parser* %0, %struct.ep_pass* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.effect_parser*, align 8
  %5 = alloca %struct.ep_pass*, align 8
  %6 = alloca %struct.darray*, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %4, align 8
  store %struct.ep_pass* %1, %struct.ep_pass** %5, align 8
  %7 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %8 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %7, i32 0, i32 0
  %9 = call i32 @cf_next_valid_token(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @PARSE_EOF, align 4
  store i32 %12, i32* %3, align 4
  br label %90

13:                                               ; preds = %2
  %14 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %15 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %14, i32 0, i32 0
  %16 = call i64 @cf_token_is(i32* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %20 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %19, i32 0, i32 0
  %21 = call i64 @cf_token_is(i32* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18, %13
  %24 = load %struct.ep_pass*, %struct.ep_pass** %5, align 8
  %25 = getelementptr inbounds %struct.ep_pass, %struct.ep_pass* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.darray* %26, %struct.darray** %6, align 8
  br label %54

27:                                               ; preds = %18
  %28 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %29 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %28, i32 0, i32 0
  %30 = call i64 @cf_token_is(i32* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %34 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %33, i32 0, i32 0
  %35 = call i64 @cf_token_is(i32* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32, %27
  %38 = load %struct.ep_pass*, %struct.ep_pass** %5, align 8
  %39 = getelementptr inbounds %struct.ep_pass, %struct.ep_pass* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store %struct.darray* %40, %struct.darray** %6, align 8
  br label %53

41:                                               ; preds = %32
  %42 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %43 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %42, i32 0, i32 0
  %44 = call i32 @cf_adderror_syntax_error(i32* %43)
  %45 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %46 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %45, i32 0, i32 0
  %47 = call i32 @cf_go_to_valid_token(i32* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @PARSE_EOF, align 4
  store i32 %50, i32* %3, align 4
  br label %90

51:                                               ; preds = %41
  %52 = load i32, i32* @PARSE_CONTINUE, align 4
  store i32 %52, i32* %3, align 4
  br label %90

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %23
  %55 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %56 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %55, i32 0, i32 0
  %57 = call i64 @cf_next_token_should_be(i32* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i64, i64* @PARSE_SUCCESS, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @PARSE_CONTINUE, align 4
  store i32 %61, i32* %3, align 4
  br label %90

62:                                               ; preds = %54
  %63 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %64 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %63, i32 0, i32 0
  %65 = call i32 @cf_next_valid_token(i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @PARSE_EOF, align 4
  store i32 %68, i32* %3, align 4
  br label %90

69:                                               ; preds = %62
  %70 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %71 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %70, i32 0, i32 0
  %72 = call i64 @cf_token_is(i32* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %76 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %75, i32 0, i32 0
  %77 = load i32, i32* @LEX_WARNING, align 4
  %78 = call i32 @cf_adderror(i32* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %77, i32* null, i32* null, i32* null)
  %79 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %80 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %79, i32 0, i32 0
  %81 = call i32 @cf_next_valid_token(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %74
  %84 = load i32, i32* @PARSE_EOF, align 4
  store i32 %84, i32* %3, align 4
  br label %90

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %69
  %87 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %88 = load %struct.darray*, %struct.darray** %6, align 8
  %89 = call i32 @ep_parse_pass_command_call(%struct.effect_parser* %87, %struct.darray* %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %83, %67, %60, %51, %49, %11
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @cf_next_valid_token(i32*) #1

declare dso_local i64 @cf_token_is(i32*, i8*) #1

declare dso_local i32 @cf_adderror_syntax_error(i32*) #1

declare dso_local i32 @cf_go_to_valid_token(i32*, i8*, i8*) #1

declare dso_local i64 @cf_next_token_should_be(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @cf_adderror(i32*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ep_parse_pass_command_call(%struct.effect_parser*, %struct.darray*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
