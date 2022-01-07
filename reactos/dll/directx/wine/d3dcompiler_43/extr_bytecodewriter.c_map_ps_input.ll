; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_map_ps_input.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_map_ps_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i64*, i64*, i32 }
%struct.shader_reg = type { i64 }

@D3DSPR_INPUT = common dso_local global i32 0, align 4
@D3DSPR_TEXTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid ps 1/2 varying\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bc_writer*, %struct.shader_reg*)* @map_ps_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_ps_input(%struct.bc_writer* %0, %struct.shader_reg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bc_writer*, align 8
  %5 = alloca %struct.shader_reg*, align 8
  %6 = alloca i32, align 4
  store %struct.bc_writer* %0, %struct.bc_writer** %4, align 8
  store %struct.shader_reg* %1, %struct.shader_reg** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %27, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %12 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %15 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %13, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %10
  %23 = load i32, i32* @D3DSPR_INPUT, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @d3dsp_register(i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %59

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %7

30:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load %struct.shader_reg*, %struct.shader_reg** %5, align 8
  %36 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %39 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %37, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load i32, i32* @D3DSPR_TEXTURE, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @d3dsp_register(i32 %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %59

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %31

54:                                               ; preds = %31
  %55 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @E_INVALIDARG, align 4
  %57 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %58 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %46, %22
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @d3dsp_register(i32, i32) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
