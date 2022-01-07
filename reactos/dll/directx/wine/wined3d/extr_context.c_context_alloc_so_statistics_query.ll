; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_alloc_so_statistics_query.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_alloc_so_statistics_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, i32, %struct.TYPE_2__*, %struct.wined3d_gl_info* }
%struct.TYPE_2__ = type { i32* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_so_statistics_query = type { i32, %struct.wined3d_context*, %struct.TYPE_2__ }

@.str = private unnamed_addr constant [13 x i8] c"glGenQueries\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Allocated SO statistics queries %u, %u in context %p.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_alloc_so_statistics_query(%struct.wined3d_context* %0, %struct.wined3d_so_statistics_query* %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca %struct.wined3d_so_statistics_query*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store %struct.wined3d_so_statistics_query* %1, %struct.wined3d_so_statistics_query** %4, align 8
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
  %14 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %4, align 8
  %15 = getelementptr inbounds %struct.wined3d_so_statistics_query, %struct.wined3d_so_statistics_query* %14, i32 0, i32 2
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  br label %54

27:                                               ; preds = %2
  %28 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %4, align 8
  %29 = getelementptr inbounds %struct.wined3d_so_statistics_query, %struct.wined3d_so_statistics_query* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @ARRAY_SIZE(i32* %31)
  %33 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %4, align 8
  %34 = getelementptr inbounds %struct.wined3d_so_statistics_query, %struct.wined3d_so_statistics_query* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @glGenQueries(i32 %32, i32* %36)
  %38 = call i32 @GL_EXTCALL(i32 %37)
  %39 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %4, align 8
  %41 = getelementptr inbounds %struct.wined3d_so_statistics_query, %struct.wined3d_so_statistics_query* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %4, align 8
  %47 = getelementptr inbounds %struct.wined3d_so_statistics_query, %struct.wined3d_so_statistics_query* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %53 = call i32 @TRACE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %51, %struct.wined3d_context* %52)
  br label %54

54:                                               ; preds = %27, %13
  %55 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %56 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %4, align 8
  %57 = getelementptr inbounds %struct.wined3d_so_statistics_query, %struct.wined3d_so_statistics_query* %56, i32 0, i32 1
  store %struct.wined3d_context* %55, %struct.wined3d_context** %57, align 8
  %58 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %59 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %58, i32 0, i32 1
  %60 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %4, align 8
  %61 = getelementptr inbounds %struct.wined3d_so_statistics_query, %struct.wined3d_so_statistics_query* %60, i32 0, i32 0
  %62 = call i32 @list_add_head(i32* %59, i32* %61)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GL_EXTCALL(i32) #2

declare dso_local i32 @glGenQueries(i32, i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @checkGLcall(i8*) #2

declare dso_local i32 @TRACE(i8*, i32, i32, %struct.wined3d_context*) #2

declare dso_local i32 @list_add_head(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
