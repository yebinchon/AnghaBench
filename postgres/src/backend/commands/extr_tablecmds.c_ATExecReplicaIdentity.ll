; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecReplicaIdentity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecReplicaIdentity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__, i32, i32, i32 }
%struct.TYPE_21__ = type { i64* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i64, i64 }
%struct.TYPE_25__ = type { i32, i32 }

@REPLICA_IDENTITY_DEFAULT = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i32 0, align 4
@REPLICA_IDENTITY_FULL = common dso_local global i64 0, align 8
@REPLICA_IDENTITY_NOTHING = common dso_local global i64 0, align 8
@REPLICA_IDENTITY_INDEX = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unexpected identity type %u\00", align 1
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"index \22%s\22 for table \22%s\22 does not exist\00", align 1
@ShareLock = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"\22%s\22 is not an index for table \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"cannot use non-unique index \22%s\22 as replica identity\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"cannot use non-immediate index \22%s\22 as replica identity\00", align 1
@NIL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"cannot use expression index \22%s\22 as replica identity\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"cannot use partial index \22%s\22 as replica identity\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"cannot use invalid index \22%s\22 as replica identity\00", align 1
@ERRCODE_INVALID_COLUMN_REFERENCE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [83 x i8] c"index \22%s\22 cannot be used as replica identity because column %d is a system column\00", align 1
@.str.9 = private unnamed_addr constant [78 x i8] c"index \22%s\22 cannot be used as replica identity because column \22%s\22 is nullable\00", align 1
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_23__*, i32)* @ATExecReplicaIdentity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ATExecReplicaIdentity(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REPLICA_IDENTITY_DEFAULT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @InvalidOid, align 4
  %23 = call i32 @relation_mark_replica_identity(%struct.TYPE_24__* %18, i64 %21, i32 %22, i32 1)
  br label %260

24:                                               ; preds = %3
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @REPLICA_IDENTITY_FULL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @InvalidOid, align 4
  %36 = call i32 @relation_mark_replica_identity(%struct.TYPE_24__* %31, i64 %34, i32 %35, i32 1)
  br label %260

37:                                               ; preds = %24
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @REPLICA_IDENTITY_NOTHING, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @InvalidOid, align 4
  %49 = call i32 @relation_mark_replica_identity(%struct.TYPE_24__* %44, i64 %47, i32 %48, i32 1)
  br label %260

50:                                               ; preds = %37
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @REPLICA_IDENTITY_INDEX, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %63

57:                                               ; preds = %50
  %58 = load i32, i32* @ERROR, align 4
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @elog(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %61)
  br label %63

63:                                               ; preds = %57, %56
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @get_relname_relid(i64 %69, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @OidIsValid(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %66
  %80 = load i32, i32* @ERROR, align 4
  %81 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %82 = call i32 @errcode(i32 %81)
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %87 = call i64 @RelationGetRelationName(%struct.TYPE_24__* %86)
  %88 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %85, i64 %87)
  %89 = call i32 @ereport(i32 %80, i32 %88)
  br label %90

90:                                               ; preds = %79, %66
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @ShareLock, align 4
  %93 = call %struct.TYPE_24__* @index_open(i32 %91, i32 %92)
  store %struct.TYPE_24__* %93, %struct.TYPE_24__** %8, align 8
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %95, align 8
  %97 = icmp eq %struct.TYPE_22__* %96, null
  br i1 %97, label %107, label %98

98:                                               ; preds = %90
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %105 = call i64 @RelationGetRelid(%struct.TYPE_24__* %104)
  %106 = icmp ne i64 %103, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %98, %90
  %108 = load i32, i32* @ERROR, align 4
  %109 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %110 = call i32 @errcode(i32 %109)
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %112 = call i64 @RelationGetRelationName(%struct.TYPE_24__* %111)
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %114 = call i64 @RelationGetRelationName(%struct.TYPE_24__* %113)
  %115 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %112, i64 %114)
  %116 = call i32 @ereport(i32 %108, i32 %115)
  br label %117

117:                                              ; preds = %107, %98
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %124, %117
  %132 = load i32, i32* @ERROR, align 4
  %133 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %134 = call i32 @errcode(i32 %133)
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %136 = call i64 @RelationGetRelationName(%struct.TYPE_24__* %135)
  %137 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %136)
  %138 = call i32 @ereport(i32 %132, i32 %137)
  br label %139

139:                                              ; preds = %131, %124
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %139
  %147 = load i32, i32* @ERROR, align 4
  %148 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %149 = call i32 @errcode(i32 %148)
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %151 = call i64 @RelationGetRelationName(%struct.TYPE_24__* %150)
  %152 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i64 %151)
  %153 = call i32 @ereport(i32 %147, i32 %152)
  br label %154

