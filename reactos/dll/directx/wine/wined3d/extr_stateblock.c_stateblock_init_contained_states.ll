; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_stateblock.c_stateblock_init_contained_states.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_stateblock.c_stateblock_init_contained_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_stateblock = type { i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i32*, i64, i64, i64, %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32*, i32*, i32, i32, i32, i32, i32*, i32*, i64*, i64* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.wined3d_d3d_info }
%struct.wined3d_d3d_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@WINEHIGHEST_RENDER_STATE = common dso_local global i32 0, align 4
@HIGHEST_TRANSFORMSTATE = common dso_local global i32 0, align 4
@WINED3D_MAX_CONSTS_I = common dso_local global i32 0, align 4
@WINED3D_MAX_CONSTS_B = common dso_local global i32 0, align 4
@MAX_TEXTURES = common dso_local global i32 0, align 4
@MAX_COMBINED_SAMPLERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stateblock_init_contained_states(%struct.wined3d_stateblock* %0) #0 {
  %2 = alloca %struct.wined3d_stateblock*, align 8
  %3 = alloca %struct.wined3d_d3d_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wined3d_stateblock* %0, %struct.wined3d_stateblock** %2, align 8
  %10 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %11 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %10, i32 0, i32 21
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store %struct.wined3d_d3d_info* %15, %struct.wined3d_d3d_info** %3, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %60, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @WINEHIGHEST_RENDER_STATE, align 4
  %19 = lshr i32 %18, 5
  %20 = icmp ule i32 %17, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %16
  %22 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %23 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %22, i32 0, i32 19
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %54, %21
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %54

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 %39, 5
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %44 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %47 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32 %42, i32* %49, align 4
  %50 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %51 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %38, %37
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %5, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %30

59:                                               ; preds = %30
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %4, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %16

63:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %108, %63
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @HIGHEST_TRANSFORMSTATE, align 4
  %67 = lshr i32 %66, 5
  %68 = icmp ule i32 %65, %67
  br i1 %68, label %69, label %111

69:                                               ; preds = %64
  %70 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %71 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %70, i32 0, i32 19
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %102, %69
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  br label %102

86:                                               ; preds = %81
  %87 = load i32, i32* %4, align 4
  %88 = shl i32 %87, 5
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %92 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %95 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %90, i32* %97, align 4
  %98 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %99 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %86, %85
  %103 = load i32, i32* %7, align 4
  %104 = ashr i32 %103, 1
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %5, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %78

107:                                              ; preds = %78
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %4, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %64

111:                                              ; preds = %64
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %143, %111
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %3, align 8
  %115 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ult i32 %113, %117
  br i1 %118, label %119, label %146

119:                                              ; preds = %112
  %120 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %121 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %120, i32 0, i32 19
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 9
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %119
  %130 = load i32, i32* %4, align 4
  %131 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %132 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %135 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  store i32 %130, i32* %137, align 4
  %138 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %139 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %139, align 8
  br label %142

142:                                              ; preds = %129, %119
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %4, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %112

146:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %174, %146
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @WINED3D_MAX_CONSTS_I, align 4
  %150 = icmp ult i32 %148, %149
  br i1 %150, label %151, label %177

151:                                              ; preds = %147
  %152 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %153 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %152, i32 0, i32 19
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %4, align 4
  %157 = shl i32 1, %156
  %158 = and i32 %155, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %151
  %161 = load i32, i32* %4, align 4
  %162 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %163 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %162, i32 0, i32 6
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %166 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %165, i32 0, i32 7
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  store i32 %161, i32* %168, align 4
  %169 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %170 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %169, i32 0, i32 7
  %171 = load i64, i64* %170, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %170, align 8
  br label %173

173:                                              ; preds = %160, %151
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %4, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %4, align 4
  br label %147

177:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %205, %177
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @WINED3D_MAX_CONSTS_B, align 4
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %182, label %208

182:                                              ; preds = %178
  %183 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %184 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %183, i32 0, i32 19
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %4, align 4
  %188 = shl i32 1, %187
  %189 = and i32 %186, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %182
  %192 = load i32, i32* %4, align 4
  %193 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %194 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %193, i32 0, i32 8
  %195 = load i32*, i32** %194, align 8
  %196 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %197 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %196, i32 0, i32 9
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  store i32 %192, i32* %199, align 4
  %200 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %201 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %200, i32 0, i32 9
  %202 = load i64, i64* %201, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %201, align 8
  br label %204

