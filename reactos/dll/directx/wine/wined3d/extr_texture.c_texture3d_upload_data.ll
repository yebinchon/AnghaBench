; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture3d_upload_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_texture3d_upload_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.wined3d_format* }
%struct.wined3d_format = type { i32, i32, i32, i32 (i8*, i8*, i32, i32, i32, i32, i32, i32, i32)* }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_box = type { i32, i32, i32, i32, i32, i32 }
%struct.wined3d_const_bo_address = type { i8*, i64 }

@.str = private unnamed_addr constant [101 x i8] c"texture %p, sub_resource_idx %u, context %p, box %s, data {%#x:%p}, row_pitch %#x, slice_pitch %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Loading a converted texture from a PBO.\0A\00", align 1
@WINED3DFMT_FLAG_BLOCKS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Converting a block-based format.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Ignoring row/slice pitch (%u/%u).\0A\00", align 1
@GL_PIXEL_UNPACK_BUFFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"glBindBuffer\00", align 1
@GL_TEXTURE_3D = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"glTexSubImage3D\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_texture*, i32, %struct.wined3d_context*, %struct.wined3d_box*, %struct.wined3d_const_bo_address*, i32, i32)* @texture3d_upload_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @texture3d_upload_data(%struct.wined3d_texture* %0, i32 %1, %struct.wined3d_context* %2, %struct.wined3d_box* %3, %struct.wined3d_const_bo_address* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.wined3d_texture*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_context*, align 8
  %11 = alloca %struct.wined3d_box*, align 8
  %12 = alloca %struct.wined3d_const_bo_address*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.wined3d_format*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.wined3d_gl_info*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.wined3d_context* %2, %struct.wined3d_context** %10, align 8
  store %struct.wined3d_box* %3, %struct.wined3d_box** %11, align 8
  store %struct.wined3d_const_bo_address* %4, %struct.wined3d_const_bo_address** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %31 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %32 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.wined3d_format*, %struct.wined3d_format** %33, align 8
  store %struct.wined3d_format* %34, %struct.wined3d_format** %15, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %37 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = urem i32 %35, %38
  store i32 %39, i32* %16, align 4
  %40 = load %struct.wined3d_context*, %struct.wined3d_context** %10, align 8
  %41 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %40, i32 0, i32 0
  %42 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %41, align 8
  store %struct.wined3d_gl_info* %42, %struct.wined3d_gl_info** %17, align 8
  %43 = load %struct.wined3d_const_bo_address*, %struct.wined3d_const_bo_address** %12, align 8
  %44 = getelementptr inbounds %struct.wined3d_const_bo_address, %struct.wined3d_const_bo_address* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %29, align 8
  store i8* null, i8** %30, align 8
  %46 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.wined3d_context*, %struct.wined3d_context** %10, align 8
  %49 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %50 = call i32 @debug_box(%struct.wined3d_box* %49)
  %51 = load %struct.wined3d_const_bo_address*, %struct.wined3d_const_bo_address** %12, align 8
  %52 = getelementptr inbounds %struct.wined3d_const_bo_address, %struct.wined3d_const_bo_address* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.wined3d_const_bo_address*, %struct.wined3d_const_bo_address** %12, align 8
  %55 = getelementptr inbounds %struct.wined3d_const_bo_address, %struct.wined3d_const_bo_address* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @TRACE(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0), %struct.wined3d_texture* %46, i32 %47, %struct.wined3d_context* %48, i32 %50, i64 %53, i8* %56, i32 %57, i32 %58)
  %60 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %61 = load i32, i32* %16, align 4
  %62 = call i32 @wined3d_texture_get_level_width(%struct.wined3d_texture* %60, i32 %61)
  store i32 %62, i32* %26, align 4
  %63 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @wined3d_texture_get_level_height(%struct.wined3d_texture* %63, i32 %64)
  store i32 %65, i32* %27, align 4
  %66 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @wined3d_texture_get_level_depth(%struct.wined3d_texture* %66, i32 %67)
  store i32 %68, i32* %28, align 4
  %69 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %70 = icmp ne %struct.wined3d_box* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %7
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  %72 = load i32, i32* %26, align 4
  store i32 %72, i32* %21, align 4
  %73 = load i32, i32* %27, align 4
  store i32 %73, i32* %22, align 4
  %74 = load i32, i32* %28, align 4
  store i32 %74, i32* %23, align 4
  br label %106

75:                                               ; preds = %7
  %76 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %77 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %18, align 4
  %79 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %80 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %19, align 4
  %82 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %83 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %20, align 4
  %85 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %86 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %89 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sub i32 %87, %90
  store i32 %91, i32* %21, align 4
  %92 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %93 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %96 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sub i32 %94, %97
  store i32 %98, i32* %22, align 4
  %99 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %100 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.wined3d_box*, %struct.wined3d_box** %11, align 8
  %103 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = sub i32 %101, %104
  store i32 %105, i32* %23, align 4
  br label %106

