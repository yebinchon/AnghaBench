; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_dump_ir_var.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_dump_ir_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_var = type { i64, i32, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" : %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hlsl_ir_var*)* @debug_dump_ir_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_dump_ir_var(%struct.hlsl_ir_var* %0) #0 {
  %2 = alloca %struct.hlsl_ir_var*, align 8
  store %struct.hlsl_ir_var* %0, %struct.hlsl_ir_var** %2, align 8
  %3 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %2, align 8
  %4 = getelementptr inbounds %struct.hlsl_ir_var, %struct.hlsl_ir_var* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %2, align 8
  %9 = getelementptr inbounds %struct.hlsl_ir_var, %struct.hlsl_ir_var* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @debug_modifiers(i64 %10)
  %12 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %2, align 8
  %15 = getelementptr inbounds %struct.hlsl_ir_var, %struct.hlsl_ir_var* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @debug_hlsl_type(i32 %16)
  %18 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %2, align 8
  %19 = getelementptr inbounds %struct.hlsl_ir_var, %struct.hlsl_ir_var* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %2, align 8
  %23 = getelementptr inbounds %struct.hlsl_ir_var, %struct.hlsl_ir_var* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %13
  %27 = load %struct.hlsl_ir_var*, %struct.hlsl_ir_var** %2, align 8
  %28 = getelementptr inbounds %struct.hlsl_ir_var, %struct.hlsl_ir_var* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @debugstr_a(i64 %29)
  %31 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %13
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debug_modifiers(i64) #1

declare dso_local i32 @debug_hlsl_type(i32) #1

declare dso_local i32 @debugstr_a(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
