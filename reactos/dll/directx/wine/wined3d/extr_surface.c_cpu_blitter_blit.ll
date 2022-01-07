; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_cpu_blitter_blit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_cpu_blitter_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_blitter = type { i32 }
%struct.wined3d_context = type { i32 }
%struct.wined3d_surface = type { %struct.wined3d_texture* }
%struct.wined3d_texture = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.wined3d_color_key = type { i32 }
%struct.wined3d_box = type { i32, i32, i32, i32, i32, i32 }
%struct.wined3d_blt_fx = type { %struct.wined3d_color_key }

@WINED3D_BLT_ALPHA_TEST = common dso_local global i32 0, align 4
@WINED3D_BLT_SRC_CKEY_OVERRIDE = common dso_local global i32 0, align 4
@WINED3D_BLT_FX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unhandled op %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Failed to blit.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_blitter*, i32, %struct.wined3d_context*, %struct.wined3d_surface*, i32, %struct.TYPE_8__*, %struct.wined3d_surface*, i32, %struct.TYPE_8__*, %struct.wined3d_color_key*, i32)* @cpu_blitter_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_blitter_blit(%struct.wined3d_blitter* %0, i32 %1, %struct.wined3d_context* %2, %struct.wined3d_surface* %3, i32 %4, %struct.TYPE_8__* %5, %struct.wined3d_surface* %6, i32 %7, %struct.TYPE_8__* %8, %struct.wined3d_color_key* %9, i32 %10) #0 {
  %12 = alloca %struct.wined3d_blitter*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wined3d_context*, align 8
  %15 = alloca %struct.wined3d_surface*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca %struct.wined3d_surface*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_8__*, align 8
  %21 = alloca %struct.wined3d_color_key*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.wined3d_box, align 4
  %24 = alloca %struct.wined3d_box, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.wined3d_texture*, align 8
  %28 = alloca %struct.wined3d_texture*, align 8
  %29 = alloca %struct.wined3d_blt_fx, align 4
  %30 = alloca i32, align 4
  store %struct.wined3d_blitter* %0, %struct.wined3d_blitter** %12, align 8
  store i32 %1, i32* %13, align 4
  store %struct.wined3d_context* %2, %struct.wined3d_context** %14, align 8
  store %struct.wined3d_surface* %3, %struct.wined3d_surface** %15, align 8
  store i32 %4, i32* %16, align 4
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %17, align 8
  store %struct.wined3d_surface* %6, %struct.wined3d_surface** %18, align 8
  store i32 %7, i32* %19, align 4
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %20, align 8
  store %struct.wined3d_color_key* %9, %struct.wined3d_color_key** %21, align 8
  store i32 %10, i32* %22, align 4
  %31 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %23, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %31, align 4
  %35 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %23, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %35, align 4
  %39 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %23, i32 0, i32 2
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %39, align 4
  %43 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %23, i32 0, i32 3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %43, align 4
  %47 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %23, i32 0, i32 4
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %23, i32 0, i32 5
  store i32 1, i32* %48, align 4
  %49 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %24, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %49, align 4
  %53 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %24, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %53, align 4
  %57 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %24, i32 0, i32 2
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %57, align 4
  %61 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %24, i32 0, i32 3
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %61, align 4
  %65 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %24, i32 0, i32 4
  store i32 0, i32* %65, align 4
  %66 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %24, i32 0, i32 5
  store i32 1, i32* %66, align 4
  %67 = load %struct.wined3d_surface*, %struct.wined3d_surface** %18, align 8
  %68 = call i32 @surface_get_sub_resource_idx(%struct.wined3d_surface* %67)
  store i32 %68, i32* %25, align 4
  %69 = load %struct.wined3d_surface*, %struct.wined3d_surface** %15, align 8
  %70 = call i32 @surface_get_sub_resource_idx(%struct.wined3d_surface* %69)
  store i32 %70, i32* %26, align 4
  %71 = load %struct.wined3d_surface*, %struct.wined3d_surface** %18, align 8
  %72 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %71, i32 0, i32 0
  %73 = load %struct.wined3d_texture*, %struct.wined3d_texture** %72, align 8
  store %struct.wined3d_texture* %73, %struct.wined3d_texture** %27, align 8
  %74 = load %struct.wined3d_surface*, %struct.wined3d_surface** %15, align 8
  %75 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %74, i32 0, i32 0
  %76 = load %struct.wined3d_texture*, %struct.wined3d_texture** %75, align 8
  store %struct.wined3d_texture* %76, %struct.wined3d_texture** %28, align 8
  store i32 0, i32* %30, align 4
  %77 = call i32 @memset(%struct.wined3d_blt_fx* %29, i32 0, i32 4)
  %78 = load i32, i32* %13, align 4
  switch i32 %78, label %94 [
    i32 132, label %79
    i32 129, label %79
    i32 128, label %79
    i32 131, label %80
    i32 130, label %84
  ]

