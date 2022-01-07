; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_blt_sub_resource.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_emit_blt_sub_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)*, %struct.wined3d_cs_blt_sub_resource* (%struct.wined3d_cs*, i32, i32)* }
%struct.wined3d_cs_blt_sub_resource = type { i32, i32, i32, i32, %struct.wined3d_blt_fx, %struct.wined3d_box, %struct.wined3d_resource*, %struct.wined3d_box, %struct.wined3d_resource*, i32 }
%struct.wined3d_blt_fx = type { i32 }
%struct.wined3d_box = type { i32 }
%struct.wined3d_resource = type { i32 }

@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i32 0, align 4
@WINED3D_CS_OP_BLT_SUB_RESOURCE = common dso_local global i32 0, align 4
@WINED3D_BLT_SYNCHRONOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_cs_emit_blt_sub_resource(%struct.wined3d_cs* %0, %struct.wined3d_resource* %1, i32 %2, %struct.wined3d_box* %3, %struct.wined3d_resource* %4, i32 %5, %struct.wined3d_box* %6, i32 %7, %struct.wined3d_blt_fx* %8, i32 %9) #0 {
  %11 = alloca %struct.wined3d_cs*, align 8
  %12 = alloca %struct.wined3d_resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wined3d_box*, align 8
  %15 = alloca %struct.wined3d_resource*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.wined3d_box*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.wined3d_blt_fx*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.wined3d_cs_blt_sub_resource*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %11, align 8
  store %struct.wined3d_resource* %1, %struct.wined3d_resource** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.wined3d_box* %3, %struct.wined3d_box** %14, align 8
  store %struct.wined3d_resource* %4, %struct.wined3d_resource** %15, align 8
  store i32 %5, i32* %16, align 4
  store %struct.wined3d_box* %6, %struct.wined3d_box** %17, align 8
  store i32 %7, i32* %18, align 4
  store %struct.wined3d_blt_fx* %8, %struct.wined3d_blt_fx** %19, align 8
  store i32 %9, i32* %20, align 4
  %22 = load %struct.wined3d_cs*, %struct.wined3d_cs** %11, align 8
  %23 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load %struct.wined3d_cs_blt_sub_resource* (%struct.wined3d_cs*, i32, i32)*, %struct.wined3d_cs_blt_sub_resource* (%struct.wined3d_cs*, i32, i32)** %25, align 8
  %27 = load %struct.wined3d_cs*, %struct.wined3d_cs** %11, align 8
  %28 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %29 = call %struct.wined3d_cs_blt_sub_resource* %26(%struct.wined3d_cs* %27, i32 56, i32 %28)
  store %struct.wined3d_cs_blt_sub_resource* %29, %struct.wined3d_cs_blt_sub_resource** %21, align 8
  %30 = load i32, i32* @WINED3D_CS_OP_BLT_SUB_RESOURCE, align 4
  %31 = load %struct.wined3d_cs_blt_sub_resource*, %struct.wined3d_cs_blt_sub_resource** %21, align 8
  %32 = getelementptr inbounds %struct.wined3d_cs_blt_sub_resource, %struct.wined3d_cs_blt_sub_resource* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 8
  %33 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %34 = load %struct.wined3d_cs_blt_sub_resource*, %struct.wined3d_cs_blt_sub_resource** %21, align 8
  %35 = getelementptr inbounds %struct.wined3d_cs_blt_sub_resource, %struct.wined3d_cs_blt_sub_resource* %34, i32 0, i32 8
  store %struct.wined3d_resource* %33, %struct.wined3d_resource** %35, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load %struct.wined3d_cs_blt_sub_resource*, %struct.wined3d_cs_blt_sub_resource** %21, align 8
  %38 = getelementptr inbounds %struct.wined3d_cs_blt_sub_resource, %struct.wined3d_cs_blt_sub_resource* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.wined3d_cs_blt_sub_resource*, %struct.wined3d_cs_blt_sub_resource** %21, align 8
  %40 = getelementptr inbounds %struct.wined3d_cs_blt_sub_resource, %struct.wined3d_cs_blt_sub_resource* %39, i32 0, i32 7
  %41 = load %struct.wined3d_box*, %struct.wined3d_box** %14, align 8
  %42 = bitcast %struct.wined3d_box* %40 to i8*
  %43 = bitcast %struct.wined3d_box* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = load %struct.wined3d_resource*, %struct.wined3d_resource** %15, align 8
  %45 = load %struct.wined3d_cs_blt_sub_resource*, %struct.wined3d_cs_blt_sub_resource** %21, align 8
  %46 = getelementptr inbounds %struct.wined3d_cs_blt_sub_resource, %struct.wined3d_cs_blt_sub_resource* %45, i32 0, i32 6
  store %struct.wined3d_resource* %44, %struct.wined3d_resource** %46, align 8
  %47 = load i32, i32* %16, align 4
  %48 = load %struct.wined3d_cs_blt_sub_resource*, %struct.wined3d_cs_blt_sub_resource** %21, align 8
  %49 = getelementptr inbounds %struct.wined3d_cs_blt_sub_resource, %struct.wined3d_cs_blt_sub_resource* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.wined3d_cs_blt_sub_resource*, %struct.wined3d_cs_blt_sub_resource** %21, align 8
  %51 = getelementptr inbounds %struct.wined3d_cs_blt_sub_resource, %struct.wined3d_cs_blt_sub_resource* %50, i32 0, i32 5
  %52 = load %struct.wined3d_box*, %struct.wined3d_box** %17, align 8
  %53 = bitcast %struct.wined3d_box* %51 to i8*
  %54 = bitcast %struct.wined3d_box* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  %55 = load i32, i32* %18, align 4
  %56 = load %struct.wined3d_cs_blt_sub_resource*, %struct.wined3d_cs_blt_sub_resource** %21, align 8
  %57 = getelementptr inbounds %struct.wined3d_cs_blt_sub_resource, %struct.wined3d_cs_blt_sub_resource* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.wined3d_blt_fx*, %struct.wined3d_blt_fx** %19, align 8
  %59 = icmp ne %struct.wined3d_blt_fx* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %10
  %61 = load %struct.wined3d_cs_blt_sub_resource*, %struct.wined3d_cs_blt_sub_resource** %21, align 8
  %62 = getelementptr inbounds %struct.wined3d_cs_blt_sub_resource, %struct.wined3d_cs_blt_sub_resource* %61, i32 0, i32 4
  %63 = load %struct.wined3d_blt_fx*, %struct.wined3d_blt_fx** %19, align 8
  %64 = bitcast %struct.wined3d_blt_fx* %62 to i8*
  %65 = bitcast %struct.wined3d_blt_fx* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 4 %65, i64 4, i1 false)
  br label %70

