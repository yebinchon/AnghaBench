; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_SetDefaultACL.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_SetDefaultACL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32, i8* }
%struct.TYPE_22__ = type { i32 }

@Natts_pg_default_acl = common dso_local global i32 0, align 4
@DefaultAclRelationId = common dso_local global i8* null, align 8
@RowExclusiveLock = common dso_local global i32 0, align 4
@DEFACLOBJ_RELATION = common dso_local global i8 0, align 1
@ACL_NO_RIGHTS = common dso_local global i32 0, align 4
@ACL_ALL_RIGHTS_RELATION = common dso_local global i32 0, align 4
@DEFACLOBJ_SEQUENCE = common dso_local global i8 0, align 1
@ACL_ALL_RIGHTS_SEQUENCE = common dso_local global i32 0, align 4
@DEFACLOBJ_FUNCTION = common dso_local global i8 0, align 1
@ACL_ALL_RIGHTS_FUNCTION = common dso_local global i32 0, align 4
@DEFACLOBJ_TYPE = common dso_local global i8 0, align 1
@ACL_ALL_RIGHTS_TYPE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_GRANT_OPERATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"cannot use IN SCHEMA clause when using GRANT/REVOKE ON SCHEMAS\00", align 1
@DEFACLOBJ_NAMESPACE = common dso_local global i8 0, align 1
@ACL_ALL_RIGHTS_SCHEMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unrecognized objtype: %d\00", align 1
@DEFACLROLENSPOBJ = common dso_local global i32 0, align 4
@Anum_pg_default_acl_defaclacl = common dso_local global i32 0, align 4
@DROP_RESTRICT = common dso_local global i32 0, align 4
@DefaultAclOidIndexId = common dso_local global i32 0, align 4
@Anum_pg_default_acl_oid = common dso_local global i32 0, align 4
@Anum_pg_default_acl_defaclrole = common dso_local global i32 0, align 4
@Anum_pg_default_acl_defaclnamespace = common dso_local global i32 0, align 4
@Anum_pg_default_acl_defaclobjtype = common dso_local global i32 0, align 4
@NamespaceRelationId = common dso_local global i8* null, align 8
@DEPENDENCY_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @SetDefaultACL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetDefaultACL(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_19__, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_19__, align 8
  %25 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* @Natts_pg_default_acl, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %12, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %13, align 8
  %33 = load i32, i32* @Natts_pg_default_acl, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %14, align 8
  %36 = load i32, i32* @Natts_pg_default_acl, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %15, align 8
  %39 = load i8*, i8** @DefaultAclRelationId, align 8
  %40 = load i32, i32* @RowExclusiveLock, align 4
  %41 = call i32 @table_open(i8* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @OidIsValid(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %1
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32* @acldefault(i32 %50, i32 %53)
  store i32* %54, i32** %8, align 8
  br label %57

55:                                               ; preds = %1
  %56 = call i32* (...) @make_empty_acl()
  store i32* %56, i32** %8, align 8
  br label %57

57:                                               ; preds = %55, %47
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %138 [
    i32 129, label %61
    i32 130, label %74
    i32 132, label %87
    i32 128, label %100
    i32 131, label %113
  ]

61:                                               ; preds = %57
  %62 = load i8, i8* @DEFACLOBJ_RELATION, align 1
  store i8 %62, i8* %4, align 1
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @ACL_NO_RIGHTS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @ACL_ALL_RIGHTS_RELATION, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %67, %61
  br label %144

74:                                               ; preds = %57
  %75 = load i8, i8* @DEFACLOBJ_SEQUENCE, align 1
  store i8 %75, i8* %4, align 1
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @ACL_NO_RIGHTS, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @ACL_ALL_RIGHTS_SEQUENCE, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %80, %74
  br label %144

87:                                               ; preds = %57
  %88 = load i8, i8* @DEFACLOBJ_FUNCTION, align 1
  store i8 %88, i8* %4, align 1
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @ACL_NO_RIGHTS, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @ACL_ALL_RIGHTS_FUNCTION, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %93, %87
  br label %144

100:                                              ; preds = %57
  %101 = load i8, i8* @DEFACLOBJ_TYPE, align 1
  store i8 %101, i8* %4, align 1
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @ACL_NO_RIGHTS, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @ACL_ALL_RIGHTS_TYPE, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %106, %100
  br label %144

113:                                              ; preds = %57
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @OidIsValid(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load i32, i32* @ERROR, align 4
  %121 = load i32, i32* @ERRCODE_INVALID_GRANT_OPERATION, align 4
  %122 = call i32 @errcode(i32 %121)
  %123 = call i32 @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %124 = call i32 @ereport(i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %119, %113
  %126 = load i8, i8* @DEFACLOBJ_NAMESPACE, align 1
  store i8 %126, i8* %4, align 1
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* @ACL_NO_RIGHTS, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* @ACL_ALL_RIGHTS_SCHEMA, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %131, %125
  br label %144

138:                                              ; preds = %57
  %139 = load i32, i32* @ERROR, align 4
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @elog(i32 %139, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  store i8 0, i8* %4, align 1
  br label %144

144:                                              ; preds = %138, %137, %112, %99, %86, %73
  %145 = load i32, i32* @DEFACLROLENSPOBJ, align 4
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ObjectIdGetDatum(i32 %148)
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ObjectIdGetDatum(i32 %152)
  %154 = load i8, i8* %4, align 1
  %155 = call i32 @CharGetDatum(i8 signext %154)
  %156 = call %struct.TYPE_21__* @SearchSysCache3(i32 %145, i32 %149, i32 %153, i32 %155)
  store %struct.TYPE_21__* %156, %struct.TYPE_21__** %6, align 8
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %158 = call i64 @HeapTupleIsValid(%struct.TYPE_21__* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %144
  %161 = load i32, i32* @DEFACLROLENSPOBJ, align 4
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %163 = load i32, i32* @Anum_pg_default_acl_defaclacl, align 4
  %164 = call i32 @SysCacheGetAttr(i32 %161, %struct.TYPE_21__* %162, i32 %163, i32* %21)
  store i32 %164, i32* %20, align 4
  %165 = load i32, i32* %21, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %160
  %168 = load i32, i32* %20, align 4
  %169 = call i32* @DatumGetAclPCopy(i32 %168)
  store i32* %169, i32** %9, align 8
  br label %171

170:                                              ; preds = %160
  store i32* null, i32** %9, align 8
  br label %171

171:                                              ; preds = %170, %167
  store i32 0, i32* %7, align 4
  br label %173

172:                                              ; preds = %144
  store i32* null, i32** %9, align 8
  store i32 1, i32* %7, align 4
  br label %173

173:                                              ; preds = %172, %171
  %174 = load i32*, i32** %9, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32*, i32** %9, align 8
  %178 = call i32 @aclmembers(i32* %177, i32** %18)
  store i32 %178, i32* %16, align 4
  br label %182

179:                                              ; preds = %173
  %180 = load i32*, i32** %8, align 8
  %181 = call i32* @aclcopy(i32* %180)
  store i32* %181, i32** %9, align 8
  store i32 0, i32* %16, align 4
  store i32* null, i32** %18, align 8
  br label %182

182:                                              ; preds = %179, %176
  %183 = load i32*, i32** %9, align 8
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %3, align 4
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32* @merge_acl_with_grant(i32* %183, i32 %186, i32 %189, i32 %192, i32 %195, i32 %196, i32 %199, i32 %202)
  store i32* %203, i32** %10, align 8
  %204 = load i32*, i32** %10, align 8
  %205 = call i32 @aclitemsort(i32* %204)
  %206 = load i32*, i32** %8, align 8
  %207 = call i32 @aclitemsort(i32* %206)
  %208 = load i32*, i32** %10, align 8
  %209 = load i32*, i32** %8, align 8
  %210 = call i64 @aclequal(i32* %208, i32* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %228

212:                                              ; preds = %182
  %213 = load i32, i32* %7, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %227, label %215

215:                                              ; preds = %212
  %216 = load i8*, i8** @DefaultAclRelationId, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  store i8* %216, i8** %217, align 8
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %219 = call i64 @GETSTRUCT(%struct.TYPE_21__* %218)
  %220 = inttoptr i64 %219 to %struct.TYPE_22__*
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  store i32 %222, i32* %223, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  store i64 0, i64* %224, align 8
  %225 = load i32, i32* @DROP_RESTRICT, align 4
  %226 = call i32 @performDeletion(%struct.TYPE_19__* %22, i32 %225, i32 0)
  br label %227

227:                                              ; preds = %215, %212
  br label %365

228:                                              ; preds = %182
  %229 = mul nuw i64 4, %30
  %230 = trunc i64 %229 to i32
  %231 = call i32 @MemSet(i32* %32, i32 0, i32 %230)
  %232 = mul nuw i64 4, %34
  %233 = trunc i64 %232 to i32
  %234 = call i32 @MemSet(i32* %35, i32 0, i32 %233)
  %235 = mul nuw i64 4, %37
  %236 = trunc i64 %235 to i32
  %237 = call i32 @MemSet(i32* %38, i32 0, i32 %236)
  %238 = load i32, i32* %7, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %285

240:                                              ; preds = %228
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* @DefaultAclOidIndexId, align 4
  %243 = load i32, i32* @Anum_pg_default_acl_oid, align 4
  %244 = call i32 @GetNewOidWithIndex(i32 %241, i32 %242, i32 %243)
  store i32 %244, i32* %23, align 4
  %245 = load i32, i32* %23, align 4
  %246 = call i32 @ObjectIdGetDatum(i32 %245)
  %247 = load i32, i32* @Anum_pg_default_acl_oid, align 4
  %248 = sub nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %32, i64 %249
  store i32 %246, i32* %250, align 4
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @ObjectIdGetDatum(i32 %253)
  %255 = load i32, i32* @Anum_pg_default_acl_defaclrole, align 4
  %256 = sub nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %32, i64 %257
  store i32 %254, i32* %258, align 4
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @ObjectIdGetDatum(i32 %261)
  %263 = load i32, i32* @Anum_pg_default_acl_defaclnamespace, align 4
  %264 = sub nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %32, i64 %265
  store i32 %262, i32* %266, align 4
  %267 = load i8, i8* %4, align 1
  %268 = call i32 @CharGetDatum(i8 signext %267)
  %269 = load i32, i32* @Anum_pg_default_acl_defaclobjtype, align 4
  %270 = sub nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %32, i64 %271
  store i32 %268, i32* %272, align 4
  %273 = load i32*, i32** %10, align 8
  %274 = call i32 @PointerGetDatum(i32* %273)
  %275 = load i32, i32* @Anum_pg_default_acl_defaclacl, align 4
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %32, i64 %277
  store i32 %274, i32* %278, align 4
  %279 = load i32, i32* %5, align 4
  %280 = call i32 @RelationGetDescr(i32 %279)
  %281 = call %struct.TYPE_21__* @heap_form_tuple(i32 %280, i32* %32, i32* %35)
  store %struct.TYPE_21__* %281, %struct.TYPE_21__** %11, align 8
  %282 = load i32, i32* %5, align 4
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %284 = call i32 @CatalogTupleInsert(i32 %282, %struct.TYPE_21__* %283)
  br label %310

285:                                              ; preds = %228
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %287 = call i64 @GETSTRUCT(%struct.TYPE_21__* %286)
  %288 = inttoptr i64 %287 to %struct.TYPE_22__*
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %23, align 4
  %291 = load i32*, i32** %10, align 8
  %292 = call i32 @PointerGetDatum(i32* %291)
  %293 = load i32, i32* @Anum_pg_default_acl_defaclacl, align 4
  %294 = sub nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %32, i64 %295
  store i32 %292, i32* %296, align 4
  %297 = load i32, i32* @Anum_pg_default_acl_defaclacl, align 4
  %298 = sub nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %38, i64 %299
  store i32 1, i32* %300, align 4
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %302 = load i32, i32* %5, align 4
  %303 = call i32 @RelationGetDescr(i32 %302)
  %304 = call %struct.TYPE_21__* @heap_modify_tuple(%struct.TYPE_21__* %301, i32 %303, i32* %32, i32* %35, i32* %38)
  store %struct.TYPE_21__* %304, %struct.TYPE_21__** %11, align 8
  %305 = load i32, i32* %5, align 4
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %307 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %306, i32 0, i32 0
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %309 = call i32 @CatalogTupleUpdate(i32 %305, i32* %307, %struct.TYPE_21__* %308)
  br label %310

310:                                              ; preds = %285, %240
  %311 = load i32, i32* %7, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %341

313:                                              ; preds = %310
  %314 = load i8*, i8** @DefaultAclRelationId, align 8
  %315 = load i32, i32* %23, align 4
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @recordDependencyOnOwner(i8* %314, i32 %315, i32 %318)
  %320 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = call i64 @OidIsValid(i32 %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %340

325:                                              ; preds = %313
  %326 = load i8*, i8** @DefaultAclRelationId, align 8
  %327 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 2
  store i8* %326, i8** %327, align 8
  %328 = load i32, i32* %23, align 4
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  store i32 %328, i32* %329, align 8
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  store i64 0, i64* %330, align 8
  %331 = load i8*, i8** @NamespaceRelationId, align 8
  %332 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 2
  store i8* %331, i8** %332, align 8
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  store i32 %335, i32* %336, align 8
  %337 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  store i64 0, i64* %337, align 8
  %338 = load i32, i32* @DEPENDENCY_AUTO, align 4
  %339 = call i32 @recordDependencyOn(%struct.TYPE_19__* %24, %struct.TYPE_19__* %25, i32 %338)
  br label %340

340:                                              ; preds = %325, %313
  br label %341

341:                                              ; preds = %340, %310
  %342 = load i32*, i32** %10, align 8
  %343 = call i32 @aclmembers(i32* %342, i32** %19)
  store i32 %343, i32* %17, align 4
  %344 = load i8*, i8** @DefaultAclRelationId, align 8
  %345 = load i32, i32* %23, align 4
  %346 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %347 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %16, align 4
  %350 = load i32*, i32** %18, align 8
  %351 = load i32, i32* %17, align 4
  %352 = load i32*, i32** %19, align 8
  %353 = call i32 @updateAclDependencies(i8* %344, i32 %345, i32 0, i32 %348, i32 %349, i32* %350, i32 %351, i32* %352)
  %354 = load i32, i32* %7, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %341
  %357 = load i8*, i8** @DefaultAclRelationId, align 8
  %358 = load i32, i32* %23, align 4
  %359 = call i32 @InvokeObjectPostCreateHook(i8* %357, i32 %358, i32 0)
  br label %364

360:                                              ; preds = %341
  %361 = load i8*, i8** @DefaultAclRelationId, align 8
  %362 = load i32, i32* %23, align 4
  %363 = call i32 @InvokeObjectPostAlterHook(i8* %361, i32 %362, i32 0)
  br label %364

364:                                              ; preds = %360, %356
  br label %365

365:                                              ; preds = %364, %227
  %366 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %367 = call i64 @HeapTupleIsValid(%struct.TYPE_21__* %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %365
  %370 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %371 = call i32 @ReleaseSysCache(%struct.TYPE_21__* %370)
  br label %372

372:                                              ; preds = %369, %365
  %373 = load i32, i32* %5, align 4
  %374 = load i32, i32* @RowExclusiveLock, align 4
  %375 = call i32 @table_close(i32 %373, i32 %374)
  %376 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %376)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i8*, i32) #2

declare dso_local i64 @OidIsValid(i32) #2

declare dso_local i32* @acldefault(i32, i32) #2

declare dso_local i32* @make_empty_acl(...) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*) #2

declare dso_local i32 @elog(i32, i8*, i32) #2

declare dso_local %struct.TYPE_21__* @SearchSysCache3(i32, i32, i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @CharGetDatum(i8 signext) #2

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_21__*) #2

declare dso_local i32 @SysCacheGetAttr(i32, %struct.TYPE_21__*, i32, i32*) #2

declare dso_local i32* @DatumGetAclPCopy(i32) #2

declare dso_local i32 @aclmembers(i32*, i32**) #2

declare dso_local i32* @aclcopy(i32*) #2

declare dso_local i32* @merge_acl_with_grant(i32*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @aclitemsort(i32*) #2

declare dso_local i64 @aclequal(i32*, i32*) #2

declare dso_local i64 @GETSTRUCT(%struct.TYPE_21__*) #2

declare dso_local i32 @performDeletion(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @MemSet(i32*, i32, i32) #2

declare dso_local i32 @GetNewOidWithIndex(i32, i32, i32) #2

declare dso_local i32 @PointerGetDatum(i32*) #2

declare dso_local %struct.TYPE_21__* @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleInsert(i32, %struct.TYPE_21__*) #2

declare dso_local %struct.TYPE_21__* @heap_modify_tuple(%struct.TYPE_21__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_21__*) #2

declare dso_local i32 @recordDependencyOnOwner(i8*, i32, i32) #2

declare dso_local i32 @recordDependencyOn(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #2

declare dso_local i32 @updateAclDependencies(i8*, i32, i32, i32, i32, i32*, i32, i32*) #2

declare dso_local i32 @InvokeObjectPostCreateHook(i8*, i32, i32) #2

declare dso_local i32 @InvokeObjectPostAlterHook(i8*, i32, i32) #2

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_21__*) #2

declare dso_local i32 @table_close(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
