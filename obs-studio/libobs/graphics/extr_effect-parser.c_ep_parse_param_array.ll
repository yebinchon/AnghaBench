; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_param_array.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_param_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ep_param = type { i32 }

@CFTOKEN_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@PARSE_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.ep_param*)* @ep_parse_param_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_parse_param_array(%struct.effect_parser* %0, %struct.ep_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.effect_parser*, align 8
  %5 = alloca %struct.ep_param*, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %4, align 8
  store %struct.ep_param* %1, %struct.ep_param** %5, align 8
  %6 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %7 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %6, i32 0, i32 0
  %8 = call i32 @cf_next_valid_token(%struct.TYPE_7__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

11:                                               ; preds = %2
  %12 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %13 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CFTOKEN_NUM, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %37, label %20

20:                                               ; preds = %11
  %21 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %22 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %29 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @valid_int_str(i32 %27, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %20, %11
  store i32 0, i32* %3, align 4
  br label %63

38:                                               ; preds = %20
  %39 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %40 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @strtol(i32 %45, i32* null, i32 10)
  %47 = trunc i64 %46 to i32
  %48 = load %struct.ep_param*, %struct.ep_param** %5, align 8
  %49 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %51 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %50, i32 0, i32 0
  %52 = call i64 @cf_next_token_should_be(%struct.TYPE_7__* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %53 = load i64, i64* @PARSE_EOF, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %63

56:                                               ; preds = %38
  %57 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %58 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %57, i32 0, i32 0
  %59 = call i32 @cf_next_valid_token(%struct.TYPE_7__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %63

62:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %61, %55, %37, %10
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @cf_next_valid_token(%struct.TYPE_7__*) #1

declare dso_local i32 @valid_int_str(i32, i32) #1

declare dso_local i64 @strtol(i32, i32*, i32) #1

declare dso_local i64 @cf_next_token_should_be(%struct.TYPE_7__*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
