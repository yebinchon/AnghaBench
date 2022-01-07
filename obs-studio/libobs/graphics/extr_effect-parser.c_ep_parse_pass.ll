; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_pass.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ep_pass = type { i32 }
%struct.cf_token = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@PARSE_UNEXPECTED_CONTINUE = common dso_local global i32 0, align 4
@PARSE_EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@PARSE_CONTINUE = common dso_local global i32 0, align 4
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.ep_pass*)* @ep_parse_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_parse_pass(%struct.effect_parser* %0, %struct.ep_pass* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.effect_parser*, align 8
  %5 = alloca %struct.ep_pass*, align 8
  %6 = alloca %struct.cf_token, align 4
  %7 = alloca i32, align 4
  store %struct.effect_parser* %0, %struct.effect_parser** %4, align 8
  store %struct.ep_pass* %1, %struct.ep_pass** %5, align 8
  %8 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %9 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %8, i32 0, i32 0
  %10 = call i32 @cf_token_is(%struct.TYPE_9__* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @PARSE_UNEXPECTED_CONTINUE, align 4
  store i32 %13, i32* %3, align 4
  br label %88

14:                                               ; preds = %2
  %15 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %16 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %15, i32 0, i32 0
  %17 = call i32 @cf_next_valid_token(%struct.TYPE_9__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @PARSE_EOF, align 4
  store i32 %20, i32* %3, align 4
  br label %88

21:                                               ; preds = %14
  %22 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %23 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %22, i32 0, i32 0
  %24 = call i32 @cf_token_is(%struct.TYPE_9__* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %51, label %26

26:                                               ; preds = %21
  %27 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %28 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %35 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bstrdup_n(i32 %33, i32 %40)
  %42 = load %struct.ep_pass*, %struct.ep_pass** %5, align 8
  %43 = getelementptr inbounds %struct.ep_pass, %struct.ep_pass* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %45 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %44, i32 0, i32 0
  %46 = call i32 @cf_next_valid_token(%struct.TYPE_9__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %26
  %49 = load i32, i32* @PARSE_EOF, align 4
  store i32 %49, i32* %3, align 4
  br label %88

50:                                               ; preds = %26
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %53 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %52, i32 0, i32 0
  %54 = call i32 @cf_peek_valid_token(%struct.TYPE_9__* %53, %struct.cf_token* %6)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @PARSE_EOF, align 4
  store i32 %57, i32* %3, align 4
  br label %88

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %82, %58
  %60 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %6, i32 0, i32 0
  %61 = call i64 @strref_cmp(i32* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %65 = load %struct.ep_pass*, %struct.ep_pass** %5, align 8
  %66 = call i32 @ep_parse_pass_command(%struct.effect_parser* %64, %struct.ep_pass* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @PARSE_CONTINUE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %88

75:                                               ; preds = %69, %63
  %76 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %77 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %76, i32 0, i32 0
  %78 = call i32 @cf_peek_valid_token(%struct.TYPE_9__* %77, %struct.cf_token* %6)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @PARSE_EOF, align 4
  store i32 %81, i32* %3, align 4
  br label %88

82:                                               ; preds = %75
  br label %59

83:                                               ; preds = %59
  %84 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %85 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %84, i32 0, i32 0
  %86 = call i32 @cf_next_token(%struct.TYPE_9__* %85)
  %87 = load i32, i32* @PARSE_SUCCESS, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %80, %73, %56, %48, %19, %12
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @cf_token_is(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @cf_next_valid_token(%struct.TYPE_9__*) #1

declare dso_local i32 @bstrdup_n(i32, i32) #1

declare dso_local i32 @cf_peek_valid_token(%struct.TYPE_9__*, %struct.cf_token*) #1

declare dso_local i64 @strref_cmp(i32*, i8*) #1

declare dso_local i32 @ep_parse_pass_command(%struct.effect_parser*, %struct.ep_pass*) #1

declare dso_local i32 @cf_next_token(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
