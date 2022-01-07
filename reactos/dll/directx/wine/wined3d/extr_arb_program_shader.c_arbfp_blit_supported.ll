; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_arbfp_blit_supported.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_arbfp_blit_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.wined3d_context = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.wined3d_resource = type { i32, %struct.wined3d_format* }
%struct.wined3d_format = type { i64, i32*, i32 }

@ARB_FRAGMENT_PROGRAM = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@WINED3D_BLIT_OP_RAW_BLIT = common dso_local global i32 0, align 4
@WINED3D_GL_RES_TYPE_TEX_2D = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_DEPTH = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_STENCIL = common dso_local global i32 0, align 4
@WINED3D_BLIT_OP_DEPTH_BLIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Color keying not supported with converted textures.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupported blit_op=%d\0A\00", align 1
@WINED3DFMT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@WINED3D_RESOURCE_ACCESS_GPU = common dso_local global i32 0, align 4
@d3d_shader = common dso_local global i32 0, align 4
@d3d = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Checking support for fixup:\0A\00", align 1
@WINED3D_LOCATION_DRAWABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Destination fixups are not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"[OK]\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@wined3d_settings = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ORM_BACKBUFFER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"Claiming fixup support because of ORM_BACKBUFFER.\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"[FAILED]\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Unsupported YUV fixup %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.wined3d_context*, %struct.wined3d_resource*, i64, %struct.wined3d_resource*, i64)* @arbfp_blit_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arbfp_blit_supported(i32 %0, %struct.wined3d_context* %1, %struct.wined3d_resource* %2, i64 %3, %struct.wined3d_resource* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_context*, align 8
  %10 = alloca %struct.wined3d_resource*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wined3d_resource*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.wined3d_format*, align 8
  %15 = alloca %struct.wined3d_format*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.wined3d_context* %1, %struct.wined3d_context** %9, align 8
  store %struct.wined3d_resource* %2, %struct.wined3d_resource** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.wined3d_resource* %4, %struct.wined3d_resource** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load %struct.wined3d_resource*, %struct.wined3d_resource** %10, align 8
  %19 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %18, i32 0, i32 1
  %20 = load %struct.wined3d_format*, %struct.wined3d_format** %19, align 8
  store %struct.wined3d_format* %20, %struct.wined3d_format** %14, align 8
  %21 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %22 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %21, i32 0, i32 1
  %23 = load %struct.wined3d_format*, %struct.wined3d_format** %22, align 8
  store %struct.wined3d_format* %23, %struct.wined3d_format** %15, align 8
  %24 = load %struct.wined3d_context*, %struct.wined3d_context** %9, align 8
  %25 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @ARB_FRAGMENT_PROGRAM, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %6
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %7, align 4
  br label %197

35:                                               ; preds = %6
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @WINED3D_BLIT_OP_RAW_BLIT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %35
  %40 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %41 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %44 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %39
  %48 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %49 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @WINED3DFMT_FLAG_DEPTH, align 4
  %55 = load i32, i32* @WINED3DFMT_FLAG_STENCIL, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* @WINED3D_BLIT_OP_DEPTH_BLIT, align 4
  store i32 %60, i32* %8, align 4
  br label %62

61:                                               ; preds = %47
  store i32 130, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %59
  br label %63

63:                                               ; preds = %62, %39, %35
  %64 = load i32, i32* %8, align 4
  switch i32 %64, label %77 [
    i32 128, label %65
    i32 129, label %76
    i32 130, label %76
  ]

65:                                               ; preds = %63
  %66 = load %struct.wined3d_context*, %struct.wined3d_context** %9, align 8
  %67 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %65
  %73 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %7, align 4
  br label %197

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %63, %63, %75
  br label %81

77:                                               ; preds = %63
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %7, align 4
  br label %197

81:                                               ; preds = %76
  %82 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %83 = icmp ne %struct.wined3d_format* %82, null
  br i1 %83, label %84, label %105

