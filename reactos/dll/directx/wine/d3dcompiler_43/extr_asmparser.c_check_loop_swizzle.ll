; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_check_loop_swizzle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_asmparser.c_check_loop_swizzle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asm_parser = type { i32, i32 }
%struct.shader_reg = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@BWRITERSPR_LOOP = common dso_local global i64 0, align 8
@BWRITERVS_NOSWIZZLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Line %u: Swizzle not allowed on aL register\0A\00", align 1
@PARSE_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asm_parser*, %struct.shader_reg*)* @check_loop_swizzle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_loop_swizzle(%struct.asm_parser* %0, %struct.shader_reg* %1) #0 {
  %3 = alloca %struct.asm_parser*, align 8
  %4 = alloca %struct.shader_reg*, align 8
  store %struct.asm_parser* %0, %struct.asm_parser** %3, align 8
  store %struct.shader_reg* %1, %struct.shader_reg** %4, align 8
  %5 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %6 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @BWRITERSPR_LOOP, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %12 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BWRITERVS_NOSWIZZLE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %39, label %17

17:                                               ; preds = %10, %2
  %18 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %19 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %17
  %23 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %24 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BWRITERSPR_LOOP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %22
  %31 = load %struct.shader_reg*, %struct.shader_reg** %4, align 8
  %32 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @BWRITERVS_NOSWIZZLE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %30, %10
  %40 = load %struct.asm_parser*, %struct.asm_parser** %3, align 8
  %41 = load %struct.asm_parser*, %struct.asm_parser** %3, align 8
  %42 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @asmparser_message(%struct.asm_parser* %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.asm_parser*, %struct.asm_parser** %3, align 8
  %46 = getelementptr inbounds %struct.asm_parser, %struct.asm_parser* %45, i32 0, i32 0
  %47 = load i32, i32* @PARSE_ERR, align 4
  %48 = call i32 @set_parse_status(i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %39, %30, %22, %17
  ret void
}

declare dso_local i32 @asmparser_message(%struct.asm_parser*, i8*, i32) #1

declare dso_local i32 @set_parse_status(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
