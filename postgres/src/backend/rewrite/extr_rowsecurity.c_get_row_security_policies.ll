; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rowsecurity.c_get_row_security_policies.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/rewrite/extr_rowsecurity.c_get_row_security_policies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32, i64, i32 }

@NIL = common dso_local global i32* null, align 8
@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@RLS_NONE = common dso_local global i32 0, align 4
@RLS_NONE_ENV = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@CMD_SELECT = common dso_local global i64 0, align 8
@ACL_UPDATE = common dso_local global i32 0, align 4
@CMD_UPDATE = common dso_local global i64 0, align 8
@CMD_DELETE = common dso_local global i64 0, align 8
@ACL_SELECT = common dso_local global i32 0, align 4
@CMD_INSERT = common dso_local global i64 0, align 8
@WCO_RLS_INSERT_CHECK = common dso_local global i32 0, align 4
@WCO_RLS_UPDATE_CHECK = common dso_local global i32 0, align 4
@ONCONFLICT_UPDATE = common dso_local global i64 0, align 8
@WCO_RLS_CONFLICT_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_row_security_policies(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32 %2, i32** %3, i32** %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32** %3, i32*** %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %31 = load i32*, i32** @NIL, align 8
  %32 = load i32**, i32*** %11, align 8
  store i32* %31, i32** %32, align 8
  %33 = load i32*, i32** @NIL, align 8
  %34 = load i32**, i32*** %12, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32*, i32** %13, align 8
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** %14, align 8
  store i32 0, i32* %36, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RELKIND_RELATION, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %7
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %323

49:                                               ; preds = %42, %7
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  br label %60

58:                                               ; preds = %49
  %59 = call i64 (...) @GetUserId()
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i64 [ %57, %54 ], [ %59, %58 ]
  store i64 %61, i64* %15, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @check_enable_rls(i32 %64, i64 %67, i32 0)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @RLS_NONE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %323

73:                                               ; preds = %60
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* @RLS_NONE_ENV, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32*, i32** %13, align 8
  store i32 1, i32* %78, align 4
  br label %323

79:                                               ; preds = %73
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @NoLock, align 4
  %84 = call i32 @table_open(i32 %82, i32 %83)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %79
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  br label %96

94:                                               ; preds = %79
  %95 = load i64, i64* @CMD_SELECT, align 8
  br label %96

96:                                               ; preds = %94, %90
  %97 = phi i64 [ %93, %90 ], [ %95, %94 ]
  store i64 %97, i64* %18, align 8
  %98 = load i64, i64* %18, align 8
  %99 = load i64, i64* @CMD_SELECT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %96
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ACL_UPDATE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %101
  %109 = load i32, i32* %17, align 4
  %110 = load i64, i64* @CMD_UPDATE, align 8
  %111 = load i64, i64* %15, align 8
  %112 = call i32 @get_policies_for_relation(i32 %109, i64 %110, i64 %111, i32** %21, i32** %22)
  %113 = load i32, i32* %10, align 4
  %114 = load i32*, i32** %21, align 8
  %115 = load i32*, i32** %22, align 8
  %116 = load i32**, i32*** %11, align 8
  %117 = load i32*, i32** %14, align 8
  %118 = call i32 @add_security_quals(i32 %113, i32* %114, i32* %115, i32** %116, i32* %117)
  br label %119

119:                                              ; preds = %108, %101, %96
  %120 = load i32, i32* %17, align 4
  %121 = load i64, i64* %18, align 8
  %122 = load i64, i64* %15, align 8
  %123 = call i32 @get_policies_for_relation(i32 %120, i64 %121, i64 %122, i32** %19, i32** %20)
  %124 = load i64, i64* %18, align 8
  %125 = load i64, i64* @CMD_SELECT, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %135, label %127

127:                                              ; preds = %119
  %128 = load i64, i64* %18, align 8
  %129 = load i64, i64* @CMD_UPDATE, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load i64, i64* %18, align 8
  %133 = load i64, i64* @CMD_DELETE, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %131, %127, %119
  %136 = load i32, i32* %10, align 4
  %137 = load i32*, i32** %19, align 8
  %138 = load i32*, i32** %20, align 8
  %139 = load i32**, i32*** %11, align 8
  %140 = load i32*, i32** %14, align 8
  %141 = call i32 @add_security_quals(i32 %136, i32* %137, i32* %138, i32** %139, i32* %140)
  br label %142

142:                                              ; preds = %135, %131
  %143 = load i64, i64* %18, align 8
  %144 = load i64, i64* @CMD_UPDATE, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load i64, i64* %18, align 8
  %148 = load i64, i64* @CMD_DELETE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %168

150:                                              ; preds = %146, %142
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @ACL_SELECT, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %150
  %158 = load i32, i32* %17, align 4
  %159 = load i64, i64* @CMD_SELECT, align 8
  %160 = load i64, i64* %15, align 8
  %161 = call i32 @get_policies_for_relation(i32 %158, i64 %159, i64 %160, i32** %23, i32** %24)
  %162 = load i32, i32* %10, align 4
  %163 = load i32*, i32** %23, align 8
  %164 = load i32*, i32** %24, align 8
  %165 = load i32**, i32*** %11, align 8
  %166 = load i32*, i32** %14, align 8
  %167 = call i32 @add_security_quals(i32 %162, i32* %163, i32* %164, i32** %165, i32* %166)
  br label %168

168:                                              ; preds = %157, %150, %146
  %169 = load i64, i64* %18, align 8
  %170 = load i64, i64* @CMD_INSERT, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = load i64, i64* %18, align 8
  %174 = load i64, i64* @CMD_UPDATE, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %306

176:                                              ; preds = %172, %168
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %177, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @Assert(i32 %182)
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load i64, i64* %18, align 8
  %187 = load i64, i64* @CMD_INSERT, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %176
  %190 = load i32, i32* @WCO_RLS_INSERT_CHECK, align 4
  br label %193

191:                                              ; preds = %176
  %192 = load i32, i32* @WCO_RLS_UPDATE_CHECK, align 4
  br label %193

193:                                              ; preds = %191, %189
  %194 = phi i32 [ %190, %189 ], [ %192, %191 ]
  %195 = load i32*, i32** %19, align 8
  %196 = load i32*, i32** %20, align 8
  %197 = load i32**, i32*** %12, align 8
  %198 = load i32*, i32** %14, align 8
  %199 = call i32 @add_with_check_options(i32 %184, i32 %185, i32 %194, i32* %195, i32* %196, i32** %197, i32* %198, i32 0)
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @ACL_SELECT, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %229

206:                                              ; preds = %193
  %207 = load i32*, i32** @NIL, align 8
  store i32* %207, i32** %25, align 8
  %208 = load i32*, i32** @NIL, align 8
  store i32* %208, i32** %26, align 8
  %209 = load i32, i32* %17, align 4
  %210 = load i64, i64* @CMD_SELECT, align 8
  %211 = load i64, i64* %15, align 8
  %212 = call i32 @get_policies_for_relation(i32 %209, i64 %210, i64 %211, i32** %25, i32** %26)
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load i64, i64* %18, align 8
  %216 = load i64, i64* @CMD_INSERT, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %206
  %219 = load i32, i32* @WCO_RLS_INSERT_CHECK, align 4
  br label %222

220:                                              ; preds = %206
  %221 = load i32, i32* @WCO_RLS_UPDATE_CHECK, align 4
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi i32 [ %219, %218 ], [ %221, %220 ]
  %224 = load i32*, i32** %25, align 8
  %225 = load i32*, i32** %26, align 8
  %226 = load i32**, i32*** %12, align 8
  %227 = load i32*, i32** %14, align 8
  %228 = call i32 @add_with_check_options(i32 %213, i32 %214, i32 %223, i32* %224, i32* %225, i32** %226, i32* %227, i32 1)
  br label %229

229:                                              ; preds = %222, %193
  %230 = load i64, i64* %18, align 8
  %231 = load i64, i64* @CMD_INSERT, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %305

233:                                              ; preds = %229
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %235, align 8
  %237 = icmp ne %struct.TYPE_6__* %236, null
  br i1 %237, label %238, label %305

238:                                              ; preds = %233
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @ONCONFLICT_UPDATE, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %305

246:                                              ; preds = %238
  %247 = load i32*, i32** @NIL, align 8
  store i32* %247, i32** %29, align 8
  %248 = load i32*, i32** @NIL, align 8
  store i32* %248, i32** %30, align 8
  %249 = load i32, i32* %17, align 4
  %250 = load i64, i64* @CMD_UPDATE, align 8
  %251 = load i64, i64* %15, align 8
  %252 = call i32 @get_policies_for_relation(i32 %249, i64 %250, i64 %251, i32** %27, i32** %28)
  %253 = load i32, i32* %17, align 4
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* @WCO_RLS_CONFLICT_CHECK, align 4
  %256 = load i32*, i32** %27, align 8
  %257 = load i32*, i32** %28, align 8
  %258 = load i32**, i32*** %12, align 8
  %259 = load i32*, i32** %14, align 8
  %260 = call i32 @add_with_check_options(i32 %253, i32 %254, i32 %255, i32* %256, i32* %257, i32** %258, i32* %259, i32 1)
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @ACL_SELECT, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %280

267:                                              ; preds = %246
  %268 = load i32, i32* %17, align 4
  %269 = load i64, i64* @CMD_SELECT, align 8
  %270 = load i64, i64* %15, align 8
  %271 = call i32 @get_policies_for_relation(i32 %268, i64 %269, i64 %270, i32** %29, i32** %30)
  %272 = load i32, i32* %17, align 4
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* @WCO_RLS_CONFLICT_CHECK, align 4
  %275 = load i32*, i32** %29, align 8
  %276 = load i32*, i32** %30, align 8
  %277 = load i32**, i32*** %12, align 8
  %278 = load i32*, i32** %14, align 8
  %279 = call i32 @add_with_check_options(i32 %272, i32 %273, i32 %274, i32* %275, i32* %276, i32** %277, i32* %278, i32 1)
  br label %280

280:                                              ; preds = %267, %246
  %281 = load i32, i32* %17, align 4
  %282 = load i32, i32* %10, align 4
  %283 = load i32, i32* @WCO_RLS_UPDATE_CHECK, align 4
  %284 = load i32*, i32** %27, align 8
  %285 = load i32*, i32** %28, align 8
  %286 = load i32**, i32*** %12, align 8
  %287 = load i32*, i32** %14, align 8
  %288 = call i32 @add_with_check_options(i32 %281, i32 %282, i32 %283, i32* %284, i32* %285, i32** %286, i32* %287, i32 0)
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @ACL_SELECT, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %280
  %296 = load i32, i32* %17, align 4
  %297 = load i32, i32* %10, align 4
  %298 = load i32, i32* @WCO_RLS_UPDATE_CHECK, align 4
  %299 = load i32*, i32** %29, align 8
  %300 = load i32*, i32** %30, align 8
  %301 = load i32**, i32*** %12, align 8
  %302 = load i32*, i32** %14, align 8
  %303 = call i32 @add_with_check_options(i32 %296, i32 %297, i32 %298, i32* %299, i32* %300, i32** %301, i32* %302, i32 1)
  br label %304

304:                                              ; preds = %295, %280
  br label %305

305:                                              ; preds = %304, %238, %233, %229
  br label %306

306:                                              ; preds = %305, %172
  %307 = load i32, i32* %17, align 4
  %308 = load i32, i32* @NoLock, align 4
  %309 = call i32 @table_close(i32 %307, i32 %308)
  %310 = load i32**, i32*** %11, align 8
  %311 = load i32*, i32** %310, align 8
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  %315 = call i32 @setRuleCheckAsUser(i32* %311, i64 %314)
  %316 = load i32**, i32*** %12, align 8
  %317 = load i32*, i32** %316, align 8
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 2
  %320 = load i64, i64* %319, align 8
  %321 = call i32 @setRuleCheckAsUser(i32* %317, i64 %320)
  %322 = load i32*, i32** %13, align 8
  store i32 1, i32* %322, align 4
  br label %323

323:                                              ; preds = %306, %77, %72, %48
  ret void
}

declare dso_local i64 @GetUserId(...) #1

declare dso_local i32 @check_enable_rls(i32, i64, i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @get_policies_for_relation(i32, i64, i64, i32**, i32**) #1

declare dso_local i32 @add_security_quals(i32, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @add_with_check_options(i32, i32, i32, i32*, i32*, i32**, i32*, i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @setRuleCheckAsUser(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