79:                                               ; preds = %11, %11, %11
  br label %97

80:                                               ; preds = %11
  %81 = load i32, i32* @WINED3D_BLT_ALPHA_TEST, align 4
  %82 = load i32, i32* %30, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %30, align 4
  br label %97

84:                                               ; preds = %11
  %85 = load i32, i32* @WINED3D_BLT_SRC_CKEY_OVERRIDE, align 4
  %86 = load i32, i32* @WINED3D_BLT_FX, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %30, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %30, align 4
  %90 = getelementptr inbounds %struct.wined3d_blt_fx, %struct.wined3d_blt_fx* %29, i32 0, i32 0
  %91 = load %struct.wined3d_color_key*, %struct.wined3d_color_key** %21, align 8
  %92 = bitcast %struct.wined3d_color_key* %90 to i8*
  %93 = bitcast %struct.wined3d_color_key* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 4, i1 false)
  br label %97

94:                                               ; preds = %11
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %84, %80, %79
  %98 = load %struct.wined3d_texture*, %struct.wined3d_texture** %27, align 8
  %99 = load i32, i32* %25, align 4
  %100 = load %struct.wined3d_texture*, %struct.wined3d_texture** %28, align 8
  %101 = load i32, i32* %26, align 4
  %102 = load i32, i32* %30, align 4
  %103 = load i32, i32* %22, align 4
  %104 = call i32 @surface_cpu_blt(%struct.wined3d_texture* %98, i32 %99, %struct.wined3d_box* %23, %struct.wined3d_texture* %100, i32 %101, %struct.wined3d_box* %24, i32 %102, %struct.wined3d_blt_fx* %29, i32 %103)
  %105 = call i64 @FAILED(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = call i32 @ERR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %97
  %110 = load %struct.wined3d_texture*, %struct.wined3d_texture** %27, align 8
  %111 = load i32, i32* %25, align 4
  %112 = load %struct.wined3d_context*, %struct.wined3d_context** %14, align 8
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @wined3d_texture_load_location(%struct.wined3d_texture* %110, i32 %111, %struct.wined3d_context* %112, i32 %113)
  %115 = load i32, i32* %19, align 4
  %116 = load %struct.wined3d_texture*, %struct.wined3d_texture** %27, align 8
  %117 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %116, i32 0, i32 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i32, i32* %25, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.wined3d_texture*, %struct.wined3d_texture** %27, align 8
  %125 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %123, %127
  %129 = or i32 %115, %128
  ret i32 %129
}

declare dso_local i32 @surface_get_sub_resource_idx(%struct.wined3d_surface*) #1

declare dso_local i32 @memset(%struct.wined3d_blt_fx*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @surface_cpu_blt(%struct.wined3d_texture*, i32, %struct.wined3d_box*, %struct.wined3d_texture*, i32, %struct.wined3d_box*, i32, %struct.wined3d_blt_fx*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @wined3d_texture_load_location(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
