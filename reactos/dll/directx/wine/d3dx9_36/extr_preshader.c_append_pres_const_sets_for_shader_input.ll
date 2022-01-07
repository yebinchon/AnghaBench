; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_append_pres_const_sets_for_shader_input.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_append_pres_const_sets_for_shader_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_const_tab = type { i32 }
%struct.d3dx_preshader = type { i32, %struct.d3dx_pres_ins* }
%struct.d3dx_pres_ins = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.d3dx_pres_reg }
%struct.d3dx_pres_reg = type { i64, i32 }
%struct.d3dx_const_param_eval_output = type { i32, i64, i32, i32, i32, i32* }

@PRES_REGTAB_TEMP = common dso_local global i64 0, align 8
@D3DXPC_FORCE_DWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_const_tab*, %struct.d3dx_preshader*)* @append_pres_const_sets_for_shader_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_pres_const_sets_for_shader_input(%struct.d3dx_const_tab* %0, %struct.d3dx_preshader* %1) #0 {
  %3 = alloca %struct.d3dx_const_tab*, align 8
  %4 = alloca %struct.d3dx_preshader*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.d3dx_const_param_eval_output, align 8
  %7 = alloca %struct.d3dx_pres_ins*, align 8
  %8 = alloca %struct.d3dx_pres_reg*, align 8
  store %struct.d3dx_const_tab* %0, %struct.d3dx_const_tab** %3, align 8
  store %struct.d3dx_preshader* %1, %struct.d3dx_preshader** %4, align 8
  %9 = bitcast %struct.d3dx_const_param_eval_output* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 40, i1 false)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %51, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %4, align 8
  %13 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %10
  %17 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %4, align 8
  %18 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %17, i32 0, i32 1
  %19 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %19, i64 %21
  store %struct.d3dx_pres_ins* %22, %struct.d3dx_pres_ins** %7, align 8
  %23 = load %struct.d3dx_pres_ins*, %struct.d3dx_pres_ins** %7, align 8
  %24 = getelementptr inbounds %struct.d3dx_pres_ins, %struct.d3dx_pres_ins* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.d3dx_pres_reg* %25, %struct.d3dx_pres_reg** %8, align 8
  %26 = load %struct.d3dx_pres_reg*, %struct.d3dx_pres_reg** %8, align 8
  %27 = getelementptr inbounds %struct.d3dx_pres_reg, %struct.d3dx_pres_reg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PRES_REGTAB_TEMP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %51

32:                                               ; preds = %16
  %33 = load %struct.d3dx_pres_reg*, %struct.d3dx_pres_reg** %8, align 8
  %34 = getelementptr inbounds %struct.d3dx_pres_reg, %struct.d3dx_pres_reg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.d3dx_pres_reg*, %struct.d3dx_pres_reg** %8, align 8
  %37 = getelementptr inbounds %struct.d3dx_pres_reg, %struct.d3dx_pres_reg* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @get_reg_offset(i64 %35, i32 %38)
  %40 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %6, i32 0, i32 4
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %6, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.d3dx_pres_reg*, %struct.d3dx_pres_reg** %8, align 8
  %43 = getelementptr inbounds %struct.d3dx_pres_reg, %struct.d3dx_pres_reg* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %6, i32 0, i32 1
  store i64 %44, i64* %45, align 8
  %46 = load i32, i32* @D3DXPC_FORCE_DWORD, align 4
  %47 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %6, i32 0, i32 3
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %6, i32 0, i32 2
  store i32 1, i32* %48, align 8
  %49 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %3, align 8
  %50 = call i32 @append_const_set(%struct.d3dx_const_tab* %49, %struct.d3dx_const_param_eval_output* %6)
  br label %51

51:                                               ; preds = %32, %31
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %10

54:                                               ; preds = %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_reg_offset(i64, i32) #2

declare dso_local i32 @append_const_set(%struct.d3dx_const_tab*, %struct.d3dx_const_param_eval_output*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
