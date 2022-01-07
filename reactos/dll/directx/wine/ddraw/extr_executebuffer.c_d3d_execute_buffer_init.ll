; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_executebuffer.c_d3d_execute_buffer_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_executebuffer.c_d3d_execute_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d_execute_buffer = type { i32, %struct.TYPE_8__, i32, %struct.d3d_device*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i64, i32* }
%struct.TYPE_6__ = type { i32* }
%struct.d3d_device = type { i32 }
%struct.TYPE_7__ = type { i32 }

@d3d_execute_buffer_vtbl = common dso_local global i32 0, align 4
@D3DDEB_LPDATA = common dso_local global i32 0, align 4
@D3DDEB_BUFSIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to allocate execute buffer data.\0A\00", align 1
@DDERR_OUTOFMEMORY = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d3d_execute_buffer_init(%struct.d3d_execute_buffer* %0, %struct.d3d_device* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3d_execute_buffer*, align 8
  %6 = alloca %struct.d3d_device*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.d3d_execute_buffer* %0, %struct.d3d_execute_buffer** %5, align 8
  store %struct.d3d_device* %1, %struct.d3d_device** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %8 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %9 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32* @d3d_execute_buffer_vtbl, i32** %10, align 8
  %11 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %12 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.d3d_device*, %struct.d3d_device** %6, align 8
  %14 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %15 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %14, i32 0, i32 3
  store %struct.d3d_device* %13, %struct.d3d_device** %15, align 8
  %16 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %17 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcpy(%struct.TYPE_8__* %17, %struct.TYPE_7__* %18, i32 %21)
  %23 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %24 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @D3DDEB_LPDATA, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %3
  %31 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %32 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %30, %3
  %35 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %36 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @D3DDEB_BUFSIZE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %44 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %34
  %47 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %48 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %75, label %52

52:                                               ; preds = %46
  %53 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %54 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load i32, i32* @TRUE, align 4
  %60 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %61 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %63 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32* @heap_alloc_zero(i64 %65)
  %67 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %68 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  store i32* %66, i32** %69, align 8
  %70 = icmp ne i32* %66, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %58
  %72 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @DDERR_OUTOFMEMORY, align 4
  store i32 %73, i32* %4, align 4
  br label %83

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74, %52, %46
  %76 = load i32, i32* @D3DDEB_LPDATA, align 4
  %77 = load %struct.d3d_execute_buffer*, %struct.d3d_execute_buffer** %5, align 8
  %78 = getelementptr inbounds %struct.d3d_execute_buffer, %struct.d3d_execute_buffer* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %76
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* @D3D_OK, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %75, %71
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_7__*, i32) #1

declare dso_local i32* @heap_alloc_zero(i64) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
