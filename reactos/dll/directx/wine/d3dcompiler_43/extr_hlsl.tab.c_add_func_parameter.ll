; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_add_func_parameter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_hlsl.tab.c_add_func_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.list = type { i32 }
%struct.parse_parameter = type { i32, i32, i32, i32, i32 }
%struct.source_location = type { i32 }
%struct.hlsl_ir_var = type { i32, i32, i32, i32, i32, %struct.source_location, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@hlsl_ctx = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list*, %struct.parse_parameter*, %struct.source_location*)* @add_func_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_func_parameter(%struct.list* %0, %struct.parse_parameter* %1, %struct.source_location* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list*, align 8
  %6 = alloca %struct.parse_parameter*, align 8
  %7 = alloca %struct.source_location*, align 8
  %8 = alloca %struct.hlsl_ir_var*, align 8
  store %struct.list* %0, %struct.list** %5, align 8
  store %struct.parse_parameter* %1, %struct.parse_parameter** %6, align 8
  store %struct.source_location* %2, %struct.source_location** %7, align 8
  %9 = call %struct.hlsl_ir_var* @d3dcompiler_alloc(i32 28)
  store %struct.hlsl_ir_var* %9, %struct.hlsl_ir_var** %8, align 8
  %10 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %8, align 8
  %11 = icmp ne %struct.hlsl_ir_var* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %61

15:                                               ; preds = %3
  %16 = load %struct.parse_parameter*, %struct.parse_parameter** %6, align 8
  %17 = getelementptr inbounds %struct.parse_parameter, %struct.parse_parameter* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %8, align 8
  %20 = getelementptr inbounds %struct.hlsl_ir_var, %struct.hlsl_ir_var* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %8, align 8
  %22 = getelementptr inbounds %struct.hlsl_ir_var, %struct.hlsl_ir_var* %21, i32 0, i32 5
  %23 = load %struct.source_location*, %struct.source_location** %7, align 8
  %24 = bitcast %struct.source_location* %22 to i8*
  %25 = bitcast %struct.source_location* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load %struct.parse_parameter*, %struct.parse_parameter** %6, align 8
  %27 = getelementptr inbounds %struct.parse_parameter, %struct.parse_parameter* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %8, align 8
  %30 = getelementptr inbounds %struct.hlsl_ir_var, %struct.hlsl_ir_var* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.parse_parameter*, %struct.parse_parameter** %6, align 8
  %32 = getelementptr inbounds %struct.parse_parameter, %struct.parse_parameter* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %8, align 8
  %35 = getelementptr inbounds %struct.hlsl_ir_var, %struct.hlsl_ir_var* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.parse_parameter*, %struct.parse_parameter** %6, align 8
  %37 = getelementptr inbounds %struct.parse_parameter, %struct.parse_parameter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %8, align 8
  %40 = getelementptr inbounds %struct.hlsl_ir_var, %struct.hlsl_ir_var* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.parse_parameter*, %struct.parse_parameter** %6, align 8
  %42 = getelementptr inbounds %struct.parse_parameter, %struct.parse_parameter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %8, align 8
  %45 = getelementptr inbounds %struct.hlsl_ir_var, %struct.hlsl_ir_var* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hlsl_ctx, i32 0, i32 0), align 4
  %47 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %8, align 8
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @add_declaration(i32 %46, %struct.hlsl_ir_var* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %15
  %52 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %8, align 8
  %53 = call i32 @free_declaration(%struct.hlsl_ir_var* %52)
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %4, align 4
  br label %61

55:                                               ; preds = %15
  %56 = load %struct.list*, %struct.list** %5, align 8
  %57 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %8, align 8
  %58 = getelementptr inbounds %struct.hlsl_ir_var, %struct.hlsl_ir_var* %57, i32 0, i32 0
  %59 = call i32 @list_add_tail(%struct.list* %56, i32* %58)
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %55, %51, %12
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.hlsl_ir_var* @d3dcompiler_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @add_declaration(i32, %struct.hlsl_ir_var*, i32) #1

declare dso_local i32 @free_declaration(%struct.hlsl_ir_var*) #1

declare dso_local i32 @list_add_tail(%struct.list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
