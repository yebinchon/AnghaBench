; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_exec_source.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_exec_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_38__*, i32, i32*, i32 }
%struct.TYPE_38__ = type { i32, i32, %struct.TYPE_38__*, i8*, i8*, i32*, i32, i32, i32, i32, i32, i8*, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32, i32, i32, %struct.TYPE_32__*, %struct.TYPE_33__* }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_36__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i64 }

@EXEC_GLOBAL = common dso_local global i32 0, align 4
@EXEC_EVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"[%d] %s %d\0A\00", align 1
@fdexNameEnsure = common dso_local global i32 0, align 4
@JSCLASS_GLOBAL = common dso_local global i64 0, align 8
@JSCLASS_NONE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@EXEC_RETURN_TO_INTERP = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_source(%struct.TYPE_35__* %0, i32 %1, i32* %2, %struct.TYPE_37__* %3, i32* %4, i32* %5, %struct.TYPE_36__* %6, %struct.TYPE_36__* %7, i32 %8, i8** %9, i8** %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_35__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_37__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_36__*, align 8
  %20 = alloca %struct.TYPE_36__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8**, align 8
  %23 = alloca i8**, align 8
  %24 = alloca %struct.TYPE_38__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_36__*, align 8
  %28 = alloca %struct.TYPE_36__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_36__*, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store %struct.TYPE_37__* %3, %struct.TYPE_37__** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store %struct.TYPE_36__* %6, %struct.TYPE_36__** %19, align 8
  store %struct.TYPE_36__* %7, %struct.TYPE_36__** %20, align 8
  store i32 %8, i32* %21, align 4
  store i8** %9, i8*** %22, align 8
  store i8** %10, i8*** %23, align 8
  store i32 0, i32* %25, align 4
  br label %31

31:                                               ; preds = %82, %11
  %32 = load i32, i32* %25, align 4
  %33 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %85

37:                                               ; preds = %31
  %38 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %39, align 8
  %41 = load i32, i32* %25, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  br label %82

48:                                               ; preds = %37
  %49 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_33__*, %struct.TYPE_33__** %52, align 8
  %54 = load i32, i32* %25, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %53, i64 %55
  %57 = load i32*, i32** %17, align 8
  %58 = call i32 @create_source_function(%struct.TYPE_35__* %49, i32* %50, %struct.TYPE_33__* %56, i32* %57, %struct.TYPE_36__** %27)
  store i32 %58, i32* %26, align 4
  %59 = load i32, i32* %26, align 4
  %60 = call i64 @FAILED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = load i32, i32* %26, align 4
  store i32 %63, i32* %12, align 4
  br label %396

64:                                               ; preds = %48
  %65 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %66 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %67, align 8
  %69 = load i32, i32* %25, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i64 %70
  %72 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %73 = call i32 @bind_event_target(%struct.TYPE_35__* %65, %struct.TYPE_33__* %71, %struct.TYPE_36__* %72)
  store i32 %73, i32* %26, align 4
  %74 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %75 = call i32 @jsdisp_release(%struct.TYPE_36__* %74)
  %76 = load i32, i32* %26, align 4
  %77 = call i64 @FAILED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %64
  %80 = load i32, i32* %26, align 4
  store i32 %80, i32* %12, align 4
  br label %396

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81, %47
  %83 = load i32, i32* %25, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %25, align 4
  br label %31

85:                                               ; preds = %31
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @EXEC_GLOBAL, align 4
  %88 = load i32, i32* @EXEC_EVAL, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %207

92:                                               ; preds = %85
  store i32 0, i32* %25, align 4
  br label %93

93:                                               ; preds = %203, %92
  %94 = load i32, i32* %25, align 4
  %95 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ult i32 %94, %97
  br i1 %98, label %99, label %206

99:                                               ; preds = %93
  %100 = load i32, i32* %25, align 4
  %101 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %102, align 8
  %104 = load i32, i32* %25, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @debugstr_w(i32 %108)
  %110 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %111, align 8
  %113 = load i32, i32* %25, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %109, i32 %117)
  %119 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_32__*, %struct.TYPE_32__** %120, align 8
  %122 = load i32, i32* %25, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, -1
  br i1 %127, label %128, label %166

