; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_allocate_gl_mutable_storage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_allocate_gl_mutable_storage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.wined3d_format = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.wined3d_gl_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)* }

@GL_TEXTURE_2D_ARRAY = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_HEIGHT_SCALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"texture %p, layer %u, level %u, target %#x, width %u, height %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"glTexImage3D\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"glTexImage2D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_texture*, i32, %struct.wined3d_format*, %struct.wined3d_gl_info*)* @wined3d_texture_allocate_gl_mutable_storage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_texture_allocate_gl_mutable_storage(%struct.wined3d_texture* %0, i32 %1, %struct.wined3d_format* %2, %struct.wined3d_gl_info* %3) #0 {
  %5 = alloca %struct.wined3d_texture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_format*, align 8
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wined3d_format* %2, %struct.wined3d_format** %7, align 8
  store %struct.wined3d_gl_info* %3, %struct.wined3d_gl_info** %8, align 8
  %16 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %17 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %20 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GL_TEXTURE_2D_ARRAY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %29

25:                                               ; preds = %4
  %26 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %27 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  br label %29

29:                                               ; preds = %25, %24
  %30 = phi i32 [ 1, %24 ], [ %28, %25 ]
  store i32 %30, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %127, %29
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %130

35:                                               ; preds = %31
  %36 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = mul i32 %37, %38
  %40 = call i32 @wined3d_texture_get_sub_resource_target(%struct.wined3d_texture* %36, i32 %39)
  store i32 %40, i32* %15, align 4
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %123, %35
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %126

45:                                               ; preds = %41
  %46 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @wined3d_texture_get_level_pow2_width(%struct.wined3d_texture* %46, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @wined3d_texture_get_level_pow2_height(%struct.wined3d_texture* %49, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %53 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @WINED3DFMT_FLAG_HEIGHT_SCALE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %45
  %60 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %61 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %14, align 4
  %65 = mul nsw i32 %64, %63
  store i32 %65, i32* %14, align 4
  %66 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %67 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %14, align 4
  %71 = sdiv i32 %70, %69
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %59, %45
  %73 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @TRACE(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), %struct.wined3d_texture* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %81 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @GL_TEXTURE_2D_ARRAY, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %72
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.wined3d_texture*, %struct.wined3d_texture** %5, align 8
  %92 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %95 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %98 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @glTexImage3D(i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %93, i32 0, i32 %96, i32 %99, i32* null)
  %101 = call i32 @GL_EXTCALL(i32 %100)
  %102 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %122

103:                                              ; preds = %72
  %104 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %105 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)** %107, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %115 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.wined3d_format*, %struct.wined3d_format** %7, align 8
  %118 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 %108(i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 0, i32 %116, i32 %119, i32* null)
  %121 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %122

122:                                              ; preds = %103, %85
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %9, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %41

126:                                              ; preds = %41
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %11, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %31

130:                                              ; preds = %31
  ret void
}

declare dso_local i32 @wined3d_texture_get_sub_resource_target(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_level_pow2_width(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_level_pow2_height(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.wined3d_texture*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glTexImage3D(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
