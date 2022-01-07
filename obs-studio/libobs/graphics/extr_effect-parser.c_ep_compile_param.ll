; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_compile_param.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_compile_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.gs_effect_param*, %struct.gs_effect_param*, %struct.TYPE_4__ }
%struct.gs_effect_param = type { i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.gs_effect_param* }
%struct.TYPE_5__ = type { %struct.ep_param* }
%struct.ep_param = type { i32, i32, i32, %struct.gs_effect_param* }

@EFFECT_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ViewProj\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"World\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.effect_parser*, i64)* @ep_compile_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_compile_param(%struct.effect_parser* %0, i64 %1) #0 {
  %3 = alloca %struct.effect_parser*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.gs_effect_param*, align 8
  %6 = alloca %struct.ep_param*, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.effect_parser*, %struct.effect_parser** %3, align 8
  %8 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.gs_effect_param*, %struct.gs_effect_param** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %12, i64 %13
  store %struct.gs_effect_param* %14, %struct.gs_effect_param** %5, align 8
  %15 = load %struct.effect_parser*, %struct.effect_parser** %3, align 8
  %16 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.ep_param*, %struct.ep_param** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %18, i64 %19
  store %struct.ep_param* %20, %struct.ep_param** %6, align 8
  %21 = load %struct.gs_effect_param*, %struct.gs_effect_param** %5, align 8
  %22 = load %struct.ep_param*, %struct.ep_param** %6, align 8
  %23 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %22, i32 0, i32 3
  store %struct.gs_effect_param* %21, %struct.gs_effect_param** %23, align 8
  %24 = load %struct.ep_param*, %struct.ep_param** %6, align 8
  %25 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @bstrdup(i32 %26)
  %28 = load %struct.gs_effect_param*, %struct.gs_effect_param** %5, align 8
  %29 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @EFFECT_PARAM, align 4
  %31 = load %struct.gs_effect_param*, %struct.gs_effect_param** %5, align 8
  %32 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.effect_parser*, %struct.effect_parser** %3, align 8
  %34 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load %struct.gs_effect_param*, %struct.gs_effect_param** %5, align 8
  %37 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %36, i32 0, i32 2
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %37, align 8
  %38 = load %struct.gs_effect_param*, %struct.gs_effect_param** %5, align 8
  %39 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ep_param*, %struct.ep_param** %6, align 8
  %42 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @da_move(i32 %40, i32 %43)
  %45 = load %struct.ep_param*, %struct.ep_param** %6, align 8
  %46 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @get_effect_param_type(i32 %47)
  %49 = load %struct.gs_effect_param*, %struct.gs_effect_param** %5, align 8
  %50 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ep_param*, %struct.ep_param** %6, align 8
  %52 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @strcmp(i32 %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %2
  %57 = load %struct.gs_effect_param*, %struct.gs_effect_param** %5, align 8
  %58 = load %struct.effect_parser*, %struct.effect_parser** %3, align 8
  %59 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store %struct.gs_effect_param* %57, %struct.gs_effect_param** %61, align 8
  br label %75

62:                                               ; preds = %2
  %63 = load %struct.ep_param*, %struct.ep_param** %6, align 8
  %64 = getelementptr inbounds %struct.ep_param, %struct.ep_param* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @strcmp(i32 %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.gs_effect_param*, %struct.gs_effect_param** %5, align 8
  %70 = load %struct.effect_parser*, %struct.effect_parser** %3, align 8
  %71 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store %struct.gs_effect_param* %69, %struct.gs_effect_param** %73, align 8
  br label %74

74:                                               ; preds = %68, %62
  br label %75

75:                                               ; preds = %74, %56
  %76 = load %struct.ep_param*, %struct.ep_param** %6, align 8
  %77 = load %struct.gs_effect_param*, %struct.gs_effect_param** %5, align 8
  %78 = load %struct.effect_parser*, %struct.effect_parser** %3, align 8
  %79 = call i32 @ep_compile_param_annotations(%struct.ep_param* %76, %struct.gs_effect_param* %77, %struct.effect_parser* %78)
  ret void
}

declare dso_local i32 @bstrdup(i32) #1

declare dso_local i32 @da_move(i32, i32) #1

declare dso_local i32 @get_effect_param_type(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ep_compile_param_annotations(%struct.ep_param*, %struct.gs_effect_param*, %struct.effect_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