204:                                              ; preds = %191, %182
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %4, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %4, align 4
  br label %178

208:                                              ; preds = %178
  store i32 0, i32* %4, align 4
  br label %209

209:                                              ; preds = %240, %208
  %210 = load i32, i32* %4, align 4
  %211 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %3, align 8
  %212 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp ult i32 %210, %214
  br i1 %215, label %216, label %243

216:                                              ; preds = %209
  %217 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %218 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %217, i32 0, i32 19
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 8
  %220 = load i64*, i64** %219, align 8
  %221 = load i32, i32* %4, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %239

226:                                              ; preds = %216
  %227 = load i32, i32* %4, align 4
  %228 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %229 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %228, i32 0, i32 10
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %232 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %231, i32 0, i32 11
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  store i32 %227, i32* %234, align 4
  %235 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %236 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %235, i32 0, i32 11
  %237 = load i64, i64* %236, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %236, align 8
  br label %239

239:                                              ; preds = %226, %216
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %4, align 4
  %242 = add i32 %241, 1
  store i32 %242, i32* %4, align 4
  br label %209

243:                                              ; preds = %209
  store i32 0, i32* %4, align 4
  br label %244

244:                                              ; preds = %271, %243
  %245 = load i32, i32* %4, align 4
  %246 = load i32, i32* @WINED3D_MAX_CONSTS_I, align 4
  %247 = icmp ult i32 %245, %246
  br i1 %247, label %248, label %274

248:                                              ; preds = %244
  %249 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %250 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %249, i32 0, i32 19
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* %4, align 4
  %254 = shl i32 1, %253
  %255 = and i32 %252, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %270

257:                                              ; preds = %248
  %258 = load i32, i32* %4, align 4
  %259 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %260 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %259, i32 0, i32 12
  %261 = load i32*, i32** %260, align 8
  %262 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %263 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %262, i32 0, i32 13
  %264 = load i64, i64* %263, align 8
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  store i32 %258, i32* %265, align 4
  %266 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %267 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %266, i32 0, i32 13
  %268 = load i64, i64* %267, align 8
  %269 = add i64 %268, 1
  store i64 %269, i64* %267, align 8
  br label %270

270:                                              ; preds = %257, %248
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %4, align 4
  %273 = add i32 %272, 1
  store i32 %273, i32* %4, align 4
  br label %244

274:                                              ; preds = %244
  store i32 0, i32* %4, align 4
  br label %275

275:                                              ; preds = %302, %274
  %276 = load i32, i32* %4, align 4
  %277 = load i32, i32* @WINED3D_MAX_CONSTS_B, align 4
  %278 = icmp ult i32 %276, %277
  br i1 %278, label %279, label %305

279:                                              ; preds = %275
  %280 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %281 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %280, i32 0, i32 19
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %4, align 4
  %285 = shl i32 1, %284
  %286 = and i32 %283, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %301

288:                                              ; preds = %279
  %289 = load i32, i32* %4, align 4
  %290 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %291 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %290, i32 0, i32 14
  %292 = load i32*, i32** %291, align 8
  %293 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %294 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %293, i32 0, i32 15
  %295 = load i64, i64* %294, align 8
  %296 = getelementptr inbounds i32, i32* %292, i64 %295
  store i32 %289, i32* %296, align 4
  %297 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %298 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %297, i32 0, i32 15
  %299 = load i64, i64* %298, align 8
  %300 = add i64 %299, 1
  store i64 %300, i64* %298, align 8
  br label %301

301:                                              ; preds = %288, %279
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %4, align 4
  %304 = add i32 %303, 1
  store i32 %304, i32* %4, align 4
  br label %275

305:                                              ; preds = %275
  store i32 0, i32* %4, align 4
  br label %306

306:                                              ; preds = %356, %305
  %307 = load i32, i32* %4, align 4
  %308 = load i32, i32* @MAX_TEXTURES, align 4
  %309 = icmp ult i32 %307, %308
  br i1 %309, label %310, label %359