66:                                               ; preds = %10
  %67 = load %struct.wined3d_cs_blt_sub_resource*, %struct.wined3d_cs_blt_sub_resource** %21, align 8
  %68 = getelementptr inbounds %struct.wined3d_cs_blt_sub_resource, %struct.wined3d_cs_blt_sub_resource* %67, i32 0, i32 4
  %69 = call i32 @memset(%struct.wined3d_blt_fx* %68, i32 0, i32 4)
  br label %70

70:                                               ; preds = %66, %60
  %71 = load i32, i32* %20, align 4
  %72 = load %struct.wined3d_cs_blt_sub_resource*, %struct.wined3d_cs_blt_sub_resource** %21, align 8
  %73 = getelementptr inbounds %struct.wined3d_cs_blt_sub_resource, %struct.wined3d_cs_blt_sub_resource* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %75 = call i32 @wined3d_resource_acquire(%struct.wined3d_resource* %74)
  %76 = load %struct.wined3d_resource*, %struct.wined3d_resource** %15, align 8
  %77 = icmp ne %struct.wined3d_resource* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load %struct.wined3d_resource*, %struct.wined3d_resource** %15, align 8
  %80 = call i32 @wined3d_resource_acquire(%struct.wined3d_resource* %79)
  br label %81

81:                                               ; preds = %78, %70
  %82 = load %struct.wined3d_cs*, %struct.wined3d_cs** %11, align 8
  %83 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %85, align 8
  %87 = load %struct.wined3d_cs*, %struct.wined3d_cs** %11, align 8
  %88 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %89 = call i32 %86(%struct.wined3d_cs* %87, i32 %88)
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* @WINED3D_BLT_SYNCHRONOUS, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %81
  %95 = load %struct.wined3d_cs*, %struct.wined3d_cs** %11, align 8
  %96 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32 (%struct.wined3d_cs*, i32)*, i32 (%struct.wined3d_cs*, i32)** %98, align 8
  %100 = load %struct.wined3d_cs*, %struct.wined3d_cs** %11, align 8
  %101 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %102 = call i32 %99(%struct.wined3d_cs* %100, i32 %101)
  br label %103

103:                                              ; preds = %94, %81
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.wined3d_blt_fx*, i32, i32) #2

declare dso_local i32 @wined3d_resource_acquire(%struct.wined3d_resource*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
