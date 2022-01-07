; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_publicationcmds.c_CreatePublication.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_publicationcmds.c_CreatePublication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@Natts_pg_publication = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_DATABASE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"must be superuser to create FOR ALL TABLES publication\00", align 1
@PublicationRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@PUBLICATIONNAME = common dso_local global i32 0, align 4
@Anum_pg_publication_oid = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"publication \22%s\22 already exists\00", align 1
@namein = common dso_local global i32 0, align 4
@Anum_pg_publication_pubname = common dso_local global i32 0, align 4
@Anum_pg_publication_pubowner = common dso_local global i32 0, align 4
@PublicationObjectIndexId = common dso_local global i32 0, align 4
@Anum_pg_publication_puballtables = common dso_local global i32 0, align 4
@Anum_pg_publication_pubinsert = common dso_local global i32 0, align 4
@Anum_pg_publication_pubupdate = common dso_local global i32 0, align 4
@Anum_pg_publication_pubdelete = common dso_local global i32 0, align 4
@Anum_pg_publication_pubtruncate = common dso_local global i32 0, align 4
@wal_level = common dso_local global i64 0, align 8
@WAL_LEVEL_LOGICAL = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"wal_level is insufficient to publish logical changes\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Set wal_level to logical before creating subscriptions.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreatePublication(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %17 = load i32, i32* @Natts_pg_publication, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load i32, i32* @Natts_pg_publication, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %24 = load i32, i32* @MyDatabaseId, align 4
  %25 = call i32 (...) @GetUserId()
  %26 = load i32, i32* @ACL_CREATE, align 4
  %27 = call i64 @pg_database_aclcheck(i32 %24, i32 %25, i32 %26)
  store i64 %27, i64* %15, align 8
  %28 = load i64, i64* %15, align 8
  %29 = load i64, i64* @ACLCHECK_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load i64, i64* %15, align 8
  %33 = load i32, i32* @OBJECT_DATABASE, align 4
  %34 = load i32, i32* @MyDatabaseId, align 4
  %35 = call i32 @get_database_name(i32 %34)
  %36 = call i32 @aclcheck_error(i64 %32, i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %31, %1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = call i32 (...) @superuser()
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @ereport(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %42, %37
  %52 = load i32, i32* @PublicationRelationId, align 4
  %53 = load i32, i32* @RowExclusiveLock, align 4
  %54 = call i32 @table_open(i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* @PUBLICATIONNAME, align 4
  %56 = load i32, i32* @Anum_pg_publication_oid, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @CStringGetDatum(i32 %59)
  %61 = call i32 @GetSysCacheOid1(i32 %55, i32 %56, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @OidIsValid(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %51
  %66 = load i32, i32* @ERROR, align 4
  %67 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %68 = call i32 @errcode(i32 %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = call i32 @ereport(i32 %66, i32 %72)
  br label %74

74:                                               ; preds = %65, %51
  %75 = mul nuw i64 4, %22
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memset(i32* %23, i32 0, i32 %76)
  %78 = mul nuw i64 4, %18
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memset(i32* %20, i32 0, i32 %79)
  %81 = load i32, i32* @namein, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @CStringGetDatum(i32 %84)
  %86 = call i32 @DirectFunctionCall1(i32 %81, i32 %85)
  %87 = load i32, i32* @Anum_pg_publication_pubname, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %23, i64 %89
  store i32 %86, i32* %90, align 4
  %91 = call i32 (...) @GetUserId()
  %92 = call i32 @ObjectIdGetDatum(i32 %91)
  %93 = load i32, i32* @Anum_pg_publication_pubowner, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %23, i64 %95
  store i32 %92, i32* %96, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @parse_publication_options(i32 %99, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14)
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @PublicationObjectIndexId, align 4
  %103 = load i32, i32* @Anum_pg_publication_oid, align 4
  %104 = call i32 @GetNewOidWithIndex(i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @ObjectIdGetDatum(i32 %105)
  %107 = load i32, i32* @Anum_pg_publication_oid, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %23, i64 %109
  store i32 %106, i32* %110, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @BoolGetDatum(i32 %113)
  %115 = load i32, i32* @Anum_pg_publication_puballtables, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %23, i64 %117
  store i32 %114, i32* %118, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @BoolGetDatum(i32 %119)
  %121 = load i32, i32* @Anum_pg_publication_pubinsert, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %23, i64 %123
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @BoolGetDatum(i32 %125)
  %127 = load i32, i32* @Anum_pg_publication_pubupdate, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %23, i64 %129
  store i32 %126, i32* %130, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @BoolGetDatum(i32 %131)
  %133 = load i32, i32* @Anum_pg_publication_pubdelete, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %23, i64 %135
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @BoolGetDatum(i32 %137)
  %139 = load i32, i32* @Anum_pg_publication_pubtruncate, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %23, i64 %141
  store i32 %138, i32* %142, align 4
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @RelationGetDescr(i32 %143)
  %145 = call i32 @heap_form_tuple(i32 %144, i32* %23, i32* %20)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @CatalogTupleInsert(i32 %146, i32 %147)
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @heap_freetuple(i32 %149)
  %151 = load i32, i32* @PublicationRelationId, align 4
  %152 = load i32, i32* %5, align 4
  %153 = call i32 (...) @GetUserId()
  %154 = call i32 @recordDependencyOnOwner(i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @PublicationRelationId, align 4
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @ObjectAddressSet(i32 %155, i32 %156, i32 %157)
  %159 = call i32 (...) @CommandCounterIncrement()
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %181

164:                                              ; preds = %74
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @list_length(i64 %167)
  %169 = icmp sgt i64 %168, 0
  %170 = zext i1 %169 to i32
  %171 = call i32 @Assert(i32 %170)
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i32* @OpenTableList(i64 %174)
  store i32* %175, i32** %16, align 8
  %176 = load i32, i32* %5, align 4
  %177 = load i32*, i32** %16, align 8
  %178 = call i32 @PublicationAddTables(i32 %176, i32* %177, i32 1, i32* null)
  %179 = load i32*, i32** %16, align 8
  %180 = call i32 @CloseTableList(i32* %179)
  br label %181

181:                                              ; preds = %164, %74
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* @RowExclusiveLock, align 4
  %184 = call i32 @table_close(i32 %182, i32 %183)
  %185 = load i32, i32* @PublicationRelationId, align 4
  %186 = load i32, i32* %5, align 4
  %187 = call i32 @InvokeObjectPostCreateHook(i32 %185, i32 %186, i32 0)
  %188 = load i64, i64* @wal_level, align 8
  %189 = load i64, i64* @WAL_LEVEL_LOGICAL, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %181
  %192 = load i32, i32* @WARNING, align 4
  %193 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %194 = call i32 @errcode(i32 %193)
  %195 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %196 = call i32 @errhint(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %197 = call i32 @ereport(i32 %192, i32 %196)
  br label %198

198:                                              ; preds = %191, %181
  %199 = load i32, i32* %4, align 4
  %200 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %200)
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pg_database_aclcheck(i32, i32, i32) #2

declare dso_local i32 @GetUserId(...) #2

declare dso_local i32 @aclcheck_error(i64, i32, i32) #2

declare dso_local i32 @get_database_name(i32) #2

declare dso_local i32 @superuser(...) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @GetSysCacheOid1(i32, i32, i32) #2

declare dso_local i32 @CStringGetDatum(i32) #2

declare dso_local i64 @OidIsValid(i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @DirectFunctionCall1(i32, i32) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @parse_publication_options(i32, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @GetNewOidWithIndex(i32, i32, i32) #2

declare dso_local i32 @BoolGetDatum(i32) #2

declare dso_local i32 @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleInsert(i32, i32) #2

declare dso_local i32 @heap_freetuple(i32) #2

declare dso_local i32 @recordDependencyOnOwner(i32, i32, i32) #2

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #2

declare dso_local i32 @CommandCounterIncrement(...) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i64 @list_length(i64) #2

declare dso_local i32* @OpenTableList(i64) #2

declare dso_local i32 @PublicationAddTables(i32, i32*, i32, i32*) #2

declare dso_local i32 @CloseTableList(i32*) #2

declare dso_local i32 @table_close(i32, i32) #2

declare dso_local i32 @InvokeObjectPostCreateHook(i32, i32, i32) #2

declare dso_local i32 @errhint(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
