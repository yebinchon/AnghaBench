; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_print_relarg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_print_relarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shader_reg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BWRITERSPR_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"[a%u%s]\00", align 1
@BWRITERSPR_LOOP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"[aL%s]\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Unexpected relative addressing argument\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.shader_reg*)* @debug_print_relarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @debug_print_relarg(%struct.shader_reg* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.shader_reg*, align 8
  %4 = alloca i8*, align 8
  store %struct.shader_reg* %0, %struct.shader_reg** %3, align 8
  %5 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %6 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %53

10:                                               ; preds = %1
  %11 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %12 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @debug_print_swizzle(i32 %16)
  store i8* %17, i8** %4, align 8
  %18 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %19 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BWRITERSPR_ADDR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %10
  %26 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %27 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load i8*, i8** %4, align 8
  %33 = call i8* (i8*, i8*, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %32)
  store i8* %33, i8** %2, align 8
  br label %53

34:                                               ; preds = %10
  %35 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %36 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BWRITERSPR_LOOP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load %struct.shader_reg*, %struct.shader_reg** %3, align 8
  %44 = getelementptr inbounds %struct.shader_reg, %struct.shader_reg* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i8*, i8** %4, align 8
  %51 = call i8* (i8*, i8*, ...) @wine_dbg_sprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  store i8* %51, i8** %2, align 8
  br label %53

52:                                               ; preds = %42, %34
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %53

53:                                               ; preds = %52, %49, %25, %9
  %54 = load i8*, i8** %2, align 8
  ret i8* %54
}

declare dso_local i8* @debug_print_swizzle(i32) #1

declare dso_local i8* @wine_dbg_sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
