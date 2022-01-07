; ModuleID = '/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_label.c_exec_object_restorecon.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/sepgsql/extr_label.c_exec_object_restorecon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selabel_handle = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@MyDatabaseId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@SELABEL_DB_DATABASE = common dso_local global i32 0, align 4
@SELABEL_DB_SCHEMA = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_TABLE = common dso_local global i32 0, align 4
@SELABEL_DB_TABLE = common dso_local global i32 0, align 4
@RELKIND_SEQUENCE = common dso_local global i32 0, align 4
@SELABEL_DB_SEQUENCE = common dso_local global i32 0, align 4
@RELKIND_VIEW = common dso_local global i32 0, align 4
@SELABEL_DB_VIEW = common dso_local global i32 0, align 4
@SELABEL_DB_COLUMN = common dso_local global i32 0, align 4
@SELABEL_DB_PROCEDURE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unexpected catalog id: %u\00", align 1
@SEPGSQL_LABEL_TAG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"SELinux: no initial label assigned for %s (type=%d), skipping\00", align 1
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"SELinux: could not determine initial security label for %s (type=%d): %m\00", align 1
@NoLock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.selabel_handle*, i32)* @exec_object_restorecon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_object_restorecon(%struct.selabel_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.selabel_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_9__, align 4
  %20 = alloca i32, align 4
  store %struct.selabel_handle* %0, %struct.selabel_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %21 = load i32, i32* @MyDatabaseId, align 4
  %22 = call i8* @get_database_name(i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @AccessShareLock, align 4
  %25 = call i32 @table_open(i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @InvalidOid, align 4
  %28 = call i32 @systable_beginscan(i32 %26, i32 %27, i32 0, i32* null, i32 0, i32* null)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %245, %146, %105, %2
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @systable_getnext(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = call i64 @HeapTupleIsValid(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %248

34:                                               ; preds = %29
  store i32 1234, i32* %18, align 4
  %35 = load i32, i32* %4, align 4
  switch i32 %35, label %205 [
    i32 131, label %36
    i32 130, label %53
    i32 128, label %71
    i32 132, label %128
    i32 129, label %180
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @GETSTRUCT(i32 %37)
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %12, align 8
  %41 = load i32, i32* @SELABEL_DB_DATABASE, align 4
  store i32 %41, i32* %18, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @NameStr(i32 %44)
  %46 = call i8* @quote_object_name(i8* %45, i8* null, i8* null, i8* null)
  store i8* %46, i8** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 131, i32* %47, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i32 0, i32* %52, align 4
  br label %209

53:                                               ; preds = %34
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @GETSTRUCT(i32 %54)
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %13, align 8
  %58 = load i32, i32* @SELABEL_DB_SCHEMA, align 4
  store i32 %58, i32* %18, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @NameStr(i32 %62)
  %64 = call i8* @quote_object_name(i8* %59, i8* %63, i8* null, i8* null)
  store i8* %64, i8** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 130, i32* %65, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i32 0, i32* %70, align 4
  br label %209

71:                                               ; preds = %34
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @GETSTRUCT(i32 %72)
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %14, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RELKIND_RELATION, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %71
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RELKIND_PARTITIONED_TABLE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81, %71
  %88 = load i32, i32* @SELABEL_DB_TABLE, align 4
  store i32 %88, i32* %18, align 4
  br label %108

89:                                               ; preds = %81
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @RELKIND_SEQUENCE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @SELABEL_DB_SEQUENCE, align 4
  store i32 %96, i32* %18, align 4
  br label %107

97:                                               ; preds = %89
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @RELKIND_VIEW, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* @SELABEL_DB_VIEW, align 4
  store i32 %104, i32* %18, align 4
  br label %106

105:                                              ; preds = %97
  br label %29

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %106, %95
  br label %108

108:                                              ; preds = %107, %87
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @get_namespace_name(i32 %111)
  store i8* %112, i8** %9, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @NameStr(i32 %117)
  %119 = call i8* @quote_object_name(i8* %113, i8* %114, i8* %118, i8* null)
  store i8* %119, i8** %17, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 @pfree(i8* %120)
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 128, i32* %122, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store i32 %125, i32* %126, align 4
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i32 0, i32* %127, align 4
  br label %209

128:                                              ; preds = %34
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @GETSTRUCT(i32 %129)
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %132, %struct.TYPE_14__** %15, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @get_rel_relkind(i32 %135)
  %137 = load i32, i32* @RELKIND_RELATION, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %147

139:                                              ; preds = %128
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @get_rel_relkind(i32 %142)
  %144 = load i32, i32* @RELKIND_PARTITIONED_TABLE, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %29

147:                                              ; preds = %139, %128
  %148 = load i32, i32* @SELABEL_DB_COLUMN, align 4
  store i32 %148, i32* %18, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @get_rel_namespace(i32 %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i8* @get_namespace_name(i32 %153)
  store i8* %154, i8** %9, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @get_rel_name(i32 %157)
  store i8* %158, i8** %11, align 8
  %159 = load i8*, i8** %8, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = load i8*, i8** %11, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @NameStr(i32 %164)
  %166 = call i8* @quote_object_name(i8* %159, i8* %160, i8* %161, i8* %165)
  store i8* %166, i8** %17, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = call i32 @pfree(i8* %167)
  %169 = load i8*, i8** %11, align 8
  %170 = call i32 @pfree(i8* %169)
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 128, i32* %171, align 4
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store i32 %174, i32* %175, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i32 %178, i32* %179, align 4
  br label %209

180:                                              ; preds = %34
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @GETSTRUCT(i32 %181)
  %183 = sext i32 %182 to i64
  %184 = inttoptr i64 %183 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %184, %struct.TYPE_10__** %16, align 8
  %185 = load i32, i32* @SELABEL_DB_PROCEDURE, align 4
  store i32 %185, i32* %18, align 4
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @get_namespace_name(i32 %188)
  store i8* %189, i8** %9, align 8
  %190 = load i8*, i8** %8, align 8
  %191 = load i8*, i8** %9, align 8
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @NameStr(i32 %194)
  %196 = call i8* @quote_object_name(i8* %190, i8* %191, i8* %195, i8* null)
  store i8* %196, i8** %17, align 8
  %197 = load i8*, i8** %9, align 8
  %198 = call i32 @pfree(i8* %197)
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 129, i32* %199, align 4
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store i32 %202, i32* %203, align 4
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  store i32 0, i32* %204, align 4
  br label %209

205:                                              ; preds = %34
  %206 = load i32, i32* @ERROR, align 4
  %207 = load i32, i32* %4, align 4
  %208 = call i32 @elog(i32 %206, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %207)
  store i8* null, i8** %17, align 8
  br label %209

209:                                              ; preds = %205, %180, %147, %108, %53, %36
  %210 = load %struct.selabel_handle*, %struct.selabel_handle** %3, align 8
  %211 = load i8*, i8** %17, align 8
  %212 = load i32, i32* %18, align 4
  %213 = call i64 @selabel_lookup_raw(%struct.selabel_handle* %210, i32* %20, i8* %211, i32 %212)
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %209
  %216 = call i32 (...) @PG_TRY()
  %217 = load i32, i32* %20, align 4
  %218 = call i32 @sepgsql_object_relabel(%struct.TYPE_9__* %19, i32 %217)
  %219 = load i32, i32* @SEPGSQL_LABEL_TAG, align 4
  %220 = load i32, i32* %20, align 4
  %221 = call i32 @SetSecurityLabel(%struct.TYPE_9__* %19, i32 %219, i32 %220)
  %222 = call i32 (...) @PG_FINALLY()
  %223 = load i32, i32* %20, align 4
  %224 = call i32 @freecon(i32 %223)
  %225 = call i32 (...) @PG_END_TRY()
  br label %245

226:                                              ; preds = %209
  %227 = load i64, i64* @errno, align 8
  %228 = load i64, i64* @ENOENT, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %226
  %231 = load i32, i32* @WARNING, align 4
  %232 = load i8*, i8** %17, align 8
  %233 = load i32, i32* %18, align 4
  %234 = call i32 @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i8* %232, i32 %233)
  %235 = call i32 @ereport(i32 %231, i32 %234)
  br label %244

236:                                              ; preds = %226
  %237 = load i32, i32* @ERROR, align 4
  %238 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %239 = call i32 @errcode(i32 %238)
  %240 = load i8*, i8** %17, align 8
  %241 = load i32, i32* %18, align 4
  %242 = call i32 @errmsg(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i8* %240, i32 %241)
  %243 = call i32 @ereport(i32 %237, i32 %242)
  br label %244

244:                                              ; preds = %236, %230
  br label %245

245:                                              ; preds = %244, %215
  %246 = load i8*, i8** %17, align 8
  %247 = call i32 @pfree(i8* %246)
  br label %29

248:                                              ; preds = %29
  %249 = load i32, i32* %6, align 4
  %250 = call i32 @systable_endscan(i32 %249)
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* @NoLock, align 4
  %253 = call i32 @table_close(i32 %251, i32 %252)
  ret void
}

declare dso_local i8* @get_database_name(i32) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i8* @quote_object_name(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i8* @get_namespace_name(i32) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @get_rel_relkind(i32) #1

declare dso_local i32 @get_rel_namespace(i32) #1

declare dso_local i8* @get_rel_name(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @selabel_lookup_raw(%struct.selabel_handle*, i32*, i8*, i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @sepgsql_object_relabel(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @SetSecurityLabel(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @PG_FINALLY(...) #1

declare dso_local i32 @freecon(i32) #1

declare dso_local i32 @PG_END_TRY(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
