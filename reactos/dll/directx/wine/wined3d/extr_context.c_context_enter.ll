; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_enter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i64, i32, %struct.TYPE_6__*, i64, i64, i64, %struct.wined3d_context*, %struct.wined3d_context*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (i32)* }

@.str = private unnamed_addr constant [32 x i8] c"Entering context %p, level %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Another GL context (%p on device context %p) is already current.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*)* @context_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_enter(%struct.wined3d_context* %0) #0 {
  %2 = alloca %struct.wined3d_context*, align 8
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_context*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %2, align 8
  %5 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %6 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %7 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %6, i32 0, i32 9
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.wined3d_context* %5, i64 %9)
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %12 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %11, i32 0, i32 9
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = icmp ne i64 %13, 0
  br i1 %15, label %78, label %16

16:                                               ; preds = %1
  %17 = call %struct.wined3d_context* (...) @context_get_current()
  store %struct.wined3d_context* %17, %struct.wined3d_context** %3, align 8
  %18 = call %struct.wined3d_context* (...) @wglGetCurrentContext()
  store %struct.wined3d_context* %18, %struct.wined3d_context** %4, align 8
  %19 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %20 = icmp ne %struct.wined3d_context* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %16
  %22 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %23 = icmp ne %struct.wined3d_context* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %26 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %25, i32 0, i32 8
  %27 = load %struct.wined3d_context*, %struct.wined3d_context** %26, align 8
  %28 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %29 = icmp ne %struct.wined3d_context* %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24, %21
  %31 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %32 = call i64 (...) @wglGetCurrentDC()
  %33 = call i32 @TRACE(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_context* %31, i64 %32)
  %34 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %35 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %36 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %35, i32 0, i32 7
  store %struct.wined3d_context* %34, %struct.wined3d_context** %36, align 8
  %37 = call i64 (...) @wglGetCurrentDC()
  %38 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %39 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %38, i32 0, i32 6
  store i64 %37, i64* %39, align 8
  %40 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %41 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %77

42:                                               ; preds = %24, %16
  %43 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %44 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %76, label %47

47:                                               ; preds = %42
  %48 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %49 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %54 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %59 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %62 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %61, i32 0, i32 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64 (i32)*, i64 (i32)** %66, align 8
  %68 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %69 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 %67(i32 %70)
  %72 = icmp ne i64 %60, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %57
  %74 = load %struct.wined3d_context*, %struct.wined3d_context** %2, align 8
  %75 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %57, %52, %42
  br label %77

77:                                               ; preds = %76, %30
  br label %78

78:                                               ; preds = %77, %1
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_context*, i64) #1

declare dso_local %struct.wined3d_context* @context_get_current(...) #1

declare dso_local %struct.wined3d_context* @wglGetCurrentContext(...) #1

declare dso_local i64 @wglGetCurrentDC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
