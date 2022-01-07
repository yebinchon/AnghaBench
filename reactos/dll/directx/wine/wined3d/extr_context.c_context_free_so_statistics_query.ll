; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_free_so_statistics_query.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_free_so_statistics_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_so_statistics_query = type { %struct.TYPE_2__, %struct.wined3d_context*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.wined3d_context = type { i64, %struct.TYPE_2__*, i32 }

@.str = private unnamed_addr constant [68 x i8] c"Failed to grow free list, leaking GL queries %u, %u in context %p.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_free_so_statistics_query(%struct.wined3d_so_statistics_query* %0) #0 {
  %2 = alloca %struct.wined3d_so_statistics_query*, align 8
  %3 = alloca %struct.wined3d_context*, align 8
  store %struct.wined3d_so_statistics_query* %0, %struct.wined3d_so_statistics_query** %2, align 8
  %4 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %2, align 8
  %5 = getelementptr inbounds %struct.wined3d_so_statistics_query, %struct.wined3d_so_statistics_query* %4, i32 0, i32 1
  %6 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  store %struct.wined3d_context* %6, %struct.wined3d_context** %3, align 8
  %7 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %2, align 8
  %8 = getelementptr inbounds %struct.wined3d_so_statistics_query, %struct.wined3d_so_statistics_query* %7, i32 0, i32 2
  %9 = call i32 @list_remove(i32* %8)
  %10 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %2, align 8
  %11 = getelementptr inbounds %struct.wined3d_so_statistics_query, %struct.wined3d_so_statistics_query* %10, i32 0, i32 1
  store %struct.wined3d_context* null, %struct.wined3d_context** %11, align 8
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %13 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %12, i32 0, i32 1
  %14 = bitcast %struct.TYPE_2__** %13 to i8**
  %15 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %16 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %15, i32 0, i32 2
  %17 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %18 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 1
  %21 = call i32 @wined3d_array_reserve(i8** %14, i32* %16, i64 %20, i32 8)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %1
  %24 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %2, align 8
  %25 = getelementptr inbounds %struct.wined3d_so_statistics_query, %struct.wined3d_so_statistics_query* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %2, align 8
  %31 = getelementptr inbounds %struct.wined3d_so_statistics_query, %struct.wined3d_so_statistics_query* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %37 = call i32 @ERR(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %35, %struct.wined3d_context* %36)
  br label %51

38:                                               ; preds = %1
  %39 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %40 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %43 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %44
  %47 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %2, align 8
  %48 = getelementptr inbounds %struct.wined3d_so_statistics_query, %struct.wined3d_so_statistics_query* %47, i32 0, i32 0
  %49 = bitcast %struct.TYPE_2__* %46 to i8*
  %50 = bitcast %struct.TYPE_2__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 8, i1 false)
  br label %51

51:                                               ; preds = %38, %23
  ret void
}

declare dso_local i32 @list_remove(i32*) #1

declare dso_local i32 @wined3d_array_reserve(i8**, i32*, i64, i32) #1

declare dso_local i32 @ERR(i8*, i32, i32, %struct.wined3d_context*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
