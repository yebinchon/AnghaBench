; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_clear_tex_params.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_effect.c_clear_tex_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.darray = type { i64, %struct.pass_shaderparam* }
%struct.pass_shaderparam = type { i32 }
%struct.gs_shader_param_info = type { i64 }

@GS_SHADER_PARAM_TEXTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.darray*)* @clear_tex_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_tex_params(%struct.darray* %0) #0 {
  %2 = alloca %struct.darray*, align 8
  %3 = alloca %struct.pass_shaderparam*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pass_shaderparam*, align 8
  %6 = alloca %struct.gs_shader_param_info, align 8
  store %struct.darray* %0, %struct.darray** %2, align 8
  %7 = load %struct.darray*, %struct.darray** %2, align 8
  %8 = getelementptr inbounds %struct.darray, %struct.darray* %7, i32 0, i32 1
  %9 = load %struct.pass_shaderparam*, %struct.pass_shaderparam** %8, align 8
  store %struct.pass_shaderparam* %9, %struct.pass_shaderparam** %3, align 8
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.darray*, %struct.darray** %2, align 8
  %13 = getelementptr inbounds %struct.darray, %struct.darray* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  %17 = load %struct.pass_shaderparam*, %struct.pass_shaderparam** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.pass_shaderparam, %struct.pass_shaderparam* %17, i64 %18
  store %struct.pass_shaderparam* %19, %struct.pass_shaderparam** %5, align 8
  %20 = load %struct.pass_shaderparam*, %struct.pass_shaderparam** %5, align 8
  %21 = getelementptr inbounds %struct.pass_shaderparam, %struct.pass_shaderparam* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gs_shader_get_param_info(i32 %22, %struct.gs_shader_param_info* %6)
  %24 = getelementptr inbounds %struct.gs_shader_param_info, %struct.gs_shader_param_info* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @GS_SHADER_PARAM_TEXTURE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load %struct.pass_shaderparam*, %struct.pass_shaderparam** %5, align 8
  %30 = getelementptr inbounds %struct.pass_shaderparam, %struct.pass_shaderparam* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gs_shader_set_texture(i32 %31, i32* null)
  br label %33

33:                                               ; preds = %28, %16
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %10

37:                                               ; preds = %10
  ret void
}

declare dso_local i32 @gs_shader_get_param_info(i32, %struct.gs_shader_param_info*) #1

declare dso_local i32 @gs_shader_set_texture(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
