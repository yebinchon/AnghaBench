; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_ffp_blit_supported.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_ffp_blit_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.wined3d_context = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.wined3d_resource = type { i32, i32, %struct.wined3d_format* }
%struct.wined3d_format = type { i32*, i64, i32 }

@WINED3D_GL_RES_TYPE_TEX_2D = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_GPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Source or destination resource is not GPU accessible.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@WINED3D_BLIT_OP_RAW_BLIT = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_DEPTH = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_STENCIL = common dso_local global i32 0, align 4
@WINED3D_BLIT_OP_DEPTH_BLIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Color keying requires converted textures.\0A\00", align 1
@WINED3D_GL_LEGACY_CONTEXT = common dso_local global i64 0, align 8
@d3d = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Checking support for fixup:\0A\00", align 1
@wined3d_settings = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ORM_BACKBUFFER = common dso_local global i32 0, align 4
@WINED3D_LOCATION_DRAWABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Claiming fixup support because of ORM_BACKBUFFER.\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Fixups are not supported.\0A\00", align 1
@WINED3DUSAGE_RENDERTARGET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Can only blit to render targets.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Unsupported blit operation %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.wined3d_context*, %struct.wined3d_resource*, i32, %struct.wined3d_resource*, i32)* @ffp_blit_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffp_blit_supported(i32 %0, %struct.wined3d_context* %1, %struct.wined3d_resource* %2, i32 %3, %struct.wined3d_resource* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_context*, align 8
  %10 = alloca %struct.wined3d_resource*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wined3d_resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wined3d_format*, align 8
  %15 = alloca %struct.wined3d_format*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.wined3d_context* %1, %struct.wined3d_context** %9, align 8
  store %struct.wined3d_resource* %2, %struct.wined3d_resource** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.wined3d_resource* %4, %struct.wined3d_resource** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.wined3d_resource*, %struct.wined3d_resource** %10, align 8
  %18 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %17, i32 0, i32 2
  %19 = load %struct.wined3d_format*, %struct.wined3d_format** %18, align 8
  store %struct.wined3d_format* %19, %struct.wined3d_format** %14, align 8
  %20 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %21 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %20, i32 0, i32 2
  %22 = load %struct.wined3d_format*, %struct.wined3d_format** %21, align 8
  store %struct.wined3d_format* %22, %struct.wined3d_format** %15, align 8
  %23 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %24 = icmp ne %struct.wined3d_format* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %6
  %26 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %27 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @WINED3DFMT_FLAG_COMPRESSED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %25
  %36 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %37 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WINED3DFMT_FLAG_COMPRESSED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %35, %25, %6
  %47 = phi i1 [ false, %25 ], [ false, %6 ], [ %45, %35 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %46
  %52 = load %struct.wined3d_resource*, %struct.wined3d_resource** %10, align 8
  %53 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %56 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %54, %57
  %59 = load i32, i32* @WINED3D_RESOURCE_ACCESS_GPU, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %51
  %63 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %7, align 4
  br label %178

65:                                               ; preds = %51, %46
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @WINED3D_BLIT_OP_RAW_BLIT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %65
  %70 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %71 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %74 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %69
  %78 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %79 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @WINED3DFMT_FLAG_DEPTH, align 4
  %85 = load i32, i32* @WINED3DFMT_FLAG_STENCIL, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i32, i32* @WINED3D_BLIT_OP_DEPTH_BLIT, align 4
  store i32 %90, i32* %8, align 4
  br label %92

91:                                               ; preds = %77
  store i32 130, i32* %8, align 4
  br label %92

92:                                               ; preds = %91, %89
  br label %93

93:                                               ; preds = %92, %69, %65
  %94 = load i32, i32* %8, align 4
  switch i32 %94, label %174 [
    i32 128, label %95
    i32 130, label %106
    i32 129, label %106
  ]

95:                                               ; preds = %93
  %96 = load %struct.wined3d_context*, %struct.wined3d_context** %9, align 8
  %97 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %7, align 4
  br label %178

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %93, %93, %105
  %107 = load %struct.wined3d_context*, %struct.wined3d_context** %9, align 8
  %108 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* @WINED3D_GL_LEGACY_CONTEXT, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %106
  %117 = load i32, i32* @FALSE, align 4
  store i32 %117, i32* %7, align 4
  br label %178

118:                                              ; preds = %106
  %119 = load i32, i32* @d3d, align 4
  %120 = call i32 @TRACE_ON(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %124 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %125 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dump_color_fixup_desc(i32 %126)
  br label %128

128:                                              ; preds = %122, %118
  %129 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %130 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @is_identity_fixup(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %136 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @is_identity_fixup(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %162, label %140

140:                                              ; preds = %134, %128
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wined3d_settings, i32 0, i32 0), align 4
  %142 = load i32, i32* @ORM_BACKBUFFER, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %158

144:                                              ; preds = %140
  %145 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %146 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %149 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %147, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* @WINED3D_LOCATION_DRAWABLE, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = call i32 @WARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %161

158:                                              ; preds = %152, %144, %140
  %159 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %160 = load i32, i32* @FALSE, align 4
  store i32 %160, i32* %7, align 4
  br label %178

161:                                              ; preds = %156
  br label %162

162:                                              ; preds = %161, %134
  %163 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %164 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @WINED3DUSAGE_RENDERTARGET, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %162
  %170 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %171 = load i32, i32* @FALSE, align 4
  store i32 %171, i32* %7, align 4
  br label %178

172:                                              ; preds = %162
  %173 = load i32, i32* @TRUE, align 4
  store i32 %173, i32* %7, align 4
  br label %178

174:                                              ; preds = %93
  %175 = load i32, i32* %8, align 4
  %176 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* @FALSE, align 4
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %174, %172, %169, %158, %116, %102, %62
  %179 = load i32, i32* %7, align 4
  ret i32 %179
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @TRACE_ON(i32) #1

declare dso_local i32 @dump_color_fixup_desc(i32) #1

declare dso_local i32 @is_identity_fixup(i32) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
