; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_bind_dummy_textures.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_bind_dummy_textures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { i32 }
%struct.wined3d_context = type { %struct.wined3d_gl_info*, %struct.TYPE_5__* }
%struct.wined3d_gl_info = type { %struct.TYPE_8__, i64*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (i32, i32)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.wined3d_dummy_textures }
%struct.wined3d_dummy_textures = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GL_TEXTURE0 = common dso_local global i64 0, align 8
@GL_TEXTURE_1D = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@ARB_TEXTURE_RECTANGLE = common dso_local global i64 0, align 8
@GL_TEXTURE_RECTANGLE_ARB = common dso_local global i32 0, align 4
@EXT_TEXTURE3D = common dso_local global i64 0, align 8
@GL_TEXTURE_3D = common dso_local global i32 0, align 4
@ARB_TEXTURE_CUBE_MAP = common dso_local global i64 0, align 8
@GL_TEXTURE_CUBE_MAP = common dso_local global i32 0, align 4
@ARB_TEXTURE_CUBE_MAP_ARRAY = common dso_local global i64 0, align 8
@GL_TEXTURE_CUBE_MAP_ARRAY = common dso_local global i32 0, align 4
@EXT_TEXTURE_ARRAY = common dso_local global i64 0, align 8
@GL_TEXTURE_1D_ARRAY = common dso_local global i32 0, align 4
@GL_TEXTURE_2D_ARRAY = common dso_local global i32 0, align 4
@ARB_TEXTURE_BUFFER_OBJECT = common dso_local global i64 0, align 8
@GL_TEXTURE_BUFFER = common dso_local global i32 0, align 4
@ARB_TEXTURE_MULTISAMPLE = common dso_local global i64 0, align 8
@GL_TEXTURE_2D_MULTISAMPLE = common dso_local global i32 0, align 4
@GL_TEXTURE_2D_MULTISAMPLE_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"bind dummy textures\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_bind_dummy_textures(%struct.wined3d_device* %0, %struct.wined3d_context* %1) #0 {
  %3 = alloca %struct.wined3d_device*, align 8
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_dummy_textures*, align 8
  %6 = alloca %struct.wined3d_gl_info*, align 8
  %7 = alloca i32, align 4
  store %struct.wined3d_device* %0, %struct.wined3d_device** %3, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %4, align 8
  %8 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %9 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.wined3d_dummy_textures* %11, %struct.wined3d_dummy_textures** %5, align 8
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %13 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %12, i32 0, i32 0
  %14 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  store %struct.wined3d_gl_info* %14, %struct.wined3d_gl_info** %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %202, %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %18 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %16, %20
  br i1 %21, label %22, label %205

22:                                               ; preds = %15
  %23 = load i64, i64* @GL_TEXTURE0, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @glActiveTexture(i64 %26)
  %28 = call i32 @GL_EXTCALL(i32 %27)
  %29 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %30 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32 (i32, i32)*, i32 (i32, i32)** %32, align 8
  %34 = load i32, i32* @GL_TEXTURE_1D, align 4
  %35 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %5, align 8
  %36 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %33(i32 %34, i32 %37)
  %39 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %40 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32 (i32, i32)*, i32 (i32, i32)** %42, align 8
  %44 = load i32, i32* @GL_TEXTURE_2D, align 4
  %45 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %5, align 8
  %46 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = call i32 %43(i32 %44, i32 %47)
  %49 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %50 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @ARB_TEXTURE_RECTANGLE, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %22
  %57 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %58 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32 (i32, i32)*, i32 (i32, i32)** %60, align 8
  %62 = load i32, i32* @GL_TEXTURE_RECTANGLE_ARB, align 4
  %63 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %5, align 8
  %64 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 %61(i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %56, %22
  %68 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %69 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @EXT_TEXTURE3D, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %67
  %76 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %77 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32 (i32, i32)*, i32 (i32, i32)** %79, align 8
  %81 = load i32, i32* @GL_TEXTURE_3D, align 4
  %82 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %5, align 8
  %83 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = call i32 %80(i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %75, %67
  %87 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %88 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* @ARB_TEXTURE_CUBE_MAP, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %86
  %95 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %96 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32 (i32, i32)*, i32 (i32, i32)** %98, align 8
  %100 = load i32, i32* @GL_TEXTURE_CUBE_MAP, align 4
  %101 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %5, align 8
  %102 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = call i32 %99(i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %94, %86
  %106 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %107 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* @ARB_TEXTURE_CUBE_MAP_ARRAY, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %105
  %114 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %115 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32 (i32, i32)*, i32 (i32, i32)** %117, align 8
  %119 = load i32, i32* @GL_TEXTURE_CUBE_MAP_ARRAY, align 4
  %120 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %5, align 8
  %121 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = call i32 %118(i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %113, %105
  %125 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %126 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = load i64, i64* @EXT_TEXTURE_ARRAY, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %153

132:                                              ; preds = %124
  %133 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %134 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32 (i32, i32)*, i32 (i32, i32)** %136, align 8
  %138 = load i32, i32* @GL_TEXTURE_1D_ARRAY, align 4
  %139 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %5, align 8
  %140 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = call i32 %137(i32 %138, i32 %141)
  %143 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %144 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32 (i32, i32)*, i32 (i32, i32)** %146, align 8
  %148 = load i32, i32* @GL_TEXTURE_2D_ARRAY, align 4
  %149 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %5, align 8
  %150 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i32 %147(i32 %148, i32 %151)
  br label %153

153:                                              ; preds = %132, %124
  %154 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %155 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %154, i32 0, i32 1
  %156 = load i64*, i64** %155, align 8
  %157 = load i64, i64* @ARB_TEXTURE_BUFFER_OBJECT, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %153
  %162 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %163 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32 (i32, i32)*, i32 (i32, i32)** %165, align 8
  %167 = load i32, i32* @GL_TEXTURE_BUFFER, align 4
  %168 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %5, align 8
  %169 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 %166(i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %161, %153
  %173 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %174 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %173, i32 0, i32 1
  %175 = load i64*, i64** %174, align 8
  %176 = load i64, i64* @ARB_TEXTURE_MULTISAMPLE, align 8
  %177 = getelementptr inbounds i64, i64* %175, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %201

180:                                              ; preds = %172
  %181 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %182 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i32 (i32, i32)*, i32 (i32, i32)** %184, align 8
  %186 = load i32, i32* @GL_TEXTURE_2D_MULTISAMPLE, align 4
  %187 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %5, align 8
  %188 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 %185(i32 %186, i32 %189)
  %191 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %192 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i32 (i32, i32)*, i32 (i32, i32)** %194, align 8
  %196 = load i32, i32* @GL_TEXTURE_2D_MULTISAMPLE_ARRAY, align 4
  %197 = load %struct.wined3d_dummy_textures*, %struct.wined3d_dummy_textures** %5, align 8
  %198 = getelementptr inbounds %struct.wined3d_dummy_textures, %struct.wined3d_dummy_textures* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 %195(i32 %196, i32 %199)
  br label %201

201:                                              ; preds = %180, %172
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %7, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %7, align 4
  br label %15

205:                                              ; preds = %15
  %206 = call i32 @checkGLcall(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glActiveTexture(i64) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
