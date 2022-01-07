; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_texreg2ar.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_asmparser_texreg2ar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm_parser = type { i32 }
%struct.shader_reg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@BWRITERVS_X_W = common dso_local global i32 0, align 4
@BWRITERVS_Y_X = common dso_local global i32 0, align 4
@BWRITERVS_Z_X = common dso_local global i32 0, align 4
@BWRITERVS_W_X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asm_parser*, i32, i32, %struct.shader_reg*, %struct.shader_reg*)* @asmparser_texreg2ar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asmparser_texreg2ar(%struct.asm_parser* %0, i32 %1, i32 %2, %struct.shader_reg* %3, %struct.shader_reg* %4) #0 {
  %6 = alloca %struct.asm_parser*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.shader_reg*, align 8
  %10 = alloca %struct.shader_reg*, align 8
  %11 = alloca %struct.shader_reg, align 4
  %12 = alloca %struct.shader_reg, align 4
  store %struct.asm_parser* %0, %struct.asm_parser** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.shader_reg* %3, %struct.shader_reg** %9, align 8
  store %struct.shader_reg* %4, %struct.shader_reg** %10, align 8
  %13 = load %struct.shader_reg*, %struct.shader_reg** %10, align 8
  %14 = load i32, i32* @FALSE, align 4
  %15 = call i32 @map_oldps_register(%struct.shader_reg* %13, i32 %14)
  %16 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %12, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = bitcast %struct.shader_reg* %11 to i8*
  %19 = bitcast %struct.shader_reg* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load i32, i32* @BWRITERVS_X_W, align 4
  %21 = load i32, i32* @BWRITERVS_Y_X, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @BWRITERVS_Z_X, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @BWRITERVS_W_X, align 4
  %26 = or i32 %24, %25
  %27 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %11, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.asm_parser*, %struct.asm_parser** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.shader_reg*, %struct.shader_reg** %9, align 8
  %33 = call i32 @asmparser_texhelper(%struct.asm_parser* %29, i32 %30, i32 %31, %struct.shader_reg* %32, %struct.shader_reg* %11)
  ret void
}

declare dso_local i32 @map_oldps_register(%struct.shader_reg*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @asmparser_texhelper(%struct.asm_parser*, i32, i32, %struct.shader_reg*, %struct.shader_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
