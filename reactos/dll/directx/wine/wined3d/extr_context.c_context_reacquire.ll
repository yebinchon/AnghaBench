; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_reacquire.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_reacquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { i32 }
%struct.wined3d_context = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [36 x i8] c"Acquired context %p instead of %p.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wined3d_context* @context_reacquire(%struct.wined3d_device* %0, %struct.wined3d_context* %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_device*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_context*, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %4, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %5, align 8
  %7 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %8 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @wined3d_from_cs(i32 %9)
  %11 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %12 = icmp ne %struct.wined3d_context* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %15 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 (...) @GetCurrentThreadId()
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %2
  store %struct.wined3d_context* null, %struct.wined3d_context** %3, align 8
  br label %50

20:                                               ; preds = %13
  %21 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %22 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %28 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %29 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %33 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @context_activate(%struct.wined3d_context* %27, i64 %31, i32 %35)
  %37 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_context* %37, %struct.wined3d_context** %3, align 8
  br label %50

38:                                               ; preds = %20
  %39 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %40 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %39, i32* null, i32 0)
  store %struct.wined3d_context* %40, %struct.wined3d_context** %6, align 8
  %41 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %42 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %43 = icmp ne %struct.wined3d_context* %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %46 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %47 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.wined3d_context* %45, %struct.wined3d_context* %46)
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  store %struct.wined3d_context* %49, %struct.wined3d_context** %3, align 8
  br label %50

50:                                               ; preds = %48, %26, %19
  %51 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  ret %struct.wined3d_context* %51
}

declare dso_local i32 @wined3d_from_cs(i32) #1

declare dso_local i64 @GetCurrentThreadId(...) #1

declare dso_local i32 @context_activate(%struct.wined3d_context*, i64, i32) #1

declare dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device*, i32*, i32) #1

declare dso_local i32 @ERR(i8*, %struct.wined3d_context*, %struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