84:                                               ; preds = %81
  %85 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %86 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @WINED3DFMT_FLAG_COMPRESSED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %84
  %95 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %96 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @WINED3D_GL_RES_TYPE_TEX_2D, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @WINED3DFMT_FLAG_COMPRESSED, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  br label %105

105:                                              ; preds = %94, %84, %81
  %106 = phi i1 [ false, %84 ], [ false, %81 ], [ %104, %94 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %123, label %110

110:                                              ; preds = %105
  %111 = load %struct.wined3d_resource*, %struct.wined3d_resource** %10, align 8
  %112 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.wined3d_resource*, %struct.wined3d_resource** %12, align 8
  %115 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %113, %116
  %118 = load i32, i32* @WINED3D_RESOURCE_ACCESS_GPU, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %110
  %122 = load i32, i32* @FALSE, align 4
  store i32 %122, i32* %7, align 4
  br label %197

123:                                              ; preds = %110, %105
  %124 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %125 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @get_complex_fixup(i32 %126)
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* @d3d_shader, align 4
  %129 = call i64 @TRACE_ON(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %123
  %132 = load i32, i32* @d3d, align 4
  %133 = call i64 @TRACE_ON(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %137 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %138 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @dump_color_fixup_desc(i32 %139)
  br label %141

141:                                              ; preds = %135, %131, %123
  %142 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %143 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @is_identity_fixup(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %162, label %147

147:                                              ; preds = %141
  %148 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %149 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %152 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %150, %153
  br i1 %154, label %159, label %155

155:                                              ; preds = %147
  %156 = load i64, i64* %13, align 8
  %157 = load i64, i64* @WINED3D_LOCATION_DRAWABLE, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %155, %147
  %160 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %161 = load i32, i32* @FALSE, align 4
  store i32 %161, i32* %7, align 4
  br label %197

162:                                              ; preds = %155, %141
  %163 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %164 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i64 @is_identity_fixup(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %170 = load i32, i32* @TRUE, align 4
  store i32 %170, i32* %7, align 4
  br label %197

171:                                              ; preds = %162
  %172 = load %struct.wined3d_format*, %struct.wined3d_format** %14, align 8
  %173 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @is_complex_fixup(i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %187, label %177

177:                                              ; preds = %171
  %178 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wined3d_settings, i32 0, i32 0), align 8
  %179 = load i64, i64* @ORM_BACKBUFFER, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = call i32 @WARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %183 = load i32, i32* @TRUE, align 4
  store i32 %183, i32* %7, align 4
  br label %197

184:                                              ; preds = %177
  %185 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %186 = load i32, i32* @FALSE, align 4
  store i32 %186, i32* %7, align 4
  br label %197

187:                                              ; preds = %171
  %188 = load i32, i32* %16, align 4
  switch i32 %188, label %192 [
    i32 132, label %189
    i32 133, label %189
    i32 131, label %189
    i32 135, label %189
    i32 134, label %189
  ]

189:                                              ; preds = %187, %187, %187, %187, %187
  %190 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %191 = load i32, i32* @TRUE, align 4
  store i32 %191, i32* %7, align 4
  br label %197

192:                                              ; preds = %187
  %193 = load i32, i32* %16, align 4
  %194 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %193)
  %195 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %196 = load i32, i32* @FALSE, align 4
  store i32 %196, i32* %7, align 4
  br label %197

197:                                              ; preds = %192, %189, %184, %181, %168, %159, %121, %77, %72, %33
  %198 = load i32, i32* %7, align 4
  ret i32 %198
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @get_complex_fixup(i32) #1

declare dso_local i64 @TRACE_ON(i32) #1

declare dso_local i32 @dump_color_fixup_desc(i32) #1

declare dso_local i64 @is_identity_fixup(i32) #1

declare dso_local i32 @is_complex_fixup(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
