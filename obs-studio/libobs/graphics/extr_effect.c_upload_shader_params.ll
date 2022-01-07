; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_upload_shader_params.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_upload_shader_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i64, %struct.pass_shaderparam* }
%struct.pass_shaderparam = type { i32*, %struct.gs_effect_param* }
%struct.gs_effect_param = type { %struct.TYPE_3__, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.darray*, i32)* @upload_shader_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upload_shader_params(%struct.darray* %0, i32 %1) #0 {
  %3 = alloca %struct.darray*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pass_shaderparam*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pass_shaderparam*, align 8
  %8 = alloca %struct.gs_effect_param*, align 8
  %9 = alloca i32*, align 8
  store %struct.darray* %0, %struct.darray** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.darray*, %struct.darray** %3, align 8
  %11 = getelementptr inbounds %struct.darray, %struct.darray* %10, i32 0, i32 1
  %12 = load %struct.pass_shaderparam*, %struct.pass_shaderparam** %11, align 8
  store %struct.pass_shaderparam* %12, %struct.pass_shaderparam** %5, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %83, %2
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.darray*, %struct.darray** %3, align 8
  %16 = getelementptr inbounds %struct.darray, %struct.darray* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %86

19:                                               ; preds = %13
  %20 = load %struct.pass_shaderparam*, %struct.pass_shaderparam** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.pass_shaderparam, %struct.pass_shaderparam* %20, i64 %21
  store %struct.pass_shaderparam* %22, %struct.pass_shaderparam** %7, align 8
  %23 = load %struct.pass_shaderparam*, %struct.pass_shaderparam** %7, align 8
  %24 = getelementptr inbounds %struct.pass_shaderparam, %struct.pass_shaderparam* %23, i32 0, i32 1
  %25 = load %struct.gs_effect_param*, %struct.gs_effect_param** %24, align 8
  store %struct.gs_effect_param* %25, %struct.gs_effect_param** %8, align 8
  %26 = load %struct.pass_shaderparam*, %struct.pass_shaderparam** %7, align 8
  %27 = getelementptr inbounds %struct.pass_shaderparam, %struct.pass_shaderparam* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %9, align 8
  %29 = load %struct.gs_effect_param*, %struct.gs_effect_param** %8, align 8
  %30 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %19
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.gs_effect_param*, %struct.gs_effect_param** %8, align 8
  %36 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @gs_shader_set_next_sampler(i32* %34, i64 %37)
  br label %39

39:                                               ; preds = %33, %19
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.gs_effect_param*, %struct.gs_effect_param** %8, align 8
  %44 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %83

48:                                               ; preds = %42, %39
  %49 = load %struct.gs_effect_param*, %struct.gs_effect_param** %8, align 8
  %50 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %48
  %55 = load %struct.gs_effect_param*, %struct.gs_effect_param** %8, align 8
  %56 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.gs_effect_param*, %struct.gs_effect_param** %8, align 8
  %62 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %61, i32 0, i32 0
  %63 = load %struct.gs_effect_param*, %struct.gs_effect_param** %8, align 8
  %64 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %63, i32 0, i32 1
  %65 = bitcast %struct.TYPE_3__* %62 to i64*
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @da_copy(i64 %66, i64 %68)
  br label %71

70:                                               ; preds = %54
  br label %83

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %48
  %73 = load i32*, i32** %9, align 8
  %74 = load %struct.gs_effect_param*, %struct.gs_effect_param** %8, align 8
  %75 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.gs_effect_param*, %struct.gs_effect_param** %8, align 8
  %79 = getelementptr inbounds %struct.gs_effect_param, %struct.gs_effect_param* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @gs_shader_set_val(i32* %73, i32 %77, i32 %81)
  br label %83

83:                                               ; preds = %72, %70, %47
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %6, align 8
  br label %13

86:                                               ; preds = %13
  ret void
}

declare dso_local i32 @gs_shader_set_next_sampler(i32*, i64) #1

declare dso_local i32 @da_copy(i64, i64) #1

declare dso_local i32 @gs_shader_set_val(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
