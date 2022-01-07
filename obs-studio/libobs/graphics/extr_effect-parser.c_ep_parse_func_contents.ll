; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_func_contents.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_parse_func_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.ep_func = type { i32 }

@CFTOKEN_NONE = common dso_local global i64 0, align 8
@CFTOKEN_SPACETAB = common dso_local global i64 0, align 8
@CFTOKEN_NEWLINE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.ep_func*)* @ep_parse_func_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_parse_func_contents(%struct.effect_parser* %0, %struct.ep_func* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.effect_parser*, align 8
  %5 = alloca %struct.ep_func*, align 8
  %6 = alloca i32, align 4
  store %struct.effect_parser* %0, %struct.effect_parser** %4, align 8
  store %struct.ep_func* %1, %struct.ep_func** %5, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.ep_func*, %struct.ep_func** %5, align 8
  %8 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %7, i32 0, i32 0
  %9 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %10 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = call i32 @dstr_cat_strref(i32* %8, i32* %13)
  br label %15

15:                                               ; preds = %88, %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %97

18:                                               ; preds = %15
  %19 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %20 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 1
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %21, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CFTOKEN_NONE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %98

29:                                               ; preds = %18
  %30 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %31 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CFTOKEN_SPACETAB, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %47, label %38

38:                                               ; preds = %29
  %39 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %40 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CFTOKEN_NEWLINE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38, %29
  br label %88

48:                                               ; preds = %38
  %49 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %50 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %49, i32 0, i32 0
  %51 = call i64 @cf_token_is(%struct.TYPE_6__* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %87

56:                                               ; preds = %48
  %57 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %58 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %57, i32 0, i32 0
  %59 = call i64 @cf_token_is(%struct.TYPE_6__* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %6, align 4
  br label %86

64:                                               ; preds = %56
  %65 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %66 = load %struct.ep_func*, %struct.ep_func** %5, align 8
  %67 = call i64 @ep_process_struct_dep(%struct.effect_parser* %65, %struct.ep_func* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %64
  %70 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %71 = load %struct.ep_func*, %struct.ep_func** %5, align 8
  %72 = call i64 @ep_process_func_dep(%struct.effect_parser* %70, %struct.ep_func* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %76 = load %struct.ep_func*, %struct.ep_func** %5, align 8
  %77 = call i64 @ep_process_sampler_dep(%struct.effect_parser* %75, %struct.ep_func* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %81 = load %struct.ep_func*, %struct.ep_func** %5, align 8
  %82 = call i64 @ep_process_param_dep(%struct.effect_parser* %80, %struct.ep_func* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %74, %69, %64
  br label %85

85:                                               ; preds = %84, %79
  br label %86

86:                                               ; preds = %85, %61
  br label %87

87:                                               ; preds = %86, %53
  br label %88

88:                                               ; preds = %87, %47
  %89 = load %struct.ep_func*, %struct.ep_func** %5, align 8
  %90 = getelementptr inbounds %struct.ep_func, %struct.ep_func* %89, i32 0, i32 0
  %91 = load %struct.effect_parser*, %struct.effect_parser** %4, align 8
  %92 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = call i32 @dstr_cat_strref(i32* %90, i32* %95)
  br label %15

97:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %28
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @dstr_cat_strref(i32*, i32*) #1

declare dso_local i64 @cf_token_is(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @ep_process_struct_dep(%struct.effect_parser*, %struct.ep_func*) #1

declare dso_local i64 @ep_process_func_dep(%struct.effect_parser*, %struct.ep_func*) #1

declare dso_local i64 @ep_process_sampler_dep(%struct.effect_parser*, %struct.ep_func*) #1

declare dso_local i64 @ep_process_param_dep(%struct.effect_parser*, %struct.ep_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
