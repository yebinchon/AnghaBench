; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_param_assign_string.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_param_assign_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ep_param = type { i32 }

@PARSE_EOF = common dso_local global i32 0, align 4
@CFTOKEN_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@PARSE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.ep_param*)* @ep_parse_param_assign_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_parse_param_assign_string(%struct.effect_parser* %0, %struct.ep_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.effect_parser*, align 8
  %5 = alloca %struct.ep_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %4, align 8
  store %struct.ep_param* %1, %struct.ep_param** %5, align 8
  store i8* null, i8** %7, align 8
  %8 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %9 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %8, i32 0, i32 0
  %10 = call i32 @cf_next_valid_token(%struct.TYPE_7__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @PARSE_EOF, align 4
  store i32 %13, i32* %3, align 4
  br label %55

14:                                               ; preds = %2
  %15 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %16 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %15, i32 0, i32 0
  %17 = load i32, i32* @CFTOKEN_STRING, align 4
  %18 = call i32 @cf_token_is_type(%struct.TYPE_7__* %16, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PARSE_SUCCESS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %55

24:                                               ; preds = %14
  %25 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %26 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %33 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cf_literal_to_str(i32 %31, i32 %38)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %24
  %43 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %44 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = add nsw i64 %48, 1
  %50 = call i32 @da_copy_array(i32 %45, i8* %46, i64 %49)
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @bfree(i8* %51)
  br label %53

53:                                               ; preds = %42, %24
  %54 = load i32, i32* @PARSE_SUCCESS, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %22, %12
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @cf_next_valid_token(%struct.TYPE_7__*) #1

declare dso_local i32 @cf_token_is_type(%struct.TYPE_7__*, i32, i8*, i8*) #1

declare dso_local i8* @cf_literal_to_str(i32, i32) #1

declare dso_local i32 @da_copy_array(i32, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
