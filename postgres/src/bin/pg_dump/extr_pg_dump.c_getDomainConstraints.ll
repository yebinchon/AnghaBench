; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getDomainConstraints.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getDomainConstraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_15__, %struct.TYPE_21__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i8, i32, i32, i32, i32, %struct.TYPE_16__, i64, i32, i8*, %struct.TYPE_19__*, i32* }
%struct.TYPE_16__ = type { i32, i32, i8*, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i8*, i8* }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [177 x i8] c"SELECT tableoid, oid, conname, pg_catalog.pg_get_constraintdef(oid) AS consrc, convalidated FROM pg_catalog.pg_constraint WHERE contypid = '%u'::pg_catalog.oid ORDER BY conname\00", align 1
@.str.1 = private unnamed_addr constant [185 x i8] c"SELECT tableoid, oid, conname, pg_catalog.pg_get_constraintdef(oid) AS consrc, true as convalidated FROM pg_catalog.pg_constraint WHERE contypid = '%u'::pg_catalog.oid ORDER BY conname\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"conname\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"consrc\00", align 1
@DO_CONSTRAINT = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, %struct.TYPE_19__*)* @getDomainConstraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getDomainConstraints(%struct.TYPE_22__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %15 = call %struct.TYPE_20__* (...) @createPQExpBuffer()
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %7, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %18, 90100
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @appendPQExpBuffer(%struct.TYPE_20__* %21, i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %36

28:                                               ; preds = %2
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @appendPQExpBuffer(%struct.TYPE_20__* %29, i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %28, %20
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %42 = call i32* @ExecuteSqlQuery(%struct.TYPE_22__* %37, i32 %40, i32 %41)
  store i32* %42, i32** %8, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @PQntuples(i32* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @PQfnumber(i32* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %46, i32* %9, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @PQfnumber(i32* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %48, i32* %10, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @PQfnumber(i32* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %50, i32* %11, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @PQfnumber(i32* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 104
  %56 = trunc i64 %55 to i32
  %57 = call i64 @pg_malloc(i32 %56)
  %58 = inttoptr i64 %57 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %58, %struct.TYPE_21__** %6, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 2
  store %struct.TYPE_21__* %62, %struct.TYPE_21__** %64, align 8
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %211, %36
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %214

69:                                               ; preds = %65
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i8* @PQgetvalue(i32* %70, i32 %71, i32 4)
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 116
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* @DO_CONSTRAINT, align 4
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 4
  store i32 %78, i32* %84, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i8* @PQgetvalue(i32* %85, i32 %86, i32 %87)
  %89 = call i8* @atooid(i8* %88)
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 1
  store i8* %89, i8** %96, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i8* @PQgetvalue(i32* %97, i32 %98, i32 %99)
  %101 = call i8* @atooid(i8* %100)
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  store i8* %101, i8** %108, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 5
  %114 = call i32 @AssignDumpId(%struct.TYPE_16__* %113)
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i8* @PQgetvalue(i32* %115, i32 %116, i32 %117)
  %119 = call i8* @pg_strdup(i8* %118)
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 2
  store i8* %119, i8** %125, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  store i32 %129, i32* %135, align 4
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 10
  store i32* null, i32** %140, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %145, i32 0, i32 9
  store %struct.TYPE_19__* %141, %struct.TYPE_19__** %146, align 8
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 0
  store i8 99, i8* %151, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* %12, align 4
  %155 = call i8* @PQgetvalue(i32* %152, i32 %153, i32 %154)
  %156 = call i8* @pg_strdup(i8* %155)
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 8
  store i8* %156, i8** %161, align 8
  %162 = load i32, i32* @InvalidOid, align 4
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 7
  store i32 %162, i32* %167, align 8
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 6
  store i64 0, i64* %172, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 1
  store i32 0, i32* %177, align 4
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 2
  store i32 0, i32* %182, align 8
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 3
  store i32 1, i32* %187, align 4
  %188 = load i32, i32* %14, align 4
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 4
  store i32 %191, i32* %196, align 8
  %197 = load i32, i32* %14, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %69
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 5
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @addObjectDependency(%struct.TYPE_15__* %201, i32 %208)
  br label %210

210:                                              ; preds = %199, %69
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %5, align 4
  br label %65

214:                                              ; preds = %65
  %215 = load i32*, i32** %8, align 8
  %216 = call i32 @PQclear(i32* %215)
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %218 = call i32 @destroyPQExpBuffer(%struct.TYPE_20__* %217)
  ret void
}

declare dso_local %struct.TYPE_20__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_20__*, i8*, i32) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i8* @atooid(i8*) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_16__*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @addObjectDependency(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
