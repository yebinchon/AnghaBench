; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_texture.c_texture_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_texture.c_texture_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d9_texture = type { i32, i32*, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.d3d9_device = type { i32, i32 }
%struct.wined3d_resource_desc = type { i32, i32, i32, i32, i32, i64, i32, i64, i32, i32 }

@d3d9_texture_2d_vtbl = common dso_local global i32 0, align 4
@WINED3D_RTYPE_TEXTURE_2D = common dso_local global i32 0, align 4
@WINED3D_MULTISAMPLE_NONE = common dso_local global i32 0, align 4
@WINED3DUSAGE_TEXTURE = common dso_local global i32 0, align 4
@D3DPOOL_SCRATCH = common dso_local global i64 0, align 8
@WINED3DUSAGE_SCRATCH = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_MAP_R = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_MAP_W = common dso_local global i32 0, align 4
@D3DPOOL_DEFAULT = common dso_local global i64 0, align 8
@D3DUSAGE_DYNAMIC = common dso_local global i32 0, align 4
@WINED3D_TEXTURE_CREATE_MAPPABLE = common dso_local global i32 0, align 4
@WINED3D_TEXTURE_CREATE_GET_DC = common dso_local global i32 0, align 4
@D3DUSAGE_AUTOGENMIPMAP = common dso_local global i32 0, align 4
@D3DPOOL_SYSTEMMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [93 x i8] c"D3DUSAGE_AUTOGENMIPMAP texture can't be in D3DPOOL_SYSTEMMEM, returning D3DERR_INVALIDCALL.\0A\00", align 1
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"D3DUSAGE_AUTOGENMIPMAP texture with %u levels, returning D3DERR_INVALIDCALL.\0A\00", align 1
@WINED3D_TEXTURE_CREATE_GENERATE_MIPMAPS = common dso_local global i32 0, align 4
@D3DTEXF_LINEAR = common dso_local global i32 0, align 4
@D3DTEXF_NONE = common dso_local global i32 0, align 4
@d3d9_texture_wined3d_parent_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to create wined3d texture, hr %#x.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @texture_init(%struct.d3d9_texture* %0, %struct.d3d9_device* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.d3d9_texture*, align 8
  %11 = alloca %struct.d3d9_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.wined3d_resource_desc, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.d3d9_texture* %0, %struct.d3d9_texture** %10, align 8
  store %struct.d3d9_device* %1, %struct.d3d9_device** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i64 %7, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %21 = load %struct.d3d9_texture*, %struct.d3d9_texture** %10, align 8
  %22 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* @d3d9_texture_2d_vtbl, i32** %23, align 8
  %24 = load %struct.d3d9_texture*, %struct.d3d9_texture** %10, align 8
  %25 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %24, i32 0, i32 5
  %26 = call i32 @d3d9_resource_init(i32* %25)
  %27 = load %struct.d3d9_texture*, %struct.d3d9_texture** %10, align 8
  %28 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %27, i32 0, i32 4
  %29 = call i32 @list_init(i32* %28)
  %30 = load i32, i32* %15, align 4
  %31 = load %struct.d3d9_texture*, %struct.d3d9_texture** %10, align 8
  %32 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @WINED3D_RTYPE_TEXTURE_2D, align 4
  %34 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 9
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i32 @wined3dformat_from_d3dformat(i32 %35)
  %37 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 4
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @WINED3D_MULTISAMPLE_NONE, align 4
  %39 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 8
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 7
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %15, align 4
  %42 = call i32 @wined3dusage_from_d3dusage(i32 %41)
  %43 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 6
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* @WINED3DUSAGE_TEXTURE, align 4
  %45 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 8
  %48 = load i64, i64* %17, align 8
  %49 = load i64, i64* @D3DPOOL_SCRATCH, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %8
  %52 = load i32, i32* @WINED3DUSAGE_SCRATCH, align 4
  %53 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %51, %8
  %57 = load i64, i64* %17, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @wined3daccess_from_d3dpool(i64 %57, i32 %58)
  %60 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_R, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @WINED3D_RESOURCE_ACCESS_MAP_W, align 4
  %63 = or i32 %61, %62
  %64 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = load i32, i32* %12, align 4
  %66 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %13, align 4
  %68 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 2
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 3
  store i32 1, i32* %69, align 4
  %70 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 5
  store i64 0, i64* %70, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load i64, i64* @D3DPOOL_DEFAULT, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %56
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @D3DUSAGE_DYNAMIC, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74, %56
  %80 = load i32, i32* @WINED3D_TEXTURE_CREATE_MAPPABLE, align 4
  %81 = load i32, i32* %19, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %19, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = getelementptr inbounds %struct.wined3d_resource_desc, %struct.wined3d_resource_desc* %18, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @is_gdi_compat_wined3dformat(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @WINED3D_TEXTURE_CREATE_GET_DC, align 4
  %90 = load i32, i32* %19, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %19, align 4
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @D3DUSAGE_AUTOGENMIPMAP, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %92
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* @D3DPOOL_SYSTEMMEM, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %103, i32* %9, align 4
  br label %163

104:                                              ; preds = %97
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 1
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %14, align 4
  %112 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %113, i32* %9, align 4
  br label %163

114:                                              ; preds = %107, %104
  %115 = load i32, i32* @WINED3D_TEXTURE_CREATE_GENERATE_MIPMAPS, align 4
  %116 = load i32, i32* %19, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %19, align 4
  %118 = load i32, i32* @D3DTEXF_LINEAR, align 4
  %119 = load %struct.d3d9_texture*, %struct.d3d9_texture** %10, align 8
  %120 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  store i32 0, i32* %14, align 4
  br label %125

121:                                              ; preds = %92
  %122 = load i32, i32* @D3DTEXF_NONE, align 4
  %123 = load %struct.d3d9_texture*, %struct.d3d9_texture** %10, align 8
  %124 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %121, %114
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @max(i32 %129, i32 %130)
  %132 = call i32 @wined3d_log2i(i32 %131)
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %128, %125
  %135 = call i32 (...) @wined3d_mutex_lock()
  %136 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %137 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %19, align 4
  %141 = load %struct.d3d9_texture*, %struct.d3d9_texture** %10, align 8
  %142 = load %struct.d3d9_texture*, %struct.d3d9_texture** %10, align 8
  %143 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %142, i32 0, i32 2
  %144 = call i32 @wined3d_texture_create(i32 %138, %struct.wined3d_resource_desc* %18, i32 1, i32 %139, i32 %140, i32* null, %struct.d3d9_texture* %141, i32* @d3d9_texture_wined3d_parent_ops, i32* %143)
  store i32 %144, i32* %20, align 4
  %145 = call i32 (...) @wined3d_mutex_unlock()
  %146 = load i32, i32* %20, align 4
  %147 = call i64 @FAILED(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %134
  %150 = load i32, i32* %20, align 4
  %151 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %20, align 4
  store i32 %152, i32* %9, align 4
  br label %163

153:                                              ; preds = %134
  %154 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %155 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %154, i32 0, i32 0
  %156 = load %struct.d3d9_texture*, %struct.d3d9_texture** %10, align 8
  %157 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %156, i32 0, i32 1
  store i32* %155, i32** %157, align 8
  %158 = load %struct.d3d9_texture*, %struct.d3d9_texture** %10, align 8
  %159 = getelementptr inbounds %struct.d3d9_texture, %struct.d3d9_texture* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @IDirect3DDevice9Ex_AddRef(i32* %160)
  %162 = load i32, i32* @D3D_OK, align 4
  store i32 %162, i32* %9, align 4
  br label %163

163:                                              ; preds = %153, %149, %110, %101
  %164 = load i32, i32* %9, align 4
  ret i32 %164
}

declare dso_local i32 @d3d9_resource_init(i32*) #1

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @wined3dformat_from_d3dformat(i32) #1

declare dso_local i32 @wined3dusage_from_d3dusage(i32) #1

declare dso_local i32 @wined3daccess_from_d3dpool(i64, i32) #1

declare dso_local i64 @is_gdi_compat_wined3dformat(i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @wined3d_log2i(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @wined3d_mutex_lock(...) #1

declare dso_local i32 @wined3d_texture_create(i32, %struct.wined3d_resource_desc*, i32, i32, i32, i32*, %struct.d3d9_texture*, i32*, i32*) #1

declare dso_local i32 @wined3d_mutex_unlock(...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirect3DDevice9Ex_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
