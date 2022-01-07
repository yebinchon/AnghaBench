; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_d3dx_param_eval_set_shader_constants.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_d3dx_param_eval_set_shader_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IDirect3DDevice9 = type { i32 }
%struct.d3dx_param_eval = type { i32, i32, i32, %struct.d3dx_preshader }
%struct.d3dx_preshader = type { i32, %struct.d3dx_regstore }
%struct.d3dx_regstore = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"device %p, peval %p, param_type %u.\0A\00", align 1
@ULONG64_MAX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3dx_param_eval_set_shader_constants(i32* %0, %struct.IDirect3DDevice9* %1, %struct.d3dx_param_eval* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.IDirect3DDevice9*, align 8
  %8 = alloca %struct.d3dx_param_eval*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.d3dx_preshader*, align 8
  %12 = alloca %struct.d3dx_regstore*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.IDirect3DDevice9* %1, %struct.IDirect3DDevice9** %7, align 8
  store %struct.d3dx_param_eval* %2, %struct.d3dx_param_eval** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %8, align 8
  %16 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %15, i32 0, i32 3
  store %struct.d3dx_preshader* %16, %struct.d3dx_preshader** %11, align 8
  %17 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %11, align 8
  %18 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %17, i32 0, i32 1
  store %struct.d3dx_regstore* %18, %struct.d3dx_regstore** %12, align 8
  %19 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %8, align 8
  %20 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @next_update_version(i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %14, align 4
  %24 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %7, align 8
  %25 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %8, align 8
  %26 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %8, align 8
  %27 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.IDirect3DDevice9* %24, %struct.d3dx_param_eval* %25, i32 %28)
  %30 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %11, align 8
  %31 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %30, i32 0, i32 0
  %32 = load i32, i32* @ULONG64_MAX, align 4
  %33 = call i64 @is_const_tab_input_dirty(i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %4
  %36 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %12, align 8
  %37 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %11, align 8
  %38 = getelementptr inbounds %struct.d3dx_preshader, %struct.d3dx_preshader* %37, i32 0, i32 0
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %8, align 8
  %41 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @FALSE, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @set_constants(%struct.d3dx_regstore* %36, i32* %38, i32 %39, i32* null, %struct.IDirect3DDevice9* null, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.d3dx_preshader*, %struct.d3dx_preshader** %11, align 8
  %47 = call i32 @execute_preshader(%struct.d3dx_preshader* %46)
  store i32 %47, i32* %10, align 4
  %48 = call i64 @FAILED(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %67

52:                                               ; preds = %35
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %52, %4
  %55 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %12, align 8
  %56 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %8, align 8
  %57 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %56, i32 0, i32 1
  %58 = load i32, i32* %13, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.IDirect3DDevice9*, %struct.IDirect3DDevice9** %7, align 8
  %61 = load %struct.d3dx_param_eval*, %struct.d3dx_param_eval** %8, align 8
  %62 = getelementptr inbounds %struct.d3dx_param_eval, %struct.d3dx_param_eval* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @set_constants(%struct.d3dx_regstore* %55, i32* %57, i32 %58, i32* %59, %struct.IDirect3DDevice9* %60, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %54, %50
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @next_update_version(i32) #1

declare dso_local i32 @TRACE(i8*, %struct.IDirect3DDevice9*, %struct.d3dx_param_eval*, i32) #1

declare dso_local i64 @is_const_tab_input_dirty(i32*, i32) #1

declare dso_local i32 @set_constants(%struct.d3dx_regstore*, i32*, i32, i32*, %struct.IDirect3DDevice9*, i32, i32, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @execute_preshader(%struct.d3dx_preshader*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
