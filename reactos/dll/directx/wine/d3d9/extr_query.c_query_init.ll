; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_query.c_query_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_query.c_query_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d9_query = type { i32, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.d3d9_device = type { i32, i32 }

@D3DQUERYTYPE_MEMORYPRESSURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Undocumented query %#x created.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Invalid query type %#x.\0A\00", align 1
@D3DERR_NOTAVAILABLE = common dso_local global i32 0, align 4
@d3d9_query_vtbl = common dso_local global i32 0, align 4
@d3d9_null_wined3d_parent_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to create wined3d query, hr %#x.\0A\00", align 1
@D3DQUERYTYPE_OCCLUSION = common dso_local global i32 0, align 4
@D3DQUERYTYPE_TIMESTAMPDISJOINT = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @query_init(%struct.d3d9_query* %0, %struct.d3d9_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3d9_query*, align 8
  %6 = alloca %struct.d3d9_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.d3d9_query* %0, %struct.d3d9_query** %5, align 8
  store %struct.d3d9_device* %1, %struct.d3d9_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @D3DQUERYTYPE_MEMORYPRESSURE, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 22
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %21

18:                                               ; preds = %12
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* @D3DERR_NOTAVAILABLE, align 4
  store i32 %22, i32* %4, align 4
  br label %78

23:                                               ; preds = %3
  %24 = load %struct.d3d9_query*, %struct.d3d9_query** %5, align 8
  %25 = getelementptr inbounds %struct.d3d9_query, %struct.d3d9_query* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* @d3d9_query_vtbl, i32** %26, align 8
  %27 = load %struct.d3d9_query*, %struct.d3d9_query** %5, align 8
  %28 = getelementptr inbounds %struct.d3d9_query, %struct.d3d9_query* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = call i32 (...) @wined3d_mutex_lock()
  %30 = load %struct.d3d9_device*, %struct.d3d9_device** %6, align 8
  %31 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.d3d9_query*, %struct.d3d9_query** %5, align 8
  %35 = load %struct.d3d9_query*, %struct.d3d9_query** %5, align 8
  %36 = getelementptr inbounds %struct.d3d9_query, %struct.d3d9_query* %35, i32 0, i32 3
  %37 = call i32 @wined3d_query_create(i32 %32, i32 %33, %struct.d3d9_query* %34, i32* @d3d9_null_wined3d_parent_ops, i32* %36)
  store i32 %37, i32* %8, align 4
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %23
  %41 = call i32 (...) @wined3d_mutex_unlock()
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %78

45:                                               ; preds = %23
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @D3DQUERYTYPE_OCCLUSION, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.d3d9_query*, %struct.d3d9_query** %5, align 8
  %51 = getelementptr inbounds %struct.d3d9_query, %struct.d3d9_query* %50, i32 0, i32 1
  store i32 4, i32* %51, align 4
  br label %67

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @D3DQUERYTYPE_TIMESTAMPDISJOINT, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.d3d9_query*, %struct.d3d9_query** %5, align 8
  %58 = getelementptr inbounds %struct.d3d9_query, %struct.d3d9_query* %57, i32 0, i32 1
  store i32 4, i32* %58, align 4
  br label %66

59:                                               ; preds = %52
  %60 = load %struct.d3d9_query*, %struct.d3d9_query** %5, align 8
  %61 = getelementptr inbounds %struct.d3d9_query, %struct.d3d9_query* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @wined3d_query_get_data_size(i32 %62)
  %64 = load %struct.d3d9_query*, %struct.d3d9_query** %5, align 8
  %65 = getelementptr inbounds %struct.d3d9_query, %struct.d3d9_query* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %59, %56
  br label %67

67:                                               ; preds = %66, %49
  %68 = call i32 (...) @wined3d_mutex_unlock()
  %69 = load %struct.d3d9_device*, %struct.d3d9_device** %6, align 8
  %70 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %69, i32 0, i32 0
  %71 = load %struct.d3d9_query*, %struct.d3d9_query** %5, align 8
  %72 = getelementptr inbounds %struct.d3d9_query, %struct.d3d9_query* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 8
  %73 = load %struct.d3d9_query*, %struct.d3d9_query** %5, align 8
  %74 = getelementptr inbounds %struct.d3d9_query, %struct.d3d9_query* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @IDirect3DDevice9Ex_AddRef(i32* %75)
  %77 = load i32, i32* @D3D_OK, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %67, %40, %21
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @wined3d_mutex_lock(...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @wined3d_query_create(i32, i32, %struct.d3d9_query*, i32*, i32*) #1

declare dso_local i32 @wined3d_mutex_unlock(...) #1

declare dso_local i32 @wined3d_query_get_data_size(i32) #1

declare dso_local i32 @IDirect3DDevice9Ex_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