154:                                              ; preds = %146, %139
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %156 = call i64 @RelationGetIndexExpressions(%struct.TYPE_24__* %155)
  %157 = load i64, i64* @NIL, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %154
  %160 = load i32, i32* @ERROR, align 4
  %161 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %162 = call i32 @errcode(i32 %161)
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %164 = call i64 @RelationGetRelationName(%struct.TYPE_24__* %163)
  %165 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %164)
  %166 = call i32 @ereport(i32 %160, i32 %165)
  br label %167

167:                                              ; preds = %159, %154
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %169 = call i64 @RelationGetIndexPredicate(%struct.TYPE_24__* %168)
  %170 = load i64, i64* @NIL, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %167
  %173 = load i32, i32* @ERROR, align 4
  %174 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %175 = call i32 @errcode(i32 %174)
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %177 = call i64 @RelationGetRelationName(%struct.TYPE_24__* %176)
  %178 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i64 %177)
  %179 = call i32 @ereport(i32 %173, i32 %178)
  br label %180

180:                                              ; preds = %172, %167
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %195, label %187

187:                                              ; preds = %180
  %188 = load i32, i32* @ERROR, align 4
  %189 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %190 = call i32 @errcode(i32 %189)
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %192 = call i64 @RelationGetRelationName(%struct.TYPE_24__* %191)
  %193 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i64 %192)
  %194 = call i32 @ereport(i32 %188, i32 %193)
  br label %195

195:                                              ; preds = %187, %180
  store i32 0, i32* %9, align 4
  br label %196

196:                                              ; preds = %247, %195
  %197 = load i32, i32* %9, align 4
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %199 = call i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_24__* %198)
  %200 = icmp slt i32 %197, %199
  br i1 %200, label %201, label %250

201:                                              ; preds = %196
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 0
  %207 = load i64*, i64** %206, align 8
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %10, align 8
  %212 = load i64, i64* %10, align 8
  %213 = icmp sle i64 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %201
  %215 = load i32, i32* @ERROR, align 4
  %216 = load i32, i32* @ERRCODE_INVALID_COLUMN_REFERENCE, align 4
  %217 = call i32 @errcode(i32 %216)
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %219 = call i64 @RelationGetRelationName(%struct.TYPE_24__* %218)
  %220 = load i64, i64* %10, align 8
  %221 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.8, i64 0, i64 0), i64 %219, i64 %220)
  %222 = call i32 @ereport(i32 %215, i32 %221)
  br label %223

223:                                              ; preds = %214, %201
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i64, i64* %10, align 8
  %228 = sub nsw i64 %227, 1
  %229 = call %struct.TYPE_25__* @TupleDescAttr(i32 %226, i64 %228)
  store %struct.TYPE_25__* %229, %struct.TYPE_25__** %11, align 8
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %246, label %234

234:                                              ; preds = %223
  %235 = load i32, i32* @ERROR, align 4
  %236 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %237 = call i32 @errcode(i32 %236)
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %239 = call i64 @RelationGetRelationName(%struct.TYPE_24__* %238)
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i64 @NameStr(i32 %242)
  %244 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.9, i64 0, i64 0), i64 %239, i64 %243)
  %245 = call i32 @ereport(i32 %235, i32 %244)
  br label %246

246:                                              ; preds = %234, %223
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %9, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %9, align 4
  br label %196

250:                                              ; preds = %196
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %252 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i32, i32* %7, align 4
  %256 = call i32 @relation_mark_replica_identity(%struct.TYPE_24__* %251, i64 %254, i32 %255, i32 1)
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %258 = load i32, i32* @NoLock, align 4
  %259 = call i32 @index_close(%struct.TYPE_24__* %257, i32 %258)
  br label %260

260:                                              ; preds = %250, %43, %30, %17
  ret void
}

declare dso_local i32 @relation_mark_replica_identity(%struct.TYPE_24__*, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @get_relname_relid(i64, i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64, ...) #1

declare dso_local i64 @RelationGetRelationName(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @index_open(i32, i32) #1

declare dso_local i64 @RelationGetRelid(%struct.TYPE_24__*) #1

declare dso_local i64 @RelationGetIndexExpressions(%struct.TYPE_24__*) #1

declare dso_local i64 @RelationGetIndexPredicate(%struct.TYPE_24__*) #1

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_25__* @TupleDescAttr(i32, i64) #1

declare dso_local i64 @NameStr(i32) #1

declare dso_local i32 @index_close(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
