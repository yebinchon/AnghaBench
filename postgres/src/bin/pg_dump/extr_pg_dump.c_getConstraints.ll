; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getConstraints.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getConstraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32 }
%struct.TYPE_41__ = type { i64, i32, %struct.TYPE_28__*, %struct.TYPE_37__, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_40__, %struct.TYPE_39__ }
%struct.TYPE_40__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_26__* }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_37__ = type { i32, %struct.TYPE_36__*, %struct.TYPE_34__, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_30__ = type { float, i32, i32, i32, i32, %struct.TYPE_33__, i8*, i64, i8*, i32*, %struct.TYPE_41__* }
%struct.TYPE_33__ = type { %struct.TYPE_36__*, i8*, %struct.TYPE_35__, i32 }
%struct.TYPE_35__ = type { i8*, i8* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_29__ = type { i32 }

@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@DUMP_COMPONENT_DEFINITION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"reading foreign key constraints for table \22%s.%s\22\00", align 1
@.str.1 = private unnamed_addr constant [205 x i8] c"SELECT tableoid, oid, conname, confrelid, conindid, pg_catalog.pg_get_constraintdef(oid) AS condef FROM pg_catalog.pg_constraint WHERE conrelid = '%u'::pg_catalog.oid AND conparentid = 0 AND contype = 'f'\00", align 1
@.str.2 = private unnamed_addr constant [190 x i8] c"SELECT tableoid, oid, conname, confrelid, 0 as conindid, pg_catalog.pg_get_constraintdef(oid) AS condef FROM pg_catalog.pg_constraint WHERE conrelid = '%u'::pg_catalog.oid AND contype = 'f'\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"conname\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"confrelid\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"conindid\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"condef\00", align 1
@DO_FK_CONSTRAINT = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getConstraints(%struct.TYPE_31__* %0, %struct.TYPE_41__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_41__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_41__*, align 8
  %20 = alloca %struct.TYPE_41__*, align 8
  %21 = alloca %struct.TYPE_28__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_41__* %1, %struct.TYPE_41__** %5, align 8
  store i32 %2, i32* %6, align 4
  %25 = call %struct.TYPE_27__* (...) @createPQExpBuffer()
  store %struct.TYPE_27__* %25, %struct.TYPE_27__** %10, align 8
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %330, %3
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %333

30:                                               ; preds = %26
  %31 = load %struct.TYPE_41__*, %struct.TYPE_41__** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %31, i64 %33
  store %struct.TYPE_41__* %34, %struct.TYPE_41__** %19, align 8
  %35 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %36 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %30
  %40 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %41 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %39, %30
  %46 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @DUMP_COMPONENT_DEFINITION, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45, %39
  br label %330

54:                                               ; preds = %45
  %55 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_36__*, %struct.TYPE_36__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pg_log_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %65)
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %68 = call i32 @resetPQExpBuffer(%struct.TYPE_27__* %67)
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %71, 110000
  br i1 %72, label %73, label %81

73:                                               ; preds = %54
  %74 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %75 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %76 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @appendPQExpBuffer(%struct.TYPE_27__* %74, i8* getelementptr inbounds ([205 x i8], [205 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %89

81:                                               ; preds = %54
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %83 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %84 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @appendPQExpBuffer(%struct.TYPE_27__* %82, i8* getelementptr inbounds ([190 x i8], [190 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %81, %73
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %95 = call i32* @ExecuteSqlQuery(%struct.TYPE_31__* %90, i32 %93, i32 %94)
  store i32* %95, i32** %11, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @PQntuples(i32* %96)
  store i32 %97, i32* %18, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = call i32 @PQfnumber(i32* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %99, i32* %12, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @PQfnumber(i32* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 %101, i32* %13, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = call i32 @PQfnumber(i32* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 %103, i32* %14, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @PQfnumber(i32* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %105, i32* %15, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 @PQfnumber(i32* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i32 %107, i32* %16, align 4
  %108 = load i32*, i32** %11, align 8
  %109 = call i32 @PQfnumber(i32* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %18, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 %111, 104
  %113 = trunc i64 %112 to i32
  %114 = call i64 @pg_malloc(i32 %113)
  %115 = inttoptr i64 %114 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %115, %struct.TYPE_30__** %9, align 8
  store i32 0, i32* %8, align 4
  br label %116

116:                                              ; preds = %324, %89
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %18, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %327

120:                                              ; preds = %116
  %121 = load i32, i32* @DO_FK_CONSTRAINT, align 4
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %126, i32 0, i32 3
  store i32 %121, i32* %127, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @PQgetvalue(i32* %128, i32 %129, i32 %130)
  %132 = call i8* @atooid(i32 %131)
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %138, i32 0, i32 1
  store i8* %132, i8** %139, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @PQgetvalue(i32* %140, i32 %141, i32 %142)
  %144 = call i8* @atooid(i32 %143)
  %145 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %150, i32 0, i32 0
  store i8* %144, i8** %151, align 8
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 5
  %157 = call i32 @AssignDumpId(%struct.TYPE_33__* %156)
  %158 = load i32*, i32** %11, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @PQgetvalue(i32* %158, i32 %159, i32 %160)
  %162 = call i8* @pg_strdup(i32 %161)
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %167, i32 0, i32 1
  store i8* %162, i8** %168, align 8
  %169 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %170 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_36__*, %struct.TYPE_36__** %171, align 8
  %173 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %177, i32 0, i32 0
  store %struct.TYPE_36__* %172, %struct.TYPE_36__** %178, align 8
  %179 = load %struct.TYPE_41__*, %struct.TYPE_41__** %19, align 8
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 10
  store %struct.TYPE_41__* %179, %struct.TYPE_41__** %184, align 8
  %185 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 9
  store i32* null, i32** %189, align 8
  %190 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %193, i32 0, i32 0
  store float 1.020000e+02, float* %194, align 8
  %195 = load i32*, i32** %11, align 8
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* %17, align 4
  %198 = call i32 @PQgetvalue(i32* %195, i32 %196, i32 %197)
  %199 = call i8* @pg_strdup(i32 %198)
  %200 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 8
  store i8* %199, i8** %204, align 8
  %205 = load i32*, i32** %11, align 8
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* %15, align 4
  %208 = call i32 @PQgetvalue(i32* %205, i32 %206, i32 %207)
  %209 = call i8* @atooid(i32 %208)
  %210 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %213, i32 0, i32 6
  store i8* %209, i8** %214, align 8
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %218, i32 0, i32 7
  store i64 0, i64* %219, align 8
  %220 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %223, i32 0, i32 1
  store i32 0, i32* %224, align 4
  %225 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %226 = load i32, i32* %8, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %228, i32 0, i32 2
  store i32 0, i32* %229, align 8
  %230 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %233, i32 0, i32 3
  store i32 1, i32* %234, align 4
  %235 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %238, i32 0, i32 4
  store i32 1, i32* %239, align 8
  %240 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %241 = load i32, i32* %8, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %243, i32 0, i32 6
  %245 = load i8*, i8** %244, align 8
  %246 = call %struct.TYPE_41__* @findTableByOid(i8* %245)
  store %struct.TYPE_41__* %246, %struct.TYPE_41__** %20, align 8
  %247 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %248 = icmp ne %struct.TYPE_41__* %247, null
  br i1 %248, label %249, label %323

249:                                              ; preds = %120
  %250 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %251 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %323

255:                                              ; preds = %249
  %256 = load i32*, i32** %11, align 8
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* %16, align 4
  %259 = call i32 @PQgetvalue(i32* %256, i32 %257, i32 %258)
  %260 = call i8* @atooid(i32 %259)
  %261 = ptrtoint i8* %260 to i64
  store i64 %261, i64* %22, align 8
  %262 = load i64, i64* %22, align 8
  %263 = load i64, i64* @InvalidOid, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %322

265:                                              ; preds = %255
  store i32 0, i32* %23, align 4
  br label %266

266:                                              ; preds = %318, %265
  %267 = load i32, i32* %23, align 4
  %268 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %269 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = icmp slt i32 %267, %270
  br i1 %271, label %272, label %321

272:                                              ; preds = %266
  %273 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %274 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %273, i32 0, i32 2
  %275 = load %struct.TYPE_28__*, %struct.TYPE_28__** %274, align 8
  %276 = load i32, i32* %23, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* %22, align 8
  %284 = icmp ne i64 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %272
  br label %318

286:                                              ; preds = %272
  %287 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %288 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %287, i32 0, i32 2
  %289 = load %struct.TYPE_28__*, %struct.TYPE_28__** %288, align 8
  %290 = load i32, i32* %23, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %289, i64 %291
  store %struct.TYPE_28__* %292, %struct.TYPE_28__** %21, align 8
  %293 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %294 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_26__*, %struct.TYPE_26__** %295, align 8
  store %struct.TYPE_26__* %296, %struct.TYPE_26__** %24, align 8
  br label %297

297:                                              ; preds = %313, %286
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %299 = icmp ne %struct.TYPE_26__* %298, null
  br i1 %299, label %300, label %317

300:                                              ; preds = %297
  %301 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %302 = load i32, i32* %8, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %304, i32 0, i32 5
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %307 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = inttoptr i64 %308 to %struct.TYPE_29__*
  %310 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @addObjectDependency(%struct.TYPE_33__* %305, i32 %311)
  br label %313

313:                                              ; preds = %300
  %314 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %315 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_26__*, %struct.TYPE_26__** %315, align 8
  store %struct.TYPE_26__* %316, %struct.TYPE_26__** %24, align 8
  br label %297

317:                                              ; preds = %297
  br label %321

318:                                              ; preds = %285
  %319 = load i32, i32* %23, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %23, align 4
  br label %266

321:                                              ; preds = %317, %266
  br label %322

322:                                              ; preds = %321, %255
  br label %323

323:                                              ; preds = %322, %249, %120
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %8, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %8, align 4
  br label %116

327:                                              ; preds = %116
  %328 = load i32*, i32** %11, align 8
  %329 = call i32 @PQclear(i32* %328)
  br label %330

330:                                              ; preds = %327, %53
  %331 = load i32, i32* %7, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %7, align 4
  br label %26

333:                                              ; preds = %26
  %334 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %335 = call i32 @destroyPQExpBuffer(%struct.TYPE_27__* %334)
  ret void
}

declare dso_local %struct.TYPE_27__* @createPQExpBuffer(...) #1

declare dso_local i32 @pg_log_info(i8*, i32, i32) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_27__*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_27__*, i8*, i32) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i8* @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_33__*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local %struct.TYPE_41__* @findTableByOid(i8*) #1

declare dso_local i32 @addObjectDependency(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
