; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_dump_ir_swizzle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_dump_ir_swizzle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_swizzle = type { i32, %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"_m%u%u\00", align 1
@debug_dump_ir_swizzle.c = internal constant [4 x i8] c"xyzw", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hlsl_ir_swizzle*)* @debug_dump_ir_swizzle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_dump_ir_swizzle(%struct.hlsl_ir_swizzle* %0) #0 {
  %2 = alloca %struct.hlsl_ir_swizzle*, align 8
  %3 = alloca i32, align 4
  store %struct.hlsl_ir_swizzle* %0, %struct.hlsl_ir_swizzle** %2, align 8
  %4 = load %struct.hlsl_ir_swizzle*, %struct.hlsl_ir_swizzle** %2, align 8
  %5 = getelementptr inbounds %struct.hlsl_ir_swizzle, %struct.hlsl_ir_swizzle* %4, i32 0, i32 2
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %7 = call i32 @debug_dump_instr(%struct.TYPE_8__* %6)
  %8 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.hlsl_ir_swizzle*, %struct.hlsl_ir_swizzle** %2, align 8
  %10 = getelementptr inbounds %struct.hlsl_ir_swizzle, %struct.hlsl_ir_swizzle* %9, i32 0, i32 2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %48

17:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %44, %17
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.hlsl_ir_swizzle*, %struct.hlsl_ir_swizzle** %2, align 8
  %21 = getelementptr inbounds %struct.hlsl_ir_swizzle, %struct.hlsl_ir_swizzle* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ult i32 %19, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %18
  %28 = load %struct.hlsl_ir_swizzle*, %struct.hlsl_ir_swizzle** %2, align 8
  %29 = getelementptr inbounds %struct.hlsl_ir_swizzle, %struct.hlsl_ir_swizzle* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = mul i32 %31, 8
  %33 = lshr i32 %30, %32
  %34 = and i32 %33, 15
  %35 = load %struct.hlsl_ir_swizzle*, %struct.hlsl_ir_swizzle** %2, align 8
  %36 = getelementptr inbounds %struct.hlsl_ir_swizzle, %struct.hlsl_ir_swizzle* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = mul i32 %38, 8
  %40 = add i32 %39, 4
  %41 = lshr i32 %37, %40
  %42 = and i32 %41, 15
  %43 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %42)
  br label %44

44:                                               ; preds = %27
  %45 = load i32, i32* %3, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %18

47:                                               ; preds = %18
  br label %75

48:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %71, %48
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.hlsl_ir_swizzle*, %struct.hlsl_ir_swizzle** %2, align 8
  %52 = getelementptr inbounds %struct.hlsl_ir_swizzle, %struct.hlsl_ir_swizzle* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ult i32 %50, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %49
  %59 = load %struct.hlsl_ir_swizzle*, %struct.hlsl_ir_swizzle** %2, align 8
  %60 = getelementptr inbounds %struct.hlsl_ir_swizzle, %struct.hlsl_ir_swizzle* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = mul i32 %62, 2
  %64 = lshr i32 %61, %63
  %65 = and i32 %64, 3
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* @debug_dump_ir_swizzle.c, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %58
  %72 = load i32, i32* %3, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %49

74:                                               ; preds = %49
  br label %75

75:                                               ; preds = %74, %47
  ret void
}

declare dso_local i32 @debug_dump_instr(%struct.TYPE_8__*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