310:                                              ; preds = %306
  %311 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %312 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %311, i32 0, i32 19
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 6
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %4, align 4
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  store i32 %318, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %319

319:                                              ; preds = %350, %310
  %320 = load i32, i32* %8, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %355

322:                                              ; preds = %319
  %323 = load i32, i32* %8, align 4
  %324 = and i32 %323, 1
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %327, label %326

326:                                              ; preds = %322
  br label %350

327:                                              ; preds = %322
  %328 = load i32, i32* %4, align 4
  %329 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %330 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %329, i32 0, i32 20
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %330, align 8
  %332 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %333 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %332, i32 0, i32 16
  %334 = load i64, i64* %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 0
  store i32 %328, i32* %336, align 4
  %337 = load i32, i32* %5, align 4
  %338 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %339 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %338, i32 0, i32 20
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %339, align 8
  %341 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %342 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %341, i32 0, i32 16
  %343 = load i64, i64* %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 1
  store i32 %337, i32* %345, align 4
  %346 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %347 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %346, i32 0, i32 16
  %348 = load i64, i64* %347, align 8
  %349 = add i64 %348, 1
  store i64 %349, i64* %347, align 8
  br label %350

350:                                              ; preds = %327, %326
  %351 = load i32, i32* %8, align 4
  %352 = ashr i32 %351, 1
  store i32 %352, i32* %8, align 4
  %353 = load i32, i32* %5, align 4
  %354 = add i32 %353, 1
  store i32 %354, i32* %5, align 4
  br label %319

355:                                              ; preds = %319
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* %4, align 4
  %358 = add i32 %357, 1
  store i32 %358, i32* %4, align 4
  br label %306

359:                                              ; preds = %306
  store i32 0, i32* %4, align 4
  br label %360

360:                                              ; preds = %410, %359
  %361 = load i32, i32* %4, align 4
  %362 = load i32, i32* @MAX_COMBINED_SAMPLERS, align 4
  %363 = icmp ult i32 %361, %362
  br i1 %363, label %364, label %413

364:                                              ; preds = %360
  %365 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %366 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %365, i32 0, i32 19
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 7
  %368 = load i32*, i32** %367, align 8
  %369 = load i32, i32* %4, align 4
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  %372 = load i32, i32* %371, align 4
  store i32 %372, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %373

373:                                              ; preds = %404, %364
  %374 = load i32, i32* %9, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %409

376:                                              ; preds = %373
  %377 = load i32, i32* %9, align 4
  %378 = and i32 %377, 1
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %381, label %380

380:                                              ; preds = %376
  br label %404

381:                                              ; preds = %376
  %382 = load i32, i32* %4, align 4
  %383 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %384 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %383, i32 0, i32 18
  %385 = load %struct.TYPE_12__*, %struct.TYPE_12__** %384, align 8
  %386 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %387 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %386, i32 0, i32 17
  %388 = load i64, i64* %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %385, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 0
  store i32 %382, i32* %390, align 4
  %391 = load i32, i32* %5, align 4
  %392 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %393 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %392, i32 0, i32 18
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** %393, align 8
  %395 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %396 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %395, i32 0, i32 17
  %397 = load i64, i64* %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %394, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 1
  store i32 %391, i32* %399, align 4
  %400 = load %struct.wined3d_stateblock*, %struct.wined3d_stateblock** %2, align 8
  %401 = getelementptr inbounds %struct.wined3d_stateblock, %struct.wined3d_stateblock* %400, i32 0, i32 17
  %402 = load i64, i64* %401, align 8
  %403 = add i64 %402, 1
  store i64 %403, i64* %401, align 8
  br label %404

404:                                              ; preds = %381, %380
  %405 = load i32, i32* %9, align 4
  %406 = ashr i32 %405, 1
  store i32 %406, i32* %9, align 4
  %407 = load i32, i32* %5, align 4
  %408 = add i32 %407, 1
  store i32 %408, i32* %5, align 4
  br label %373

409:                                              ; preds = %373
  br label %410

410:                                              ; preds = %409
  %411 = load i32, i32* %4, align 4
  %412 = add i32 %411, 1
  store i32 %412, i32* %4, align 4
  br label %360

413:                                              ; preds = %360
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
