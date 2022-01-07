; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_dumpTable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_dumpTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i64 }
%struct.TYPE_28__ = type { i64, i8*, i8*, i8*, i8*, i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i8*, %struct.TYPE_26__*, i32, %struct.TYPE_24__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_29__ = type { i32 }

@RELKIND_SEQUENCE = common dso_local global i64 0, align 8
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"SEQUENCE\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"TABLE\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"at.attacl\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"c.relowner\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"'c'\00", align 1
@.str.5 = private unnamed_addr constant [486 x i8] c"SELECT at.attname, %s AS attacl, %s AS rattacl, %s AS initattacl, %s AS initrattacl FROM pg_catalog.pg_attribute at JOIN pg_catalog.pg_class c ON (at.attrelid = c.oid) LEFT JOIN pg_catalog.pg_init_privs pip ON (at.attrelid = pip.objoid AND pip.classoid = 'pg_catalog.pg_class'::pg_catalog.regclass AND at.attnum = pip.objsubid) WHERE at.attrelid = '%u'::pg_catalog.oid AND NOT at.attisdropped AND (%s IS NOT NULL OR %s IS NOT NULL OR %s IS NOT NULL OR %s IS NOT NULL)ORDER BY at.attnum\00", align 1
@.str.6 = private unnamed_addr constant [208 x i8] c"SELECT attname, attacl, NULL as rattacl, NULL AS initattacl, NULL AS initrattacl FROM pg_catalog.pg_attribute WHERE attrelid = '%u'::pg_catalog.oid AND NOT attisdropped AND attacl IS NOT NULL ORDER BY attnum\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_31__*, %struct.TYPE_28__*)* @dumpTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpTable(%struct.TYPE_31__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca %struct.TYPE_29__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %3, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %4, align 8
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %22, align 8
  store %struct.TYPE_30__* %23, %struct.TYPE_30__** %5, align 8
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %2
  br label %256

35:                                               ; preds = %29
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RELKIND_SEQUENCE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %44 = call i32 @dumpSequence(%struct.TYPE_31__* %42, %struct.TYPE_28__* %43)
  br label %49

45:                                               ; preds = %35
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %48 = call i32 @dumpTableSchema(%struct.TYPE_31__* %46, %struct.TYPE_28__* %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @fmtId(i8* %53)
  %55 = call i8* @pg_strdup(i32 %54)
  store i8* %55, i8** %6, align 8
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %106

63:                                               ; preds = %49
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RELKIND_SEQUENCE, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %70, i8** %7, align 8
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 4
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dumpACL(%struct.TYPE_31__* %71, i32 %104, i32 %78, i8* %79, i8* %80, i8* null, i32 %87, i32 %90, i8* %93, i8* %96, i8* %99, i8* %102)
  br label %106

106:                                              ; preds = %63, %49
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sge i32 %109, 80400
  br i1 %110, label %111, label %253

111:                                              ; preds = %106
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %253

119:                                              ; preds = %111
  %120 = call %struct.TYPE_29__* (...) @createPQExpBuffer()
  store %struct.TYPE_29__* %120, %struct.TYPE_29__** %8, align 8
  %121 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp sge i32 %123, 90600
  br i1 %124, label %125, label %177

125:                                              ; preds = %119
  %126 = call %struct.TYPE_29__* (...) @createPQExpBuffer()
  store %struct.TYPE_29__* %126, %struct.TYPE_29__** %11, align 8
  %127 = call %struct.TYPE_29__* (...) @createPQExpBuffer()
  store %struct.TYPE_29__* %127, %struct.TYPE_29__** %12, align 8
  %128 = call %struct.TYPE_29__* (...) @createPQExpBuffer()
  store %struct.TYPE_29__* %128, %struct.TYPE_29__** %13, align 8
  %129 = call %struct.TYPE_29__* (...) @createPQExpBuffer()
  store %struct.TYPE_29__* %129, %struct.TYPE_29__** %14, align 8
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @buildACLQueries(%struct.TYPE_29__* %130, %struct.TYPE_29__* %131, %struct.TYPE_29__* %132, %struct.TYPE_29__* %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 6
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (%struct.TYPE_29__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_29__* %138, i8* getelementptr inbounds ([486 x i8], [486 x i8]* @.str.5, i64 0, i64 0), i32 %141, i32 %144, i32 %147, i32 %150, i32 %155, i32 %158, i32 %161, i32 %164, i32 %167)
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %170 = call i32 @destroyPQExpBuffer(%struct.TYPE_29__* %169)
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %172 = call i32 @destroyPQExpBuffer(%struct.TYPE_29__* %171)
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %174 = call i32 @destroyPQExpBuffer(%struct.TYPE_29__* %173)
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %14, align 8
  %176 = call i32 @destroyPQExpBuffer(%struct.TYPE_29__* %175)
  br label %185

177:                                              ; preds = %119
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 6
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (%struct.TYPE_29__*, i8*, i32, ...) @appendPQExpBuffer(%struct.TYPE_29__* %178, i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.6, i64 0, i64 0), i32 %183)
  br label %185

185:                                              ; preds = %177, %125
  %186 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %191 = call i32* @ExecuteSqlQuery(%struct.TYPE_31__* %186, i32 %189, i32 %190)
  store i32* %191, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %192

192:                                              ; preds = %245, %185
  %193 = load i32, i32* %10, align 4
  %194 = load i32*, i32** %9, align 8
  %195 = call i32 @PQntuples(i32* %194)
  %196 = icmp slt i32 %193, %195
  br i1 %196, label %197, label %248

197:                                              ; preds = %192
  %198 = load i32*, i32** %9, align 8
  %199 = load i32, i32* %10, align 4
  %200 = call i8* @PQgetvalue(i32* %198, i32 %199, i32 0)
  store i8* %200, i8** %15, align 8
  %201 = load i32*, i32** %9, align 8
  %202 = load i32, i32* %10, align 4
  %203 = call i8* @PQgetvalue(i32* %201, i32 %202, i32 1)
  store i8* %203, i8** %16, align 8
  %204 = load i32*, i32** %9, align 8
  %205 = load i32, i32* %10, align 4
  %206 = call i8* @PQgetvalue(i32* %204, i32 %205, i32 2)
  store i8* %206, i8** %17, align 8
  %207 = load i32*, i32** %9, align 8
  %208 = load i32, i32* %10, align 4
  %209 = call i8* @PQgetvalue(i32* %207, i32 %208, i32 3)
  store i8* %209, i8** %18, align 8
  %210 = load i32*, i32** %9, align 8
  %211 = load i32, i32* %10, align 4
  %212 = call i8* @PQgetvalue(i32* %210, i32 %211, i32 4)
  store i8* %212, i8** %19, align 8
  %213 = load i8*, i8** %15, align 8
  %214 = call i32 @fmtId(i8* %213)
  %215 = call i8* @pg_strdup(i32 %214)
  store i8* %215, i8** %20, align 8
  %216 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %217, i32 0, i32 6
  %219 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 6
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = load i8*, i8** %6, align 8
  %225 = load i8*, i8** %20, align 8
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 6
  %228 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = load i8*, i8** %16, align 8
  %237 = load i8*, i8** %17, align 8
  %238 = load i8*, i8** %18, align 8
  %239 = load i8*, i8** %19, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @dumpACL(%struct.TYPE_31__* %216, i32 %241, i32 %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %224, i8* %225, i32 %232, i32 %235, i8* %236, i8* %237, i8* %238, i8* %239)
  %243 = load i8*, i8** %20, align 8
  %244 = call i32 @free(i8* %243)
  br label %245

245:                                              ; preds = %197
  %246 = load i32, i32* %10, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %10, align 4
  br label %192

248:                                              ; preds = %192
  %249 = load i32*, i32** %9, align 8
  %250 = call i32 @PQclear(i32* %249)
  %251 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %252 = call i32 @destroyPQExpBuffer(%struct.TYPE_29__* %251)
  br label %253

253:                                              ; preds = %248, %111, %106
  %254 = load i8*, i8** %6, align 8
  %255 = call i32 @free(i8* %254)
  br label %256

256:                                              ; preds = %253, %34
  ret void
}

declare dso_local i32 @dumpSequence(%struct.TYPE_31__*, %struct.TYPE_28__*) #1

declare dso_local i32 @dumpTableSchema(%struct.TYPE_31__*, %struct.TYPE_28__*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i32 @fmtId(i8*) #1

declare dso_local i32 @dumpACL(%struct.TYPE_31__*, i32, i32, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_29__* @createPQExpBuffer(...) #1

declare dso_local i32 @buildACLQueries(%struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_29__*, i8*, i32, ...) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_29__*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
