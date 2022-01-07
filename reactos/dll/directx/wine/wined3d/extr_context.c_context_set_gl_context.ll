; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_set_gl_context.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_set_gl_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i64, i32, i32, i32, i8*, i8*, i64, %struct.wined3d_swapchain* }
%struct.wined3d_swapchain = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [53 x i8] c"Failed to set pixel format %d on device context %p.\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [76 x i8] c"Failed to make GL context %p current on device context %p, last error %#x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Trying fallback to the backup window.\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Unable to get backup dc for destroyed context %p.\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"Fallback to backup window (dc %p) failed too, last error %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.wined3d_context*)* @context_set_gl_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @context_set_gl_context(%struct.wined3d_context* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_swapchain*, align 8
  %5 = alloca i8*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  %6 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %7 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %6, i32 0, i32 8
  %8 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %7, align 8
  store %struct.wined3d_swapchain* %8, %struct.wined3d_swapchain** %4, align 8
  %9 = load i8*, i8** @FALSE, align 8
  store i8* %9, i8** %5, align 8
  %10 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %11 = call i32 @context_set_pixel_format(%struct.wined3d_context* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %15 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %18 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load i8*, i8** @TRUE, align 8
  store i8* %21, i8** %5, align 8
  br label %22

22:                                               ; preds = %13, %1
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %27 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %30 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @wglMakeCurrent(i32 %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %107, label %34

34:                                               ; preds = %25, %22
  %35 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %36 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %39 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (...) @GetLastError()
  %42 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40, i32 %41)
  %43 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %44 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %47 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %34
  %51 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %4, align 8
  %52 = icmp ne %struct.wined3d_swapchain* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %50, %34
  %54 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %55 = call i32 @FIXME(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), %struct.wined3d_context* %54)
  %56 = call i32 @context_set_current(i32* null)
  %57 = load i8*, i8** @FALSE, align 8
  store i8* %57, i8** %2, align 8
  br label %111

58:                                               ; preds = %50
  %59 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %4, align 8
  %60 = call i32 @swapchain_get_backup_dc(%struct.wined3d_swapchain* %59)
  %61 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %62 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = icmp ne i32 %60, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = call i32 @context_set_current(i32* null)
  %66 = load i8*, i8** @FALSE, align 8
  store i8* %66, i8** %2, align 8
  br label %111

67:                                               ; preds = %58
  %68 = load i8*, i8** @TRUE, align 8
  %69 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %70 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %69, i32 0, i32 6
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** @FALSE, align 8
  %72 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %73 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %75 = call i32 @context_set_pixel_format(%struct.wined3d_context* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %67
  %78 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %79 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %82 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ERR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %83)
  %85 = call i32 @context_set_current(i32* null)
  %86 = load i8*, i8** @FALSE, align 8
  store i8* %86, i8** %2, align 8
  br label %111

87:                                               ; preds = %67
  %88 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %89 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %92 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @wglMakeCurrent(i32 %90, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %87
  %97 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %98 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (...) @GetLastError()
  %101 = call i32 @ERR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %99, i32 %100)
  %102 = call i32 @context_set_current(i32* null)
  %103 = load i8*, i8** @FALSE, align 8
  store i8* %103, i8** %2, align 8
  br label %111

104:                                              ; preds = %87
  %105 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %106 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %25
  %108 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %109 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = load i8*, i8** @TRUE, align 8
  store i8* %110, i8** %2, align 8
  br label %111

111:                                              ; preds = %107, %96, %77, %64, %53
  %112 = load i8*, i8** %2, align 8
  ret i8* %112
}

declare dso_local i32 @context_set_pixel_format(%struct.wined3d_context*) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @wglMakeCurrent(i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @FIXME(i8*, %struct.wined3d_context*) #1

declare dso_local i32 @context_set_current(i32*) #1

declare dso_local i32 @swapchain_get_backup_dc(%struct.wined3d_swapchain*) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
