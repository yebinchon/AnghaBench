; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_so_statistics_query_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_so_statistics_query_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wined3d_gl_info }
%struct.wined3d_gl_info = type { i32* }
%struct.wined3d_parent_ops = type { i32 }
%struct.wined3d_query = type { i32 }
%struct.wined3d_so_statistics_query = type { i32, %struct.wined3d_query, i32 }

@WINED3D_QUERY_TYPE_SO_STATISTICS_STREAM0 = common dso_local global i32 0, align 4
@WINED3D_QUERY_TYPE_SO_STATISTICS_STREAM3 = common dso_local global i32 0, align 4
@WINED3DERR_NOTAVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"device %p, type %#x, parent %p, parent_ops %p, query %p.\0A\00", align 1
@WINED3D_GL_PRIMITIVE_QUERY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"OpenGL implementation does not support primitive queries.\0A\00", align 1
@ARB_TRANSFORM_FEEDBACK3 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"OpenGL implementation does not support indexed queries.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@so_statistics_query_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Created query %p.\0A\00", align 1
@WINED3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_device*, i32, i8*, %struct.wined3d_parent_ops*, %struct.wined3d_query**)* @wined3d_so_statistics_query_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_so_statistics_query_create(%struct.wined3d_device* %0, i32 %1, i8* %2, %struct.wined3d_parent_ops* %3, %struct.wined3d_query** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wined3d_parent_ops*, align 8
  %11 = alloca %struct.wined3d_query**, align 8
  %12 = alloca %struct.wined3d_gl_info*, align 8
  %13 = alloca %struct.wined3d_so_statistics_query*, align 8
  %14 = alloca i32, align 4
  store %struct.wined3d_device* %0, %struct.wined3d_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.wined3d_parent_ops* %3, %struct.wined3d_parent_ops** %10, align 8
  store %struct.wined3d_query** %4, %struct.wined3d_query*** %11, align 8
  %15 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %16 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.wined3d_gl_info* %18, %struct.wined3d_gl_info** %12, align 8
  %19 = load i32, i32* @WINED3D_QUERY_TYPE_SO_STATISTICS_STREAM0, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ule i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @WINED3D_QUERY_TYPE_SO_STATISTICS_STREAM3, align 4
  %25 = icmp ule i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @WINED3D_QUERY_TYPE_SO_STATISTICS_STREAM0, align 4
  %29 = sub i32 %27, %28
  store i32 %29, i32* %14, align 4
  br label %32

30:                                               ; preds = %22, %5
  %31 = load i32, i32* @WINED3DERR_NOTAVAILABLE, align 4
  store i32 %31, i32* %6, align 4
  br label %84

32:                                               ; preds = %26
  %33 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.wined3d_parent_ops*, %struct.wined3d_parent_ops** %10, align 8
  %37 = load %struct.wined3d_query**, %struct.wined3d_query*** %11, align 8
  %38 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), %struct.wined3d_device* %33, i32 %34, i8* %35, %struct.wined3d_parent_ops* %36, %struct.wined3d_query** %37)
  %39 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  %40 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @WINED3D_GL_PRIMITIVE_QUERY, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %32
  %47 = call i32 @WARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @WINED3DERR_NOTAVAILABLE, align 4
  store i32 %48, i32* %6, align 4
  br label %84

49:                                               ; preds = %32
  %50 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %12, align 8
  %51 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @ARB_TRANSFORM_FEEDBACK3, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = call i32 @WARN(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @WINED3DERR_NOTAVAILABLE, align 4
  store i32 %59, i32* %6, align 4
  br label %84

60:                                               ; preds = %49
  %61 = call %struct.wined3d_so_statistics_query* @heap_alloc_zero(i32 12)
  store %struct.wined3d_so_statistics_query* %61, %struct.wined3d_so_statistics_query** %13, align 8
  %62 = icmp ne %struct.wined3d_so_statistics_query* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %64, i32* %6, align 4
  br label %84

65:                                               ; preds = %60
  %66 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %13, align 8
  %67 = getelementptr inbounds %struct.wined3d_so_statistics_query, %struct.wined3d_so_statistics_query* %66, i32 0, i32 1
  %68 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %13, align 8
  %71 = getelementptr inbounds %struct.wined3d_so_statistics_query, %struct.wined3d_so_statistics_query* %70, i32 0, i32 2
  %72 = load i8*, i8** %9, align 8
  %73 = load %struct.wined3d_parent_ops*, %struct.wined3d_parent_ops** %10, align 8
  %74 = call i32 @wined3d_query_init(%struct.wined3d_query* %67, %struct.wined3d_device* %68, i32 %69, i32* %71, i32 4, i32* @so_statistics_query_ops, i8* %72, %struct.wined3d_parent_ops* %73)
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %13, align 8
  %77 = getelementptr inbounds %struct.wined3d_so_statistics_query, %struct.wined3d_so_statistics_query* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %13, align 8
  %79 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), %struct.wined3d_so_statistics_query* %78)
  %80 = load %struct.wined3d_so_statistics_query*, %struct.wined3d_so_statistics_query** %13, align 8
  %81 = getelementptr inbounds %struct.wined3d_so_statistics_query, %struct.wined3d_so_statistics_query* %80, i32 0, i32 1
  %82 = load %struct.wined3d_query**, %struct.wined3d_query*** %11, align 8
  store %struct.wined3d_query* %81, %struct.wined3d_query** %82, align 8
  %83 = load i32, i32* @WINED3D_OK, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %65, %63, %57, %46, %30
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local %struct.wined3d_so_statistics_query* @heap_alloc_zero(i32) #1

declare dso_local i32 @wined3d_query_init(%struct.wined3d_query*, %struct.wined3d_device*, i32, i32*, i32, i32*, i8*, %struct.wined3d_parent_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
