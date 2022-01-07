; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_opclasscmds.c_assignProcTypes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_opclasscmds.c_assignProcTypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64* }

@PROCOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1
@BTREE_AM_OID = common dso_local global i64 0, align 8
@BTORDER_PROC = common dso_local global i64 0, align 8
@ERRCODE_INVALID_OBJECT_DEFINITION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"btree comparison functions must have two arguments\00", align 1
@INT4OID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"btree comparison functions must return integer\00", align 1
@BTSORTSUPPORT_PROC = common dso_local global i64 0, align 8
@INTERNALOID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"btree sort support functions must accept type \22internal\22\00", align 1
@VOIDOID = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"btree sort support functions must return void\00", align 1
@BTINRANGE_PROC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"btree in_range functions must have five arguments\00", align 1
@BOOLOID = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"btree in_range functions must return boolean\00", align 1
@HASH_AM_OID = common dso_local global i64 0, align 8
@HASHSTANDARD_PROC = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [39 x i8] c"hash function 1 must have one argument\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"hash function 1 must return integer\00", align 1
@HASHEXTENDED_PROC = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [40 x i8] c"hash function 2 must have two arguments\00", align 1
@INT8OID = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [35 x i8] c"hash function 2 must return bigint\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"associated data types must be specified for index support function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i64)* @assignProcTypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assignProcTypes(%struct.TYPE_6__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @PROCOID, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ObjectIdGetDatum(i32 %12)
  %14 = call i32 @SearchSysCache1(i32 %9, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @HeapTupleIsValid(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ERROR, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @elog(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %3
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @GETSTRUCT(i32 %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %8, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @BTREE_AM_OID, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %193

31:                                               ; preds = %24
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BTORDER_PROC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %91

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 2
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = call i32 @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 @ereport(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @INT4OID, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load i32, i32* @ERROR, align 4
  %56 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %57 = call i32 @errcode(i32 %56)
  %58 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %59 = call i32 @ereport(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @OidIsValid(i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %60
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %66, %60
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @OidIsValid(i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %75
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %81, %75
  br label %192

91:                                               ; preds = %31
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @BTSORTSUPPORT_PROC, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %130

97:                                               ; preds = %91
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %111, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @INTERNALOID, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %102, %97
  %112 = load i32, i32* @ERROR, align 4
  %113 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %114 = call i32 @errcode(i32 %113)
  %115 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %116 = call i32 @ereport(i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %111, %102
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @VOIDOID, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load i32, i32* @ERROR, align 4
  %125 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %126 = call i32 @errcode(i32 %125)
  %127 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %128 = call i32 @ereport(i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %123, %117
  br label %191

130:                                              ; preds = %91
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @BTINRANGE_PROC, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %190

136:                                              ; preds = %130
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 5
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load i32, i32* @ERROR, align 4
  %143 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %144 = call i32 @errcode(i32 %143)
  %145 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %146 = call i32 @ereport(i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %141, %136
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @BOOLOID, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %147
  %154 = load i32, i32* @ERROR, align 4
  %155 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %156 = call i32 @errcode(i32 %155)
  %157 = call i32 @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %158 = call i32 @ereport(i32 %154, i32 %157)
  br label %159

159:                                              ; preds = %153, %147
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @OidIsValid(i64 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %159
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  store i64 %171, i64* %173, align 8
  br label %174

174:                                              ; preds = %165, %159
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @OidIsValid(i64 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %189, label %180

180:                                              ; preds = %174
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i64*, i64** %183, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 2
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 2
  store i64 %186, i64* %188, align 8
  br label %189

189:                                              ; preds = %180, %174
  br label %190

190:                                              ; preds = %189, %130
  br label %191

191:                                              ; preds = %190, %129
  br label %192

192:                                              ; preds = %191, %90
  br label %290

193:                                              ; preds = %24
  %194 = load i64, i64* %5, align 8
  %195 = load i64, i64* @HASH_AM_OID, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %289

197:                                              ; preds = %193
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @HASHSTANDARD_PROC, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %227

203:                                              ; preds = %197
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 1
  br i1 %207, label %208, label %214

208:                                              ; preds = %203
  %209 = load i32, i32* @ERROR, align 4
  %210 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %211 = call i32 @errcode(i32 %210)
  %212 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %213 = call i32 @ereport(i32 %209, i32 %212)
  br label %214

214:                                              ; preds = %208, %203
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @INT4OID, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %214
  %221 = load i32, i32* @ERROR, align 4
  %222 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %223 = call i32 @errcode(i32 %222)
  %224 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %225 = call i32 @ereport(i32 %221, i32 %224)
  br label %226

226:                                              ; preds = %220, %214
  br label %258

227:                                              ; preds = %197
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @HASHEXTENDED_PROC, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %257

233:                                              ; preds = %227
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 2
  br i1 %237, label %238, label %244

238:                                              ; preds = %233
  %239 = load i32, i32* @ERROR, align 4
  %240 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %241 = call i32 @errcode(i32 %240)
  %242 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %243 = call i32 @ereport(i32 %239, i32 %242)
  br label %244

244:                                              ; preds = %238, %233
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @INT8OID, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %256

250:                                              ; preds = %244
  %251 = load i32, i32* @ERROR, align 4
  %252 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %253 = call i32 @errcode(i32 %252)
  %254 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %255 = call i32 @ereport(i32 %251, i32 %254)
  br label %256

256:                                              ; preds = %250, %244
  br label %257

257:                                              ; preds = %256, %227
  br label %258

258:                                              ; preds = %257, %226
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @OidIsValid(i64 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %273, label %264

264:                                              ; preds = %258
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  %268 = load i64*, i64** %267, align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 0
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 1
  store i64 %270, i64* %272, align 8
  br label %273

273:                                              ; preds = %264, %258
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @OidIsValid(i64 %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %288, label %279

279:                                              ; preds = %273
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 0
  %283 = load i64*, i64** %282, align 8
  %284 = getelementptr inbounds i64, i64* %283, i64 0
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 2
  store i64 %285, i64* %287, align 8
  br label %288

288:                                              ; preds = %279, %273
  br label %289

289:                                              ; preds = %288, %193
  br label %290

290:                                              ; preds = %289, %192
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = call i32 @OidIsValid(i64 %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %300, label %296

296:                                              ; preds = %290
  %297 = load i64, i64* %6, align 8
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 1
  store i64 %297, i64* %299, align 8
  br label %300

300:                                              ; preds = %296, %290
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = call i32 @OidIsValid(i64 %303)
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %310, label %306

306:                                              ; preds = %300
  %307 = load i64, i64* %6, align 8
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 2
  store i64 %307, i64* %309, align 8
  br label %310

310:                                              ; preds = %306, %300
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = call i32 @OidIsValid(i64 %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %310
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = call i32 @OidIsValid(i64 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %328, label %322

322:                                              ; preds = %316, %310
  %323 = load i32, i32* @ERROR, align 4
  %324 = load i32, i32* @ERRCODE_INVALID_OBJECT_DEFINITION, align 4
  %325 = call i32 @errcode(i32 %324)
  %326 = call i32 @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i64 0, i64 0))
  %327 = call i32 @ereport(i32 %323, i32 %326)
  br label %328

328:                                              ; preds = %322, %316
  %329 = load i32, i32* %7, align 4
  %330 = call i32 @ReleaseSysCache(i32 %329)
  ret void
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
