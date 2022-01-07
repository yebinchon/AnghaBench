; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_compile_pass_shaderparams.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect-parser.c_ep_compile_pass_shaderparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.effect_parser = type { i32 }
%struct.darray = type { i64 }
%struct.dstr = type { i32 }
%struct.pass_shaderparam = type { i32, i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Effect shader parameter not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.effect_parser*, %struct.darray*, %struct.darray*, i32*)* @ep_compile_pass_shaderparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_compile_pass_shaderparams(%struct.effect_parser* %0, %struct.darray* %1, %struct.darray* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.effect_parser*, align 8
  %7 = alloca %struct.darray*, align 8
  %8 = alloca %struct.darray*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dstr*, align 8
  %12 = alloca %struct.pass_shaderparam*, align 8
  store %struct.effect_parser* %0, %struct.effect_parser** %6, align 8
  store %struct.darray* %1, %struct.darray** %7, align 8
  store %struct.darray* %2, %struct.darray** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.darray*, %struct.darray** %7, align 8
  %14 = load %struct.darray*, %struct.darray** %8, align 8
  %15 = getelementptr inbounds %struct.darray, %struct.darray* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @darray_resize(i32 8, %struct.darray* %13, i64 %16)
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %57, %4
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.darray*, %struct.darray** %7, align 8
  %21 = getelementptr inbounds %struct.darray, %struct.darray* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %18
  %25 = load %struct.darray*, %struct.darray** %8, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i8* @darray_item(i32 4, %struct.darray* %25, i64 %26)
  %28 = bitcast i8* %27 to %struct.dstr*
  store %struct.dstr* %28, %struct.dstr** %11, align 8
  %29 = load %struct.darray*, %struct.darray** %7, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i8* @darray_item(i32 8, %struct.darray* %29, i64 %30)
  %32 = bitcast i8* %31 to %struct.pass_shaderparam*
  store %struct.pass_shaderparam* %32, %struct.pass_shaderparam** %12, align 8
  %33 = load %struct.effect_parser*, %struct.effect_parser** %6, align 8
  %34 = getelementptr inbounds %struct.effect_parser, %struct.effect_parser* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dstr*, %struct.dstr** %11, align 8
  %37 = getelementptr inbounds %struct.dstr, %struct.dstr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @gs_effect_get_param_by_name(i32 %35, i32 %38)
  %40 = load %struct.pass_shaderparam*, %struct.pass_shaderparam** %12, align 8
  %41 = getelementptr inbounds %struct.pass_shaderparam, %struct.pass_shaderparam* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load %struct.dstr*, %struct.dstr** %11, align 8
  %44 = getelementptr inbounds %struct.dstr, %struct.dstr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @gs_shader_get_param_by_name(i32* %42, i32 %45)
  %47 = load %struct.pass_shaderparam*, %struct.pass_shaderparam** %12, align 8
  %48 = getelementptr inbounds %struct.pass_shaderparam, %struct.pass_shaderparam* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.pass_shaderparam*, %struct.pass_shaderparam** %12, align 8
  %50 = getelementptr inbounds %struct.pass_shaderparam, %struct.pass_shaderparam* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %24
  %54 = load i32, i32* @LOG_ERROR, align 4
  %55 = call i32 @blog(i32 %54, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %61

56:                                               ; preds = %24
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %10, align 8
  br label %18

60:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %53
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @darray_resize(i32, %struct.darray*, i64) #1

declare dso_local i8* @darray_item(i32, %struct.darray*, i64) #1

declare dso_local i32 @gs_effect_get_param_by_name(i32, i32) #1

declare dso_local i32 @gs_shader_get_param_by_name(i32*, i32) #1

declare dso_local i32 @blog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
