; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_load-graphics-offsets.c_load_offsets_from_string.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_load-graphics-offsets.c_load_offsets_from_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graphics_offsets = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8*, i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8* }

@CONFIG_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"d3d8\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"present\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"d3d9\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"present_ex\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"present_swap\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"d3d9_clsoff\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"is_d3d9ex_clsoff\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"dxgi\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"present1\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.graphics_offsets*, i8*)* @load_offsets_from_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_offsets_from_string(%struct.graphics_offsets* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.graphics_offsets*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.graphics_offsets* %0, %struct.graphics_offsets** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @config_open_string(i32** %6, i8* %7)
  %9 = load i64, i64* @CONFIG_SUCCESS, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

12:                                               ; preds = %2
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @config_get_uint(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %15 = inttoptr i64 %14 to i8*
  %16 = load %struct.graphics_offsets*, %struct.graphics_offsets** %4, align 8
  %17 = getelementptr inbounds %struct.graphics_offsets, %struct.graphics_offsets* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i8* %15, i8** %18, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @config_get_uint(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.graphics_offsets*, %struct.graphics_offsets** %4, align 8
  %23 = getelementptr inbounds %struct.graphics_offsets, %struct.graphics_offsets* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  store i8* %21, i8** %24, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @config_get_uint(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %27 = inttoptr i64 %26 to i8*
  %28 = load %struct.graphics_offsets*, %struct.graphics_offsets** %4, align 8
  %29 = getelementptr inbounds %struct.graphics_offsets, %struct.graphics_offsets* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  store i8* %27, i8** %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @config_get_uint(i32* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.graphics_offsets*, %struct.graphics_offsets** %4, align 8
  %35 = getelementptr inbounds %struct.graphics_offsets, %struct.graphics_offsets* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i8* %33, i8** %36, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @config_get_uint(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.graphics_offsets*, %struct.graphics_offsets** %4, align 8
  %41 = getelementptr inbounds %struct.graphics_offsets, %struct.graphics_offsets* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i8* %39, i8** %42, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @config_get_uint(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.graphics_offsets*, %struct.graphics_offsets** %4, align 8
  %47 = getelementptr inbounds %struct.graphics_offsets, %struct.graphics_offsets* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i64 @config_get_uint(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.graphics_offsets*, %struct.graphics_offsets** %4, align 8
  %53 = getelementptr inbounds %struct.graphics_offsets, %struct.graphics_offsets* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i8* %51, i8** %54, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @config_get_uint(i32* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.graphics_offsets*, %struct.graphics_offsets** %4, align 8
  %59 = getelementptr inbounds %struct.graphics_offsets, %struct.graphics_offsets* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i8* %57, i8** %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i64 @config_get_uint(i32* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.graphics_offsets*, %struct.graphics_offsets** %4, align 8
  %65 = getelementptr inbounds %struct.graphics_offsets, %struct.graphics_offsets* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @config_close(i32* %67)
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %12, %11
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @config_open_string(i32**, i8*) #1

declare dso_local i64 @config_get_uint(i32*, i8*, i8*) #1

declare dso_local i32 @config_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
