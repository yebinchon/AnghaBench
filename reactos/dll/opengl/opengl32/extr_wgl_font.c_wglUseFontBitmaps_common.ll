; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_wgl_font.c_wglUseFontBitmaps_common.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_wgl_font.c_wglUseFontBitmaps_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 (i32, i32)*, i32 (...)*, i32 (i32, i32, i64, i64, i32, i32, i8*)*, i32 (i32, i32)*, i32 (i32, i32*)* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@GL_UNPACK_ALIGNMENT = common dso_local global i32 0, align 4
@wglUseFontBitmaps_common.identity = internal constant %struct.TYPE_19__ { %struct.TYPE_17__ { i32 0, i32 1 }, %struct.TYPE_16__ zeroinitializer, %struct.TYPE_15__ zeroinitializer, %struct.TYPE_14__ { i32 0, i32 1 } }, align 4
@GGO_BITMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Glyph: %3d / List: %d size %d\0A\00", align 1
@GDI_ERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@wgl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"  - bbox: %d x %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"  - origin: (%d, %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"  - increment: %d - %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"  - bitmap:\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GL_COMPILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @wglUseFontBitmaps_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wglUseFontBitmaps_common(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_20__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %25 = call %struct.TYPE_21__* (...) @IntGetCurrentDispatchTable()
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %11, align 8
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %18, align 4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 4
  %29 = load i32 (i32, i32*)*, i32 (i32, i32*)** %28, align 8
  %30 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %31 = call i32 %29(i32 %30, i32* %17)
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i32 (i32, i32)*, i32 (i32, i32)** %33, align 8
  %35 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %36 = call i32 %34(i32 %35, i32 4)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %290, %5
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %40, %41
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %293

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @GGO_BITMAP, align 4
  %51 = call i32 @GetGlyphOutlineW(i32 %48, i32 %49, i32 %50, %struct.TYPE_20__* %12, i32 0, i8* null, %struct.TYPE_19__* @wglUseFontBitmaps_common.identity)
  store i32 %51, i32* %19, align 4
  br label %57

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @GGO_BITMAP, align 4
  %56 = call i32 @GetGlyphOutlineA(i32 %53, i32 %54, i32 %55, %struct.TYPE_20__* %12, i32 0, i8* null, %struct.TYPE_19__* @wglUseFontBitmaps_common.identity)
  store i32 %56, i32* %19, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %19, align 4
  %61 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* @GDI_ERROR, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %18, align 4
  br label %293

67:                                               ; preds = %57
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ugt i32 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load i32, i32* %19, align 4
  store i32 %72, i32* %14, align 4
  %73 = call i32 (...) @GetProcessHeap()
  %74 = load i8*, i8** %15, align 8
  %75 = call i32 @HeapFree(i32 %73, i32 0, i8* %74)
  %76 = call i32 (...) @GetProcessHeap()
  %77 = load i8*, i8** %16, align 8
  %78 = call i32 @HeapFree(i32 %76, i32 0, i8* %77)
  %79 = call i32 (...) @GetProcessHeap()
  %80 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i8* @HeapAlloc(i32 %79, i32 %80, i32 %81)
  store i8* %82, i8** %15, align 8
  %83 = call i32 (...) @GetProcessHeap()
  %84 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i8* @HeapAlloc(i32 %83, i32 %84, i32 %85)
  store i8* %86, i8** %16, align 8
  br label %87

87:                                               ; preds = %71, %67
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @GGO_BITMAP, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i8*, i8** %15, align 8
  %96 = call i32 @GetGlyphOutlineW(i32 %91, i32 %92, i32 %93, %struct.TYPE_20__* %12, i32 %94, i8* %95, %struct.TYPE_19__* @wglUseFontBitmaps_common.identity)
  %97 = load i32, i32* @GDI_ERROR, align 4
  %98 = icmp ne i32 %96, %97
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %18, align 4
  br label %110

100:                                              ; preds = %87
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @GGO_BITMAP, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i8*, i8** %15, align 8
  %106 = call i32 @GetGlyphOutlineA(i32 %101, i32 %102, i32 %103, %struct.TYPE_20__* %12, i32 %104, i8* %105, %struct.TYPE_19__* @wglUseFontBitmaps_common.identity)
  %107 = load i32, i32* @GDI_ERROR, align 4
  %108 = icmp ne i32 %106, %107
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %18, align 4
  br label %110

110:                                              ; preds = %100, %90
  %111 = load i32, i32* %18, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  br label %293

114:                                              ; preds = %110
  %115 = load i32, i32* @wgl, align 4
  %116 = call i64 @TRACE_ON(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %190

118:                                              ; preds = %114
  %119 = load i8*, i8** %15, align 8
  store i8* %119, i8** %24, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %127, i64 %130)
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %133, i32 %135)
  %137 = load i32, i32* %19, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %189

139:                                              ; preds = %118
  %140 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %20, align 4
  br label %141

141:                                              ; preds = %185, %139
  %142 = load i32, i32* %20, align 4
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ult i32 %142, %144
  br i1 %145, label %146, label %188

146:                                              ; preds = %141
  %147 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %21, align 4
  store i32 128, i32* %23, align 4
  br label %148

148:                                              ; preds = %171, %146
  %149 = load i32, i32* %21, align 4
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ult i32 %149, %151
  br i1 %152, label %153, label %176

153:                                              ; preds = %148
  %154 = load i32, i32* %23, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i8*, i8** %24, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  store i8* %158, i8** %24, align 8
  store i32 128, i32* %23, align 4
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i8*, i8** %24, align 8
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = load i32, i32* %23, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %170

168:                                              ; preds = %159
  %169 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %170

170:                                              ; preds = %168, %166
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %21, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %21, align 4
  %174 = load i32, i32* %23, align 4
  %175 = lshr i32 %174, 1
  store i32 %175, i32* %23, align 4
  br label %148

176:                                              ; preds = %148
  %177 = load i8*, i8** %24, align 8
  %178 = ptrtoint i8* %177 to i32
  %179 = and i32 %178, 3
  %180 = sub nsw i32 4, %179
  %181 = load i8*, i8** %24, align 8
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  store i8* %183, i8** %24, align 8
  %184 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %185

185:                                              ; preds = %176
  %186 = load i32, i32* %20, align 4
  %187 = add i32 %186, 1
  store i32 %187, i32* %20, align 4
  br label %141

188:                                              ; preds = %141
  br label %189

189:                                              ; preds = %188, %118
  br label %190

190:                                              ; preds = %189, %114
  %191 = load i32, i32* %19, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %240

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = add i32 %195, 31
  %197 = udiv i32 %196, 32
  store i32 %197, i32* %22, align 4
  store i32 0, i32* %20, align 4
  br label %198

198:                                              ; preds = %236, %193
  %199 = load i32, i32* %20, align 4
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp ult i32 %199, %201
  br i1 %202, label %203, label %239

203:                                              ; preds = %198
  store i32 0, i32* %21, align 4
  br label %204

204:                                              ; preds = %232, %203
  %205 = load i32, i32* %21, align 4
  %206 = load i32, i32* %22, align 4
  %207 = icmp ult i32 %205, %206
  br i1 %207, label %208, label %235

208:                                              ; preds = %204
  %209 = load i8*, i8** %15, align 8
  %210 = bitcast i8* %209 to i32*
  %211 = load i32, i32* %20, align 4
  %212 = load i32, i32* %22, align 4
  %213 = mul i32 %211, %212
  %214 = load i32, i32* %21, align 4
  %215 = add i32 %213, %214
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %210, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i8*, i8** %16, align 8
  %220 = bitcast i8* %219 to i32*
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %20, align 4
  %224 = sub i32 %222, %223
  %225 = sub i32 %224, 1
  %226 = load i32, i32* %22, align 4
  %227 = mul i32 %225, %226
  %228 = load i32, i32* %21, align 4
  %229 = add i32 %227, %228
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %220, i64 %230
  store i32 %218, i32* %231, align 4
  br label %232

232:                                              ; preds = %208
  %233 = load i32, i32* %21, align 4
  %234 = add i32 %233, 1
  store i32 %234, i32* %21, align 4
  br label %204

235:                                              ; preds = %204
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %20, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %20, align 4
  br label %198

239:                                              ; preds = %198
  br label %240

240:                                              ; preds = %239, %190
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 3
  %243 = load i32 (i32, i32)*, i32 (i32, i32)** %242, align 8
  %244 = load i32, i32* %9, align 4
  %245 = add i32 %244, 1
  store i32 %245, i32* %9, align 4
  %246 = load i32, i32* @GL_COMPILE, align 4
  %247 = call i32 %243(i32 %244, i32 %246)
  %248 = load i32, i32* %19, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %276

250:                                              ; preds = %240
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 2
  %253 = load i32 (i32, i32, i64, i64, i32, i32, i8*)*, i32 (i32, i32, i64, i64, i32, i32, i8*)** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 4
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = sub nsw i32 0, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 4
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = sub nsw i64 %265, %268
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = load i8*, i8** %16, align 8
  %275 = call i32 %253(i32 %255, i32 %257, i64 %262, i64 %269, i32 %271, i32 %273, i8* %274)
  br label %285

276:                                              ; preds = %240
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 2
  %279 = load i32 (i32, i32, i64, i64, i32, i32, i8*)*, i32 (i32, i32, i64, i64, i32, i32, i8*)** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = call i32 %279(i32 0, i32 0, i64 0, i64 0, i32 %281, i32 %283, i8* null)
  br label %285

285:                                              ; preds = %276, %250
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %287 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %286, i32 0, i32 1
  %288 = load i32 (...)*, i32 (...)** %287, align 8
  %289 = call i32 (...) %288()
  br label %290

290:                                              ; preds = %285
  %291 = load i32, i32* %13, align 4
  %292 = add i32 %291, 1
  store i32 %292, i32* %13, align 4
  br label %38

293:                                              ; preds = %113, %65, %38
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 0
  %296 = load i32 (i32, i32)*, i32 (i32, i32)** %295, align 8
  %297 = load i32, i32* @GL_UNPACK_ALIGNMENT, align 4
  %298 = load i32, i32* %17, align 4
  %299 = call i32 %296(i32 %297, i32 %298)
  %300 = call i32 (...) @GetProcessHeap()
  %301 = load i8*, i8** %15, align 8
  %302 = call i32 @HeapFree(i32 %300, i32 0, i8* %301)
  %303 = call i32 (...) @GetProcessHeap()
  %304 = load i8*, i8** %16, align 8
  %305 = call i32 @HeapFree(i32 %303, i32 0, i8* %304)
  %306 = load i32, i32* %18, align 4
  ret i32 %306
}

declare dso_local %struct.TYPE_21__* @IntGetCurrentDispatchTable(...) #1

declare dso_local i32 @GetGlyphOutlineW(i32, i32, i32, %struct.TYPE_20__*, i32, i8*, %struct.TYPE_19__*) #1

declare dso_local i32 @GetGlyphOutlineA(i32, i32, i32, %struct.TYPE_20__*, i32, i8*, %struct.TYPE_19__*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i64 @TRACE_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
