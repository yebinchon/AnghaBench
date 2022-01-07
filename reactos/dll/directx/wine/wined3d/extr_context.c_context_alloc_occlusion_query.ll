; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_alloc_occlusion_query.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_alloc_occlusion_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i32, i64*, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i64* }
%struct.wined3d_occlusion_query = type { i32, %struct.wined3d_context*, i64 }

@ARB_OCCLUSION_QUERY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"glGenQueries\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Allocated occlusion query %u in context %p.\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Occlusion queries not supported, not allocating query id.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_alloc_occlusion_query(%struct.wined3d_context* %0, %struct.wined3d_occlusion_query* %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_occlusion_query*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store %struct.wined3d_occlusion_query* %1, %struct.wined3d_occlusion_query** %4, align 8
  %6 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %7 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %6, i32 0, i32 3
  %8 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  store %struct.wined3d_gl_info* %8, %struct.wined3d_gl_info** %5, align 8
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %15 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %14, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %18 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %16, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.wined3d_occlusion_query*, %struct.wined3d_occlusion_query** %4, align 8
  %25 = getelementptr inbounds %struct.wined3d_occlusion_query, %struct.wined3d_occlusion_query* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  br label %50

26:                                               ; preds = %2
  %27 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %28 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @ARB_OCCLUSION_QUERY, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.wined3d_occlusion_query*, %struct.wined3d_occlusion_query** %4, align 8
  %36 = getelementptr inbounds %struct.wined3d_occlusion_query, %struct.wined3d_occlusion_query* %35, i32 0, i32 2
  %37 = call i32 @glGenQueries(i32 1, i64* %36)
  %38 = call i32 @GL_EXTCALL(i32 %37)
  %39 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.wined3d_occlusion_query*, %struct.wined3d_occlusion_query** %4, align 8
  %41 = getelementptr inbounds %struct.wined3d_occlusion_query, %struct.wined3d_occlusion_query* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %44 = call i32 @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %42, %struct.wined3d_context* %43)
  br label %49

45:                                               ; preds = %26
  %46 = call i32 @WARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.wined3d_occlusion_query*, %struct.wined3d_occlusion_query** %4, align 8
  %48 = getelementptr inbounds %struct.wined3d_occlusion_query, %struct.wined3d_occlusion_query* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %34
  br label %50

50:                                               ; preds = %49, %13
  %51 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %52 = load %struct.wined3d_occlusion_query*, %struct.wined3d_occlusion_query** %4, align 8
  %53 = getelementptr inbounds %struct.wined3d_occlusion_query, %struct.wined3d_occlusion_query* %52, i32 0, i32 1
  store %struct.wined3d_context* %51, %struct.wined3d_context** %53, align 8
  %54 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %55 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %54, i32 0, i32 1
  %56 = load %struct.wined3d_occlusion_query*, %struct.wined3d_occlusion_query** %4, align 8
  %57 = getelementptr inbounds %struct.wined3d_occlusion_query, %struct.wined3d_occlusion_query* %56, i32 0, i32 0
  %58 = call i32 @list_add_head(i32* %55, i32* %57)
  ret void
}

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glGenQueries(i32, i64*) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @TRACE(i8*, i64, %struct.wined3d_context*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
