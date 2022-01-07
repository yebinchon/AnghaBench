; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_compile_pass.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_compile_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }
%struct.gs_effect_technique = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.gs_effect_pass* }
%struct.gs_effect_pass = type { i8*, i32 }
%struct.ep_technique = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ep_pass* }
%struct.ep_pass = type { i32 }

@EFFECT_PASS = common dso_local global i32 0, align 4
@GS_SHADER_VERTEX = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Pass (%zu) <%s> missing vertex shader!\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GS_SHADER_PIXEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Pass (%zu) <%s> missing pixel shader!\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.gs_effect_technique*, %struct.ep_technique*, i64)* @ep_compile_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_compile_pass(%struct.effect_parser* %0, %struct.gs_effect_technique* %1, %struct.ep_technique* %2, i64 %3) #0 {
  %5 = alloca %struct.effect_parser*, align 8
  %6 = alloca %struct.gs_effect_technique*, align 8
  %7 = alloca %struct.ep_technique*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gs_effect_pass*, align 8
  %10 = alloca %struct.ep_pass*, align 8
  %11 = alloca i32, align 4
  store %struct.effect_parser* %0, %struct.effect_parser** %5, align 8
  store %struct.gs_effect_technique* %1, %struct.gs_effect_technique** %6, align 8
  store %struct.ep_technique* %2, %struct.ep_technique** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 1, i32* %11, align 4
  %12 = load %struct.gs_effect_technique*, %struct.gs_effect_technique** %6, align 8
  %13 = getelementptr inbounds %struct.gs_effect_technique, %struct.gs_effect_technique* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %14, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %15, i64 %16
  store %struct.gs_effect_pass* %17, %struct.gs_effect_pass** %9, align 8
  %18 = load %struct.ep_technique*, %struct.ep_technique** %7, align 8
  %19 = getelementptr inbounds %struct.ep_technique, %struct.ep_technique* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.ep_pass*, %struct.ep_pass** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.ep_pass, %struct.ep_pass* %21, i64 %22
  store %struct.ep_pass* %23, %struct.ep_pass** %10, align 8
  %24 = load %struct.ep_pass*, %struct.ep_pass** %10, align 8
  %25 = getelementptr inbounds %struct.ep_pass, %struct.ep_pass* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @bstrdup(i32 %26)
  %28 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %9, align 8
  %29 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @EFFECT_PASS, align 4
  %31 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %9, align 8
  %32 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %34 = load %struct.gs_effect_technique*, %struct.gs_effect_technique** %6, align 8
  %35 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %9, align 8
  %36 = load %struct.ep_pass*, %struct.ep_pass** %10, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* @GS_SHADER_VERTEX, align 4
  %39 = call i32 @ep_compile_pass_shader(%struct.effect_parser* %33, %struct.gs_effect_technique* %34, %struct.gs_effect_pass* %35, %struct.ep_pass* %36, i64 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %42 = load i32, i32* @LOG_ERROR, align 4
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %9, align 8
  %45 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %9, align 8
  %50 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  br label %53

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i8* [ %51, %48 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %52 ]
  %55 = call i32 @blog(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %43, i8* %54)
  br label %56

56:                                               ; preds = %53, %4
  %57 = load %struct.effect_parser*, %struct.effect_parser** %5, align 8
  %58 = load %struct.gs_effect_technique*, %struct.gs_effect_technique** %6, align 8
  %59 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %9, align 8
  %60 = load %struct.ep_pass*, %struct.ep_pass** %10, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* @GS_SHADER_PIXEL, align 4
  %63 = call i32 @ep_compile_pass_shader(%struct.effect_parser* %57, %struct.gs_effect_technique* %58, %struct.gs_effect_pass* %59, %struct.ep_pass* %60, i64 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  %66 = load i32, i32* @LOG_ERROR, align 4
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %9, align 8
  %69 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load %struct.gs_effect_pass*, %struct.gs_effect_pass** %9, align 8
  %74 = getelementptr inbounds %struct.gs_effect_pass, %struct.gs_effect_pass* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  br label %77

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %72
  %78 = phi i8* [ %75, %72 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %76 ]
  %79 = call i32 @blog(i32 %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %67, i8* %78)
  br label %80

80:                                               ; preds = %77, %56
  %81 = load i32, i32* %11, align 4
  ret i32 %81
}

declare dso_local i8* @bstrdup(i32) #1

declare dso_local i32 @ep_compile_pass_shader(%struct.effect_parser*, %struct.gs_effect_technique*, %struct.gs_effect_pass*, %struct.ep_pass*, i64, i32) #1

declare dso_local i32 @blog(i32, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
