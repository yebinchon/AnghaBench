; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_get_const_upload_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_get_const_upload_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_const_param_eval_output = type { i32, i64, i32, %struct.d3dx_parameter* }
%struct.d3dx_parameter = type { i64, i32, i32 }
%struct.const_upload_info = type { i32, i32, i32, i32, i32, i32, i32 }

@D3DXPC_MATRIX_COLUMNS = common dso_local global i64 0, align 8
@D3DXPC_MATRIX_ROWS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_const_param_eval_output*, %struct.const_upload_info*)* @get_const_upload_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_const_upload_info(%struct.d3dx_const_param_eval_output* %0, %struct.const_upload_info* %1) #0 {
  %3 = alloca %struct.d3dx_const_param_eval_output*, align 8
  %4 = alloca %struct.const_upload_info*, align 8
  %5 = alloca %struct.d3dx_parameter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.d3dx_const_param_eval_output* %0, %struct.d3dx_const_param_eval_output** %3, align 8
  store %struct.const_upload_info* %1, %struct.const_upload_info** %4, align 8
  %8 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %3, align 8
  %9 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %8, i32 0, i32 3
  %10 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  store %struct.d3dx_parameter* %10, %struct.d3dx_parameter** %5, align 8
  %11 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %3, align 8
  %12 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %3, align 8
  %15 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @D3DXPC_MATRIX_COLUMNS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %21 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @D3DXPC_MATRIX_ROWS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %39, label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %27 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @D3DXPC_MATRIX_COLUMNS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %3, align 8
  %33 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @D3DXPC_MATRIX_ROWS, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %31, %25
  %38 = phi i1 [ false, %25 ], [ %36, %31 ]
  br label %39

39:                                               ; preds = %37, %19
  %40 = phi i1 [ true, %19 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  %42 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %43 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %3, align 8
  %45 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @D3DXPC_MATRIX_COLUMNS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %39
  %50 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %51 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %54 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %56 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %59 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  br label %71

60:                                               ; preds = %39
  %61 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %62 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %65 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %5, align 8
  %67 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %70 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %60, %49
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @get_reg_components(i32 %72)
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %100

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %3, align 8
  %78 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @get_offset_reg(i32 %76, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %82 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %85 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %88 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = udiv i32 %86, %89
  %91 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %92 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %95 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = urem i32 %93, %96
  %98 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %99 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  br label %112

100:                                              ; preds = %71
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @get_reg_components(i32 %101)
  %103 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %104 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.d3dx_const_param_eval_output*, %struct.d3dx_const_param_eval_output** %3, align 8
  %106 = getelementptr inbounds %struct.d3dx_const_param_eval_output, %struct.d3dx_const_param_eval_output* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %109 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %111 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %110, i32 0, i32 5
  store i32 0, i32* %111, align 4
  br label %112

112:                                              ; preds = %100, %75
  %113 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %114 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %117 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = mul i32 %115, %118
  %120 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %121 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = add i32 %119, %122
  %124 = load %struct.const_upload_info*, %struct.const_upload_info** %4, align 8
  %125 = getelementptr inbounds %struct.const_upload_info, %struct.const_upload_info* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 4
  ret void
}

declare dso_local i32 @get_reg_components(i32) #1

declare dso_local i32 @get_offset_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