106:                                              ; preds = %75, %71
  %107 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %108 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %156

111:                                              ; preds = %106
  %112 = load %struct.wined3d_const_bo_address*, %struct.wined3d_const_bo_address** %12, align 8
  %113 = getelementptr inbounds %struct.wined3d_const_bo_address, %struct.wined3d_const_bo_address* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %111
  %119 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %120 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @WINED3DFMT_FLAG_BLOCKS, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %118
  %129 = load i32, i32* %21, align 4
  %130 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %131 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = mul i32 %129, %132
  store i32 %133, i32* %24, align 4
  %134 = load i32, i32* %24, align 4
  %135 = load i32, i32* %22, align 4
  %136 = mul i32 %134, %135
  store i32 %136, i32* %25, align 4
  %137 = load i32, i32* %23, align 4
  %138 = load i32, i32* %25, align 4
  %139 = call i8* @heap_calloc(i32 %137, i32 %138)
  store i8* %139, i8** %30, align 8
  %140 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %141 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %140, i32 0, i32 3
  %142 = load i32 (i8*, i8*, i32, i32, i32, i32, i32, i32, i32)*, i32 (i8*, i8*, i32, i32, i32, i32, i32, i32, i32)** %141, align 8
  %143 = load %struct.wined3d_const_bo_address*, %struct.wined3d_const_bo_address** %12, align 8
  %144 = getelementptr inbounds %struct.wined3d_const_bo_address, %struct.wined3d_const_bo_address* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i8*, i8** %30, align 8
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %24, align 4
  %150 = load i32, i32* %25, align 4
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* %22, align 4
  %153 = load i32, i32* %23, align 4
  %154 = call i32 %142(i8* %145, i8* %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load i8*, i8** %30, align 8
  store i8* %155, i8** %29, align 8
  br label %172

156:                                              ; preds = %106
  %157 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @wined3d_texture_get_pitch(%struct.wined3d_texture* %157, i32 %158, i32* %24, i32* %25)
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %24, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %167, label %163

163:                                              ; preds = %156
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %25, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %163, %156
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %14, align 4
  %170 = call i32 @FIXME(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %167, %163
  br label %172

172:                                              ; preds = %171, %128
  %173 = load %struct.wined3d_const_bo_address*, %struct.wined3d_const_bo_address** %12, align 8
  %174 = getelementptr inbounds %struct.wined3d_const_bo_address, %struct.wined3d_const_bo_address* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %179 = load %struct.wined3d_const_bo_address*, %struct.wined3d_const_bo_address** %12, align 8
  %180 = getelementptr inbounds %struct.wined3d_const_bo_address, %struct.wined3d_const_bo_address* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @glBindBuffer(i32 %178, i64 %181)
  %183 = call i32 @GL_EXTCALL(i32 %182)
  %184 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %185

185:                                              ; preds = %177, %172
  %186 = load i32, i32* @GL_TEXTURE_3D, align 4
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* %18, align 4
  %189 = load i32, i32* %19, align 4
  %190 = load i32, i32* %20, align 4
  %191 = load i32, i32* %21, align 4
  %192 = load i32, i32* %22, align 4
  %193 = load i32, i32* %23, align 4
  %194 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %195 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.wined3d_format*, %struct.wined3d_format** %15, align 8
  %198 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i8*, i8** %29, align 8
  %201 = call i32 @glTexSubImage3D(i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %196, i32 %199, i8* %200)
  %202 = call i32 @GL_EXTCALL(i32 %201)
  %203 = call i32 @checkGLcall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %204 = load %struct.wined3d_const_bo_address*, %struct.wined3d_const_bo_address** %12, align 8
  %205 = getelementptr inbounds %struct.wined3d_const_bo_address, %struct.wined3d_const_bo_address* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %185
  %209 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %210 = call i32 @glBindBuffer(i32 %209, i64 0)
  %211 = call i32 @GL_EXTCALL(i32 %210)
  %212 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %213

213:                                              ; preds = %208, %185
  %214 = load i8*, i8** %30, align 8
  %215 = call i32 @heap_free(i8* %214)
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_texture*, i32, %struct.wined3d_context*, i32, i64, i8*, i32, i32) #1

declare dso_local i32 @debug_box(%struct.wined3d_box*) #1

declare dso_local i32 @wined3d_texture_get_level_width(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_level_height(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_level_depth(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i8* @heap_calloc(i32, i32) #1

declare dso_local i32 @wined3d_texture_get_pitch(%struct.wined3d_texture*, i32, i32*, i32*) #1

declare dso_local i32 @FIXME(i8*, i32, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glBindBuffer(i32, i64) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @glTexSubImage3D(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
