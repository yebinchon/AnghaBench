; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_user.c_RenameRole.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_user.c_RenameRole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, i64, i32 }

@Natts_pg_authid = common dso_local global i32 0, align 4
@AuthIdRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@AUTHNAME = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"role \22%s\22 does not exist\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"session user cannot be renamed\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"current user cannot be renamed\00", align 1
@ERRCODE_RESERVED_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"role name \22%s\22 is reserved\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Role names starting with \22pg_\22 are reserved.\00", align 1
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"role \22%s\22 already exists\00", align 1
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"must be superuser to rename superusers\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"permission denied to rename role\00", align 1
@Anum_pg_authid_rolname = common dso_local global i32 0, align 4
@namein = common dso_local global i32 0, align 4
@Anum_pg_authid_rolpassword = common dso_local global i32 0, align 4
@PASSWORD_TYPE_MD5 = common dso_local global i64 0, align 8
@NOTICE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"MD5 password cleared because of role rename\00", align 1
@NoLock = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RenameRole(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %19 = load i32, i32* @Natts_pg_authid, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i32, i32* @Natts_pg_authid, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %26 = load i32, i32* @Natts_pg_authid, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  %29 = load i32, i32* @AuthIdRelationId, align 4
  %30 = load i32, i32* @RowExclusiveLock, align 4
  %31 = call i32 @table_open(i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @RelationGetDescr(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* @AUTHNAME, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @CStringGetDatum(i8* %35)
  %37 = call %struct.TYPE_11__* @SearchSysCache1(i32 %34, i32 %36)
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %5, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = call i32 @HeapTupleIsValid(%struct.TYPE_11__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %44 = call i32 @errcode(i32 %43)
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = call i32 @ereport(i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %41, %2
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = call i64 @GETSTRUCT(%struct.TYPE_11__* %49)
  %51 = inttoptr i64 %50 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %18, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %16, align 8
  %55 = load i64, i64* %16, align 8
  %56 = call i64 (...) @GetSessionUserId()
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load i32, i32* @ERROR, align 4
  %60 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %61 = call i32 @errcode(i32 %60)
  %62 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 @ereport(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %48
  %65 = load i64, i64* %16, align 8
  %66 = call i64 (...) @GetOuterUserId()
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %71 = call i32 @errcode(i32 %70)
  %72 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %73 = call i32 @ereport(i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %68, %64
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @NameStr(i32 %77)
  %79 = call i64 @IsReservedName(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %74
  %82 = load i32, i32* @ERROR, align 4
  %83 = load i32, i32* @ERRCODE_RESERVED_NAME, align 4
  %84 = call i32 @errcode(i32 %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @NameStr(i32 %87)
  %89 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %88)
  %90 = call i32 @errdetail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %91 = call i32 @ereport(i32 %82, i32 %90)
  br label %92

92:                                               ; preds = %81, %74
  %93 = load i8*, i8** %4, align 8
  %94 = call i64 @IsReservedName(i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load i32, i32* @ERROR, align 4
  %98 = load i32, i32* @ERRCODE_RESERVED_NAME, align 4
  %99 = call i32 @errcode(i32 %98)
  %100 = load i8*, i8** %4, align 8
  %101 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %100)
  %102 = call i32 @errdetail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %103 = call i32 @ereport(i32 %97, i32 %102)
  br label %104

104:                                              ; preds = %96, %92
  %105 = load i32, i32* @AUTHNAME, align 4
  %106 = load i8*, i8** %4, align 8
  %107 = call i32 @CStringGetDatum(i8* %106)
  %108 = call i64 @SearchSysCacheExists1(i32 %105, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load i32, i32* @ERROR, align 4
  %112 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %113 = call i32 @errcode(i32 %112)
  %114 = load i8*, i8** %4, align 8
  %115 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  %116 = call i32 @ereport(i32 %111, i32 %115)
  br label %117

117:                                              ; preds = %110, %104
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = call i64 @GETSTRUCT(%struct.TYPE_11__* %118)
  %120 = inttoptr i64 %119 to %struct.TYPE_12__*
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %117
  %125 = call i32 (...) @superuser()
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* @ERROR, align 4
  %129 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %130 = call i32 @errcode(i32 %129)
  %131 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %132 = call i32 @ereport(i32 %128, i32 %131)
  br label %133

133:                                              ; preds = %127, %124
  br label %144

134:                                              ; preds = %117
  %135 = call i32 (...) @have_createrole_privilege()
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* @ERROR, align 4
  %139 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %140 = call i32 @errcode(i32 %139)
  %141 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %142 = call i32 @ereport(i32 %138, i32 %141)
  br label %143

143:                                              ; preds = %137, %134
  br label %144

144:                                              ; preds = %143, %133
  store i32 0, i32* %15, align 4
  br label %145

145:                                              ; preds = %153, %144
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* @Natts_pg_authid, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %145
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %28, i64 %151
  store i32 0, i32* %152, align 4
  br label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %15, align 4
  br label %145

156:                                              ; preds = %145
  %157 = load i32, i32* @Anum_pg_authid_rolname, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %28, i64 %159
  store i32 1, i32* %160, align 4
  %161 = load i32, i32* @namein, align 4
  %162 = load i8*, i8** %4, align 8
  %163 = call i32 @CStringGetDatum(i8* %162)
  %164 = call i32 @DirectFunctionCall1(i32 %161, i32 %163)
  %165 = load i32, i32* @Anum_pg_authid_rolname, align 4
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %22, i64 %167
  store i32 %164, i32* %168, align 4
  %169 = load i32, i32* @Anum_pg_authid_rolname, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %25, i64 %171
  store i32 0, i32* %172, align 4
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %174 = load i32, i32* @Anum_pg_authid_rolpassword, align 4
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @heap_getattr(%struct.TYPE_11__* %173, i32 %174, i32 %175, i32* %10)
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %197, label %179

179:                                              ; preds = %156
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @TextDatumGetCString(i32 %180)
  %182 = call i64 @get_password_type(i32 %181)
  %183 = load i64, i64* @PASSWORD_TYPE_MD5, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %179
  %186 = load i32, i32* @Anum_pg_authid_rolpassword, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %28, i64 %188
  store i32 1, i32* %189, align 4
  %190 = load i32, i32* @Anum_pg_authid_rolpassword, align 4
  %191 = sub nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %25, i64 %192
  store i32 1, i32* %193, align 4
  %194 = load i32, i32* @NOTICE, align 4
  %195 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %196 = call i32 @ereport(i32 %194, i32 %195)
  br label %197

197:                                              ; preds = %185, %179, %156
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %199 = load i32, i32* %7, align 4
  %200 = call %struct.TYPE_11__* @heap_modify_tuple(%struct.TYPE_11__* %198, i32 %199, i32* %22, i32* %25, i32* %28)
  store %struct.TYPE_11__* %200, %struct.TYPE_11__** %6, align 8
  %201 = load i32, i32* %8, align 4
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %205 = call i32 @CatalogTupleUpdate(i32 %201, i32* %203, %struct.TYPE_11__* %204)
  %206 = load i32, i32* @AuthIdRelationId, align 4
  %207 = load i64, i64* %16, align 8
  %208 = call i32 @InvokeObjectPostAlterHook(i32 %206, i64 %207, i32 0)
  %209 = load i32, i32* %17, align 4
  %210 = load i32, i32* @AuthIdRelationId, align 4
  %211 = load i64, i64* %16, align 8
  %212 = call i32 @ObjectAddressSet(i32 %209, i32 %210, i64 %211)
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %214 = call i32 @ReleaseSysCache(%struct.TYPE_11__* %213)
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* @NoLock, align 4
  %217 = call i32 @table_close(i32 %215, i32 %216)
  %218 = load i32, i32* %17, align 4
  %219 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %219)
  ret i32 %218
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local %struct.TYPE_11__* @SearchSysCache1(i32, i32) #2

declare dso_local i32 @CStringGetDatum(i8*) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_11__*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i64 @GETSTRUCT(%struct.TYPE_11__*) #2

declare dso_local i64 @GetSessionUserId(...) #2

declare dso_local i64 @GetOuterUserId(...) #2

declare dso_local i64 @IsReservedName(i8*) #2

declare dso_local i8* @NameStr(i32) #2

declare dso_local i32 @errdetail(i8*) #2

declare dso_local i64 @SearchSysCacheExists1(i32, i32) #2

declare dso_local i32 @superuser(...) #2

declare dso_local i32 @have_createrole_privilege(...) #2

declare dso_local i32 @DirectFunctionCall1(i32, i32) #2

declare dso_local i32 @heap_getattr(%struct.TYPE_11__*, i32, i32, i32*) #2

declare dso_local i64 @get_password_type(i32) #2

declare dso_local i32 @TextDatumGetCString(i32) #2

declare dso_local %struct.TYPE_11__* @heap_modify_tuple(%struct.TYPE_11__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i64, i32) #2

declare dso_local i32 @ObjectAddressSet(i32, i32, i64) #2

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_11__*) #2

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
