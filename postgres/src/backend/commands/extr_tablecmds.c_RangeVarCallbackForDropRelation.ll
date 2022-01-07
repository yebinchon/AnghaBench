; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_RangeVarCallbackForDropRelation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_RangeVarCallbackForDropRelation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.DropRelationCallbackState = type { i8, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i8, i32 }
%struct.TYPE_7__ = type { i32 }

@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i8* null, align 8
@RELOID = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_TABLE = common dso_local global i8 0, align 1
@RELKIND_RELATION = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_INDEX = common dso_local global i8 0, align 1
@RELKIND_INDEX = common dso_local global i8 0, align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@INDEXRELID = common dso_local global i32 0, align 4
@allowSystemTableMods = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"permission denied: \22%s\22 is a system catalog\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i64, i8*)* @RangeVarCallbackForDropRelation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RangeVarCallbackForDropRelation(%struct.TYPE_6__* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.DropRelationCallbackState*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %16, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.DropRelationCallbackState*
  store %struct.DropRelationCallbackState* %21, %struct.DropRelationCallbackState** %10, align 8
  %22 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %23 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 8
  store i8 %24, i8* %11, align 1
  %25 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %26 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  br label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @AccessExclusiveLock, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %15, align 4
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %40 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i64 @OidIsValid(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %46 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @UnlockRelationOid(i64 %47, i32 %48)
  %50 = load i8*, i8** @InvalidOid, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %53 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %44, %38, %33
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %60 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @OidIsValid(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %66 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @AccessExclusiveLock, align 4
  %69 = call i32 @UnlockRelationOid(i64 %67, i32 %68)
  %70 = load i8*, i8** @InvalidOid, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %73 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %64, %58, %54
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @OidIsValid(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  br label %269

79:                                               ; preds = %74
  %80 = load i32, i32* @RELOID, align 4
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @ObjectIdGetDatum(i64 %81)
  %83 = call i32 @SearchSysCache1(i32 %80, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @HeapTupleIsValid(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  br label %269

88:                                               ; preds = %79
  %89 = load i32, i32* %9, align 4
  %90 = call i64 @GETSTRUCT(i32 %89)
  %91 = inttoptr i64 %90 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %14, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %13, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i8, i8* %96, align 4
  %98 = sext i8 %97 to i32
  %99 = load i8, i8* @RELKIND_PARTITIONED_TABLE, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %88
  %103 = load i8, i8* @RELKIND_RELATION, align 1
  store i8 %103, i8* %12, align 1
  br label %119

104:                                              ; preds = %88
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i8, i8* %106, align 4
  %108 = sext i8 %107 to i32
  %109 = load i8, i8* @RELKIND_PARTITIONED_INDEX, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %104
  %113 = load i8, i8* @RELKIND_INDEX, align 1
  store i8 %113, i8* %12, align 1
  br label %118

114:                                              ; preds = %104
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i8, i8* %116, align 4
  store i8 %117, i8* %12, align 1
  br label %118

118:                                              ; preds = %114, %112
  br label %119

119:                                              ; preds = %118, %102
  %120 = load i8, i8* %11, align 1
  %121 = sext i8 %120 to i32
  %122 = load i8, i8* %12, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %121, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %119
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i8, i8* %130, align 4
  %132 = load i8, i8* %11, align 1
  %133 = call i32 @DropErrorMsgWrongType(i32 %128, i8 signext %131, i8 signext %132)
  br label %134

134:                                              ; preds = %125, %119
  %135 = load i64, i64* %6, align 8
  %136 = call i32 (...) @GetUserId()
  %137 = call i32 @pg_class_ownercheck(i64 %135, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %155, label %139

139:                                              ; preds = %134
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (...) @GetUserId()
  %144 = call i32 @pg_namespace_ownercheck(i32 %142, i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %155, label %146

146:                                              ; preds = %139
  %147 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %148 = load i64, i64* %6, align 8
  %149 = call i32 @get_rel_relkind(i64 %148)
  %150 = call i32 @get_relkind_objtype(i32 %149)
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @aclcheck_error(i32 %147, i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %146, %139, %134
  %156 = load i64, i64* %6, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %158 = call i64 @IsSystemClass(i64 %156, %struct.TYPE_8__* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %190

160:                                              ; preds = %155
  %161 = load i8, i8* %11, align 1
  %162 = sext i8 %161 to i32
  %163 = load i8, i8* @RELKIND_INDEX, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %190

166:                                              ; preds = %160
  %167 = load i32, i32* @INDEXRELID, align 4
  %168 = load i64, i64* %6, align 8
  %169 = call i32 @ObjectIdGetDatum(i64 %168)
  %170 = call i32 @SearchSysCache1(i32 %167, i32 %169)
  store i32 %170, i32* %17, align 4
  %171 = load i32, i32* %17, align 4
  %172 = call i32 @HeapTupleIsValid(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %166
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @ReleaseSysCache(i32 %175)
  br label %269

177:                                              ; preds = %166
  %178 = load i32, i32* %17, align 4
  %179 = call i64 @GETSTRUCT(i32 %178)
  %180 = inttoptr i64 %179 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %180, %struct.TYPE_7__** %18, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %19, align 4
  %184 = load i32, i32* %17, align 4
  %185 = call i32 @ReleaseSysCache(i32 %184)
  %186 = load i32, i32* %19, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %177
  store i32 1, i32* %16, align 4
  br label %189

189:                                              ; preds = %188, %177
  br label %190

190:                                              ; preds = %189, %160, %155
  %191 = load i32, i32* %16, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %210, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* @allowSystemTableMods, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %210, label %196

196:                                              ; preds = %193
  %197 = load i64, i64* %6, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %199 = call i64 @IsSystemClass(i64 %197, %struct.TYPE_8__* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %196
  %202 = load i32, i32* @ERROR, align 4
  %203 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %204 = call i32 @errcode(i32 %203)
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %207)
  %209 = call i32 @ereport(i32 %202, i32 %208)
  br label %210

210:                                              ; preds = %201, %196, %193, %190
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @ReleaseSysCache(i32 %211)
  %213 = load i8, i8* %11, align 1
  %214 = sext i8 %213 to i32
  %215 = load i8, i8* @RELKIND_INDEX, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %214, %216
  br i1 %217, label %224, label %218

218:                                              ; preds = %210
  %219 = load i8, i8* %11, align 1
  %220 = sext i8 %219 to i32
  %221 = load i8, i8* @RELKIND_PARTITIONED_INDEX, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %220, %222
  br i1 %223, label %224, label %245

224:                                              ; preds = %218, %210
  %225 = load i64, i64* %6, align 8
  %226 = load i64, i64* %7, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %245

228:                                              ; preds = %224
  %229 = load i64, i64* %6, align 8
  %230 = call i64 @IndexGetRelation(i64 %229, i32 1)
  %231 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %232 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %231, i32 0, i32 1
  store i64 %230, i64* %232, align 8
  %233 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %234 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = call i64 @OidIsValid(i64 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %228
  %239 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %240 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load i32, i32* %15, align 4
  %243 = call i32 @LockRelationOid(i64 %241, i32 %242)
  br label %244

244:                                              ; preds = %238, %228
  br label %245

245:                                              ; preds = %244, %224, %218
  %246 = load i32, i32* %13, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %269

248:                                              ; preds = %245
  %249 = load i64, i64* %6, align 8
  %250 = load i64, i64* %7, align 8
  %251 = icmp ne i64 %249, %250
  br i1 %251, label %252, label %269

252:                                              ; preds = %248
  %253 = load i64, i64* %6, align 8
  %254 = call i64 @get_partition_parent(i64 %253)
  %255 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %256 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %255, i32 0, i32 2
  store i64 %254, i64* %256, align 8
  %257 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %258 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = call i64 @OidIsValid(i64 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %252
  %263 = load %struct.DropRelationCallbackState*, %struct.DropRelationCallbackState** %10, align 8
  %264 = getelementptr inbounds %struct.DropRelationCallbackState, %struct.DropRelationCallbackState* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = load i32, i32* @AccessExclusiveLock, align 4
  %267 = call i32 @LockRelationOid(i64 %265, i32 %266)
  br label %268

268:                                              ; preds = %262, %252
  br label %269

269:                                              ; preds = %78, %87, %174, %268, %248, %245
  ret void
}

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @UnlockRelationOid(i64, i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @DropErrorMsgWrongType(i32, i8 signext, i8 signext) #1

declare dso_local i32 @pg_class_ownercheck(i64, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @pg_namespace_ownercheck(i32, i32) #1

declare dso_local i32 @aclcheck_error(i32, i32, i32) #1

declare dso_local i32 @get_relkind_objtype(i32) #1

declare dso_local i32 @get_rel_relkind(i64) #1

declare dso_local i64 @IsSystemClass(i64, %struct.TYPE_8__*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i64 @IndexGetRelation(i64, i32) #1

declare dso_local i32 @LockRelationOid(i64, i32) #1

declare dso_local i64 @get_partition_parent(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
