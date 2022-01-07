; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_update_window.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_update_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i64, i32, i32, i64, i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"Updating context %p window from %p to %p.\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@DCX_USESTYLE = common dso_local global i32 0, align 4
@DCX_CACHE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Failed to get a device context for window %p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*)* @context_update_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_update_window(%struct.wined3d_context* %0) #0 {
  %2 = alloca %struct.wined3d_context*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %2, align 8
  %3 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %4 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %3, i32 0, i32 6
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %77

8:                                                ; preds = %1
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %13 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %12, i32 0, i32 6
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %11, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  br label %77

19:                                               ; preds = %8
  %20 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %21 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %22 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %25 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %24, i32 0, i32 6
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.wined3d_context* %20, i64 %23, i64 %28)
  %30 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %31 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %19
  %35 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %36 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %39 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @wined3d_release_dc(i64 %37, i64 %40)
  br label %42

42:                                               ; preds = %34, %19
  %43 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %44 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %43, i32 0, i32 6
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %49 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i8*, i8** @FALSE, align 8
  %51 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %52 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** @FALSE, align 8
  %54 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %55 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %57 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %56, i32 0, i32 1
  store i32 1, i32* %57, align 8
  %58 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %59 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %58, i32 0, i32 2
  store i32 1, i32* %59, align 4
  %60 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %61 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @DCX_USESTYLE, align 4
  %64 = load i32, i32* @DCX_CACHE, align 4
  %65 = or i32 %63, %64
  %66 = call i64 @GetDCEx(i64 %62, i32 0, i32 %65)
  %67 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %68 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = icmp ne i64 %66, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %42
  %71 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %72 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  %75 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %76 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %75, i32 0, i32 2
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %7, %18, %70, %42
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_context*, i64, i64) #1

declare dso_local i32 @wined3d_release_dc(i64, i64) #1

declare dso_local i64 @GetDCEx(i64, i32, i32) #1

declare dso_local i32 @ERR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