128:                                              ; preds = %99
  %129 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %130 = load i32*, i32** %15, align 8
  %131 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_33__*, %struct.TYPE_33__** %132, align 8
  %134 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %135, align 8
  %137 = load i32, i32* %25, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %133, i64 %142
  %144 = load i32*, i32** %17, align 8
  %145 = call i32 @create_source_function(%struct.TYPE_35__* %129, i32* %130, %struct.TYPE_33__* %143, i32* %144, %struct.TYPE_36__** %28)
  store i32 %145, i32* %26, align 4
  %146 = load i32, i32* %26, align 4
  %147 = call i64 @FAILED(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %128
  %150 = load i32, i32* %26, align 4
  store i32 %150, i32* %12, align 4
  br label %396

151:                                              ; preds = %128
  %152 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %153 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %154, align 8
  %156 = load i32, i32* %25, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_36__*, %struct.TYPE_36__** %28, align 8
  %162 = call i32 @jsval_obj(%struct.TYPE_36__* %161)
  %163 = call i32 @jsdisp_propput_name(%struct.TYPE_36__* %152, i32 %160, i32 %162)
  store i32 %163, i32* %26, align 4
  %164 = load %struct.TYPE_36__*, %struct.TYPE_36__** %28, align 8
  %165 = call i32 @jsdisp_release(%struct.TYPE_36__* %164)
  br label %202

166:                                              ; preds = %99
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* @EXEC_GLOBAL, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %183

171:                                              ; preds = %166
  %172 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %173 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_32__*, %struct.TYPE_32__** %174, align 8
  %176 = load i32, i32* %25, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @lookup_global_members(%struct.TYPE_35__* %172, i32 %180, i32* null)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %201, label %183

183:                                              ; preds = %171, %166
  store i32 0, i32* %29, align 4
  %184 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %185 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_32__*, %struct.TYPE_32__** %186, align 8
  %188 = load i32, i32* %25, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @fdexNameEnsure, align 4
  %194 = call i32 @jsdisp_get_id(%struct.TYPE_36__* %184, i32 %192, i32 %193, i32* %29)
  store i32 %194, i32* %26, align 4
  %195 = load i32, i32* %26, align 4
  %196 = call i64 @FAILED(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %183
  %199 = load i32, i32* %26, align 4
  store i32 %199, i32* %12, align 4
  br label %396

200:                                              ; preds = %183
  br label %201

201:                                              ; preds = %200, %171
  br label %202

202:                                              ; preds = %201, %151
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %25, align 4
  %205 = add i32 %204, 1
  store i32 %205, i32* %25, align 4
  br label %93

206:                                              ; preds = %93
  br label %207

207:                                              ; preds = %206, %85
  %208 = load i32*, i32** %18, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %236

210:                                              ; preds = %207
  %211 = load i32*, i32** %18, align 8
  %212 = call %struct.TYPE_36__* @iface_to_jsdisp(i32* %211)
  store %struct.TYPE_36__* %212, %struct.TYPE_36__** %30, align 8
  %213 = load %struct.TYPE_36__*, %struct.TYPE_36__** %30, align 8
  %214 = icmp ne %struct.TYPE_36__* %213, null
  br i1 %214, label %215, label %235

215:                                              ; preds = %210
  %216 = load %struct.TYPE_36__*, %struct.TYPE_36__** %30, align 8
  %217 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_34__*, %struct.TYPE_34__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @JSCLASS_GLOBAL, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %231, label %223

223:                                              ; preds = %215
  %224 = load %struct.TYPE_36__*, %struct.TYPE_36__** %30, align 8
  %225 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_34__*, %struct.TYPE_34__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @JSCLASS_NONE, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %223, %215
  store i32* null, i32** %18, align 8
  br label %232

232:                                              ; preds = %231, %223
  %233 = load %struct.TYPE_36__*, %struct.TYPE_36__** %30, align 8
  %234 = call i32 @jsdisp_release(%struct.TYPE_36__* %233)
  br label %235

235:                                              ; preds = %232, %210
  br label %236

236:                                              ; preds = %235, %207
  %237 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_38__*, %struct.TYPE_38__** %238, align 8
  %240 = icmp ne %struct.TYPE_38__* %239, null
  br i1 %240, label %241, label %259

241:                                              ; preds = %236
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* @EXEC_EVAL, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %259

246:                                              ; preds = %241
  %247 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %248 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_38__*, %struct.TYPE_38__** %249, align 8
  %251 = load i32, i32* @FALSE, align 4
  %252 = call i32 @detach_variable_object(%struct.TYPE_35__* %247, %struct.TYPE_38__* %250, i32 %251)
  store i32 %252, i32* %26, align 4
  %253 = load i32, i32* %26, align 4
  %254 = call i64 @FAILED(i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %246
  %257 = load i32, i32* %26, align 4
  store i32 %257, i32* %12, align 4
  br label %396

258:                                              ; preds = %246
  br label %259

259:                                              ; preds = %258, %241, %236
  %260 = call %struct.TYPE_38__* @heap_alloc_zero(i32 80)
  store %struct.TYPE_38__* %260, %struct.TYPE_38__** %24, align 8
  %261 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %262 = icmp ne %struct.TYPE_38__* %261, null
  br i1 %262, label %265, label %263

263:                                              ; preds = %259
  %264 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %264, i32* %12, align 4
  br label %396

265:                                              ; preds = %259
  %266 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %267 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %268 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %267, i32 0, i32 12
  store %struct.TYPE_37__* %266, %struct.TYPE_37__** %268, align 8
  %269 = call i8* (...) @jsval_undefined()
  %270 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %271 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %270, i32 0, i32 11
  store i8* %269, i8** %271, align 8
  %272 = load i32, i32* %21, align 4
  %273 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %274 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %273, i32 0, i32 0
  store i32 %272, i32* %274, align 8
  %275 = load i32*, i32** %15, align 8
  %276 = call i32 @bytecode_addref(i32* %275)
  %277 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %278 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %277, i32 0, i32 10
  store i32 %276, i32* %278, align 8
  %279 = load i32, i32* %14, align 4
  %280 = load i32, i32* @EXEC_GLOBAL, align 4
  %281 = load i32, i32* @EXEC_EVAL, align 4
  %282 = or i32 %280, %281
  %283 = and i32 %279, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %305, label %285

285:                                              ; preds = %265
  %286 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %287 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %288 = load i32*, i32** %17, align 8
  %289 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %290 = load i32, i32* %21, align 4
  %291 = load i8**, i8*** %22, align 8
  %292 = call i32 @setup_scope(%struct.TYPE_35__* %286, %struct.TYPE_38__* %287, i32* %288, %struct.TYPE_36__* %289, i32 %290, i8** %291)
  store i32 %292, i32* %26, align 4
  %293 = load i32, i32* %26, align 4
  %294 = call i64 @FAILED(i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %304

296:                                              ; preds = %285
  %297 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %298 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %297, i32 0, i32 10
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @release_bytecode(i32 %299)
  %301 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %302 = call i32 @heap_free(%struct.TYPE_38__* %301)
  %303 = load i32, i32* %26, align 4
  store i32 %303, i32* %12, align 4
  br label %396

304:                                              ; preds = %285
  br label %316

305:                                              ; preds = %265
  %306 = load i32*, i32** %17, align 8
  %307 = icmp ne i32* %306, null
  br i1 %307, label %308, label %315

308:                                              ; preds = %305
  %309 = load i32*, i32** %17, align 8
  %310 = call i32 @scope_addref(i32* %309)
  %311 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %312 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %311, i32 0, i32 8
  store i32 %310, i32* %312, align 8
  %313 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %314 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %313, i32 0, i32 9
  store i32 %310, i32* %314, align 4
  br label %315

315:                                              ; preds = %308, %305
  br label %316

316:                                              ; preds = %315, %304
  %317 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %318 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %321 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %320, i32 0, i32 7
  store i32 %319, i32* %321, align 4
  %322 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %323 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %326 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %325, i32 0, i32 6
  store i32 %324, i32* %326, align 8
  %327 = load i32*, i32** %18, align 8
  %328 = icmp ne i32* %327, null
  br i1 %328, label %329, label %333

329:                                              ; preds = %316
  %330 = load i32*, i32** %18, align 8
  %331 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %332 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %331, i32 0, i32 5
  store i32* %330, i32** %332, align 8
  br label %352

333:                                              ; preds = %316
  %334 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %335 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %334, i32 0, i32 2
  %336 = load i32*, i32** %335, align 8
  %337 = icmp ne i32* %336, null
  br i1 %337, label %338, label %344

338:                                              ; preds = %333
  %339 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %340 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %339, i32 0, i32 2
  %341 = load i32*, i32** %340, align 8
  %342 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %343 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %342, i32 0, i32 5
  store i32* %341, i32** %343, align 8
  br label %351

344:                                              ; preds = %333
  %345 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %346 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = call i32* @to_disp(i32 %347)
  %349 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %350 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %349, i32 0, i32 5
  store i32* %348, i32** %350, align 8
  br label %351

351:                                              ; preds = %344, %338
  br label %352

352:                                              ; preds = %351, %329
  %353 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %354 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %353, i32 0, i32 5
  %355 = load i32*, i32** %354, align 8
  %356 = call i32 @IDispatch_AddRef(i32* %355)
  %357 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %358 = icmp ne %struct.TYPE_36__* %357, null
  br i1 %358, label %359, label %364

359:                                              ; preds = %352
  %360 = load %struct.TYPE_36__*, %struct.TYPE_36__** %19, align 8
  %361 = call i8* @jsdisp_addref(%struct.TYPE_36__* %360)
  %362 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %363 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %362, i32 0, i32 4
  store i8* %361, i8** %363, align 8
  br label %364

364:                                              ; preds = %359, %352
  %365 = load i32, i32* %14, align 4
  %366 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %367 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %366, i32 0, i32 1
  store i32 %365, i32* %367, align 4
  %368 = load %struct.TYPE_36__*, %struct.TYPE_36__** %20, align 8
  %369 = call i8* @jsdisp_addref(%struct.TYPE_36__* %368)
  %370 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %371 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %370, i32 0, i32 3
  store i8* %369, i8** %371, align 8
  %372 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %373 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %372, i32 0, i32 0
  %374 = load %struct.TYPE_38__*, %struct.TYPE_38__** %373, align 8
  %375 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %376 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %375, i32 0, i32 2
  store %struct.TYPE_38__* %374, %struct.TYPE_38__** %376, align 8
  %377 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  %378 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %379 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %378, i32 0, i32 0
  store %struct.TYPE_38__* %377, %struct.TYPE_38__** %379, align 8
  %380 = load i32, i32* %14, align 4
  %381 = load i32, i32* @EXEC_RETURN_TO_INTERP, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %392

384:                                              ; preds = %364
  %385 = load i8**, i8*** %23, align 8
  %386 = icmp ne i8** %385, null
  br i1 %386, label %387, label %390

387:                                              ; preds = %384
  %388 = call i8* (...) @jsval_undefined()
  %389 = load i8**, i8*** %23, align 8
  store i8* %388, i8** %389, align 8
  br label %390

390:                                              ; preds = %387, %384
  %391 = load i32, i32* @S_OK, align 4
  store i32 %391, i32* %12, align 4
  br label %396

392:                                              ; preds = %364
  %393 = load %struct.TYPE_35__*, %struct.TYPE_35__** %13, align 8
  %394 = load i8**, i8*** %23, align 8
  %395 = call i32 @enter_bytecode(%struct.TYPE_35__* %393, i8** %394)
  store i32 %395, i32* %12, align 4
  br label %396

396:                                              ; preds = %392, %390, %296, %263, %256, %198, %149, %79, %62
  %397 = load i32, i32* %12, align 4
  ret i32 %397
}

declare dso_local i32 @create_source_function(%struct.TYPE_35__*, i32*, %struct.TYPE_33__*, i32*, %struct.TYPE_36__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @bind_event_target(%struct.TYPE_35__*, %struct.TYPE_33__*, %struct.TYPE_36__*) #1

declare dso_local i32 @jsdisp_release(%struct.TYPE_36__*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @jsdisp_propput_name(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @jsval_obj(%struct.TYPE_36__*) #1

declare dso_local i32 @lookup_global_members(%struct.TYPE_35__*, i32, i32*) #1

declare dso_local i32 @jsdisp_get_id(%struct.TYPE_36__*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_36__* @iface_to_jsdisp(i32*) #1

declare dso_local i32 @detach_variable_object(%struct.TYPE_35__*, %struct.TYPE_38__*, i32) #1

declare dso_local %struct.TYPE_38__* @heap_alloc_zero(i32) #1

declare dso_local i8* @jsval_undefined(...) #1

declare dso_local i32 @bytecode_addref(i32*) #1

declare dso_local i32 @setup_scope(%struct.TYPE_35__*, %struct.TYPE_38__*, i32*, %struct.TYPE_36__*, i32, i8**) #1

declare dso_local i32 @release_bytecode(i32) #1

declare dso_local i32 @heap_free(%struct.TYPE_38__*) #1

declare dso_local i32 @scope_addref(i32*) #1

declare dso_local i32* @to_disp(i32) #1

declare dso_local i32 @IDispatch_AddRef(i32*) #1

declare dso_local i8* @jsdisp_addref(%struct.TYPE_36__*) #1

declare dso_local i32 @enter_bytecode(%struct.TYPE_35__*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
