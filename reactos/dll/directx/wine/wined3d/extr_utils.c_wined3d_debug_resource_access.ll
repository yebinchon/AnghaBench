; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_debug_resource_access.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_debug_resource_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_buffer = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@WINED3D_RESOURCE_ACCESS_GPU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"WINED3D_RESOURCE_ACCESS_GPU\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@WINED3D_RESOURCE_ACCESS_CPU = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"WINED3D_RESOURCE_ACCESS_CPU\00", align 1
@WINED3D_RESOURCE_ACCESS_MAP_R = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"WINED3D_RESOURCE_ACCESS_MAP_R\00", align 1
@WINED3D_RESOURCE_ACCESS_MAP_W = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"WINED3D_RESOURCE_ACCESS_MAP_W\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Unrecognised access flag(s) %#x.\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wined3d_debug_resource_access(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.debug_buffer, align 4
  store i64 %0, i64* %2, align 8
  %4 = call i32 @init_debug_buffer(%struct.debug_buffer* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = load i64, i64* %2, align 8
  %6 = load i32, i32* @WINED3D_RESOURCE_ACCESS_GPU, align 4
  %7 = sext i32 %6 to i64
  %8 = and i64 %5, %7
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32, i32* @WINED3D_RESOURCE_ACCESS_GPU, align 4
  %13 = xor i32 %12, -1
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %2, align 8
  %16 = and i64 %15, %14
  store i64 %16, i64* %2, align 8
  br label %17

17:                                               ; preds = %10, %1
  %18 = load i64, i64* %2, align 8
  %19 = load i32, i32* @WINED3D_RESOURCE_ACCESS_CPU, align 4
  %20 = sext i32 %19 to i64
  %21 = and i64 %18, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @WINED3D_RESOURCE_ACCESS_CPU, align 4
  %26 = xor i32 %25, -1
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %2, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %2, align 8
  br label %30

30:                                               ; preds = %23, %17
  %31 = load i64, i64* %2, align 8
  %32 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_R, align 4
  %33 = sext i32 %32 to i64
  %34 = and i64 %31, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_R, align 4
  %39 = xor i32 %38, -1
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %2, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %2, align 8
  br label %43

43:                                               ; preds = %36, %30
  %44 = load i64, i64* %2, align 8
  %45 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_W, align 4
  %46 = sext i32 %45 to i64
  %47 = and i64 %44, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = call i32 (%struct.debug_buffer*, i8*, i8*, ...) bitcast (i32 (...)* @debug_append to i32 (%struct.debug_buffer*, i8*, i8*, ...)*)(%struct.debug_buffer* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_W, align 4
  %52 = xor i32 %51, -1
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %2, align 8
  %55 = and i64 %54, %53
  store i64 %55, i64* %2, align 8
  br label %56

56:                                               ; preds = %49, %43
  %57 = load i64, i64* %2, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* %2, align 8
  %61 = call i32 @FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %3, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %64)
  ret i8* %65
}

declare dso_local i32 @init_debug_buffer(%struct.debug_buffer*, i8*) #1

declare dso_local i32 @debug_append(...) #1

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i8* @wine_dbg_sprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
