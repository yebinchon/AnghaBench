; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_append_const_set.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_append_const_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_const_tab = type { i32, i32, %struct.d3dx_const_param_eval_output* }
%struct.d3dx_const_param_eval_output = type { i32 }

@INITIAL_CONST_SET_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dx_const_tab*, %struct.d3dx_const_param_eval_output*)* @append_const_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_const_set(%struct.d3dx_const_tab* %0, %struct.d3dx_const_param_eval_output* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.d3dx_const_tab*, align 8
  %5 = alloca %struct.d3dx_const_param_eval_output*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.d3dx_const_param_eval_output*, align 8
  store %struct.d3dx_const_tab* %0, %struct.d3dx_const_tab** %4, align 8
  store %struct.d3dx_const_param_eval_output* %1, %struct.d3dx_const_param_eval_output** %5, align 8
  %8 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %4, align 8
  %9 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %4, align 8
  %12 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %10, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %2
  %16 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %4, align 8
  %17 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @INITIAL_CONST_SET_SIZE, align 4
  store i32 %21, i32* %6, align 4
  %22 = call i32 (...) @GetProcessHeap()
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  %27 = call %struct.d3dx_const_param_eval_output* @HeapAlloc(i32 %22, i32 0, i32 %26)
  store %struct.d3dx_const_param_eval_output* %27, %struct.d3dx_const_param_eval_output** %7, align 8
  %28 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %7, align 8
  %29 = icmp ne %struct.d3dx_const_param_eval_output* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %32, i32* %3, align 4
  br label %75

33:                                               ; preds = %20
  br label %54

34:                                               ; preds = %15
  %35 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %4, align 8
  %36 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 2
  store i32 %38, i32* %6, align 4
  %39 = call i32 (...) @GetProcessHeap()
  %40 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %4, align 8
  %41 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %40, i32 0, i32 2
  %42 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = call %struct.d3dx_const_param_eval_output* @HeapReAlloc(i32 %39, i32 0, %struct.d3dx_const_param_eval_output* %42, i32 %46)
  store %struct.d3dx_const_param_eval_output* %47, %struct.d3dx_const_param_eval_output** %7, align 8
  %48 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %7, align 8
  %49 = icmp ne %struct.d3dx_const_param_eval_output* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %34
  %51 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %52, i32* %3, align 4
  br label %75

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %33
  %55 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %7, align 8
  %56 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %4, align 8
  %57 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %56, i32 0, i32 2
  store %struct.d3dx_const_param_eval_output* %55, %struct.d3dx_const_param_eval_output** %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %4, align 8
  %60 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %2
  %62 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %4, align 8
  %63 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %62, i32 0, i32 2
  %64 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %63, align 8
  %65 = load %struct.d3dx_const_tab*, %struct.d3dx_const_tab** %4, align 8
  %66 = getelementptr inbounds %struct.d3dx_const_tab, %struct.d3dx_const_tab* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %64, i64 %69
  %71 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %5, align 8
  %72 = bitcast %struct.d3dx_const_param_eval_output* %70 to i8*
  %73 = bitcast %struct.d3dx_const_param_eval_output* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 4, i1 false)
  %74 = load i32, i32* @D3D_OK, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %61, %50, %30
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.d3dx_const_param_eval_output* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local %struct.d3dx_const_param_eval_output* @HeapReAlloc(i32, i32, %struct.d3dx_const_param_eval_output*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
