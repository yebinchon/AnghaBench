; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_alloc_fence.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_alloc_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i32, %struct.TYPE_2__*, %struct.wined3d_gl_info* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.wined3d_gl_info = type { i64* }
%struct.wined3d_fence = type { i32, %struct.wined3d_context*, %struct.TYPE_2__ }

@ARB_SYNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Allocated sync object in context %p.\0A\00", align 1
@APPLE_FENCE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"glGenFencesAPPLE\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Allocated fence %u in context %p.\0A\00", align 1
@NV_FENCE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"glGenFencesNV\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Fences not supported, not allocating fence.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_alloc_fence(%struct.wined3d_context* %0, %struct.wined3d_fence* %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_fence*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store %struct.wined3d_fence* %1, %struct.wined3d_fence** %4, align 8
  %6 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %7 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %6, i32 0, i32 3
  %8 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  store %struct.wined3d_gl_info* %8, %struct.wined3d_gl_info** %5, align 8
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %2
  %14 = load %struct.wined3d_fence*, %struct.wined3d_fence** %4, align 8
  %15 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %14, i32 0, i32 2
  %16 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %17 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %20 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %23
  %25 = bitcast %struct.TYPE_2__* %15 to i8*
  %26 = bitcast %struct.TYPE_2__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  br label %95

27:                                               ; preds = %2
  %28 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %29 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @ARB_SYNC, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.wined3d_fence*, %struct.wined3d_fence** %4, align 8
  %37 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %40 = call i32 (i8*, %struct.wined3d_context*, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.wined3d_context* %39)
  br label %94

41:                                               ; preds = %27
  %42 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %43 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @APPLE_FENCE, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %41
  %50 = load %struct.wined3d_fence*, %struct.wined3d_fence** %4, align 8
  %51 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @glGenFencesAPPLE(i32 1, i32* %52)
  %54 = call i32 @GL_EXTCALL(i32 %53)
  %55 = call i32 @checkGLcall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.wined3d_fence*, %struct.wined3d_fence** %4, align 8
  %57 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to %struct.wined3d_context*
  %62 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %63 = call i32 (i8*, %struct.wined3d_context*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.wined3d_context* %61, %struct.wined3d_context* %62)
  br label %93

64:                                               ; preds = %41
  %65 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %66 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @NV_FENCE, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %64
  %73 = load %struct.wined3d_fence*, %struct.wined3d_fence** %4, align 8
  %74 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @glGenFencesNV(i32 1, i32* %75)
  %77 = call i32 @GL_EXTCALL(i32 %76)
  %78 = call i32 @checkGLcall(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.wined3d_fence*, %struct.wined3d_fence** %4, align 8
  %80 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to %struct.wined3d_context*
  %85 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %86 = call i32 (i8*, %struct.wined3d_context*, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), %struct.wined3d_context* %84, %struct.wined3d_context* %85)
  br label %92

87:                                               ; preds = %64
  %88 = call i32 @WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %89 = load %struct.wined3d_fence*, %struct.wined3d_fence** %4, align 8
  %90 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  br label %92

92:                                               ; preds = %87, %72
  br label %93

93:                                               ; preds = %92, %49
  br label %94

94:                                               ; preds = %93, %35
  br label %95

95:                                               ; preds = %94, %13
  %96 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %97 = load %struct.wined3d_fence*, %struct.wined3d_fence** %4, align 8
  %98 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %97, i32 0, i32 1
  store %struct.wined3d_context* %96, %struct.wined3d_context** %98, align 8
  %99 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %100 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %99, i32 0, i32 1
  %101 = load %struct.wined3d_fence*, %struct.wined3d_fence** %4, align 8
  %102 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %101, i32 0, i32 0
  %103 = call i32 @list_add_head(i32* %100, i32* %102)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_context*, ...) #2

declare dso_local i32 @GL_EXTCALL(i32) #2

declare dso_local i32 @glGenFencesAPPLE(i32, i32*) #2

declare dso_local i32 @checkGLcall(i8*) #2

declare dso_local i32 @glGenFencesNV(i32, i32*) #2

declare dso_local i32 @WARN(i8*) #2

declare dso_local i32 @list_add_head(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
