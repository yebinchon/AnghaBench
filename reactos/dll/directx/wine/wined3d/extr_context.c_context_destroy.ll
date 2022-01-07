; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_destroy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { %struct.TYPE_6__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.wined3d_context*)* }
%struct.TYPE_4__ = type { i32 (%struct.wined3d_context*)* }
%struct.wined3d_context = type { i32, i64, i32, %struct.wined3d_context*, %struct.wined3d_gl_info*, i32, i32*, i64 }
%struct.wined3d_gl_info = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Destroying ctx %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Delaying destruction of context %p.\0A\00", align 1
@wined3d_context_tls_idx = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_destroy(%struct.wined3d_device* %0, %struct.wined3d_context* %1) #0 {
  %3 = alloca %struct.wined3d_device*, align 8
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %3, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %4, align 8
  %7 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.wined3d_context* %7)
  %9 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @wined3d_from_cs(i32 %11)
  %13 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %14 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_context* %18)
  %20 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %21 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %23 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %22, i32 0, i32 6
  store i32* null, i32** %23, align 8
  br label %84

24:                                               ; preds = %2
  %25 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %26 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i64 (...) @GetCurrentThreadId()
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %32 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30, %24
  %36 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %37 = call i32 @context_destroy_gl_resources(%struct.wined3d_context* %36)
  %38 = load i32, i32* @wined3d_context_tls_idx, align 4
  %39 = call i32 @TlsSetValue(i32 %38, i32* null)
  %40 = load i64, i64* @TRUE, align 8
  store i64 %40, i64* %5, align 8
  br label %55

41:                                               ; preds = %30
  %42 = call %struct.wined3d_gl_info* @heap_alloc(i32 4)
  store %struct.wined3d_gl_info* %42, %struct.wined3d_gl_info** %6, align 8
  %43 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %44 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %45 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %44, i32 0, i32 4
  %46 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %45, align 8
  %47 = bitcast %struct.wined3d_gl_info* %43 to i8*
  %48 = bitcast %struct.wined3d_gl_info* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %50 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %51 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %50, i32 0, i32 4
  store %struct.wined3d_gl_info* %49, %struct.wined3d_gl_info** %51, align 8
  %52 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %53 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %52, i32 0, i32 2
  store i32 1, i32* %53, align 8
  %54 = load i64, i64* @FALSE, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %41, %35
  %56 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %57 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32 (%struct.wined3d_context*)*, i32 (%struct.wined3d_context*)** %59, align 8
  %61 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %62 = call i32 %60(%struct.wined3d_context* %61)
  %63 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %64 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32 (%struct.wined3d_context*)*, i32 (%struct.wined3d_context*)** %68, align 8
  %70 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %71 = call i32 %69(%struct.wined3d_context* %70)
  %72 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %73 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %72, i32 0, i32 3
  %74 = load %struct.wined3d_context*, %struct.wined3d_context** %73, align 8
  %75 = call i32 @heap_free(%struct.wined3d_context* %74)
  %76 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %77 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %78 = call i32 @device_context_remove(%struct.wined3d_device* %76, %struct.wined3d_context* %77)
  %79 = load i64, i64* %5, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %55
  %82 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %83 = call i32 @heap_free(%struct.wined3d_context* %82)
  br label %84

84:                                               ; preds = %17, %81, %55
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_context*) #1

declare dso_local i32 @wined3d_from_cs(i32) #1

declare dso_local i64 @GetCurrentThreadId(...) #1

declare dso_local i32 @context_destroy_gl_resources(%struct.wined3d_context*) #1

declare dso_local i32 @TlsSetValue(i32, i32*) #1

declare dso_local %struct.wined3d_gl_info* @heap_alloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @heap_free(%struct.wined3d_context*) #1

declare dso_local i32 @device_context_remove(%struct.wined3d_device*, %struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
