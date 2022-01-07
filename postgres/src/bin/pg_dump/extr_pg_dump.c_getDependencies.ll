; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getDependencies.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getDependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"reading dependency data\00", align 1
@.str.1 = private unnamed_addr constant [109 x i8] c"SELECT classid, objid, refclassid, refobjid, deptype FROM pg_depend WHERE deptype != 'p' AND deptype != 'e'\0A\00", align 1
@.str.2 = private unnamed_addr constant [295 x i8] c"UNION ALL\0ASELECT 'pg_opfamily'::regclass AS classid, amopfamily AS objid, refclassid, refobjid, deptype FROM pg_depend d, pg_amop o WHERE deptype NOT IN ('p', 'e', 'i') AND classid = 'pg_amop'::regclass AND objid = o.oid AND NOT (refclassid = 'pg_opfamily'::regclass AND amopfamily = refobjid)\0A\00", align 1
@.str.3 = private unnamed_addr constant [303 x i8] c"UNION ALL\0ASELECT 'pg_opfamily'::regclass AS classid, amprocfamily AS objid, refclassid, refobjid, deptype FROM pg_depend d, pg_amproc p WHERE deptype NOT IN ('p', 'e', 'i') AND classid = 'pg_amproc'::regclass AND objid = p.oid AND NOT (refclassid = 'pg_opfamily'::regclass AND amprocfamily = refobjid)\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"ORDER BY 1,2\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"classid\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"objid\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"refclassid\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"refobjid\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"deptype\00", align 1
@DO_TABLE = common dso_local global i64 0, align 8
@DO_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @getDependencies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getDependencies(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_17__, align 8
  %15 = alloca %struct.TYPE_17__, align 8
  %16 = alloca i8, align 1
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %17 = call i32 @pg_log_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = call %struct.TYPE_15__* (...) @createPQExpBuffer()
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %3, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = call i32 @appendPQExpBufferStr(%struct.TYPE_15__* %19, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 80300
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = call i32 @appendPQExpBufferStr(%struct.TYPE_15__* %26, i8* getelementptr inbounds ([295 x i8], [295 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = call i32 @appendPQExpBufferStr(%struct.TYPE_15__* %28, i8* getelementptr inbounds ([303 x i8], [303 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %32 = call i32 @appendPQExpBufferStr(%struct.TYPE_15__* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %38 = call i32* @ExecuteSqlQuery(%struct.TYPE_18__* %33, i32 %36, i32 %37)
  store i32* %38, i32** %4, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @PQntuples(i32* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @PQfnumber(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 %42, i32* %7, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @PQfnumber(i32* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 %44, i32* %8, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @PQfnumber(i32* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  store i32 %46, i32* %9, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @PQfnumber(i32* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  store i32 %48, i32* %10, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @PQfnumber(i32* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i32 %50, i32* %11, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %12, align 8
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %157, %30
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %160

55:                                               ; preds = %51
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @PQgetvalue(i32* %56, i32 %57, i32 %58)
  %60 = call i8* @atooid(i8* %59)
  %61 = ptrtoint i8* %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i8* @PQgetvalue(i32* %63, i32 %64, i32 %65)
  %67 = call i8* @atooid(i8* %66)
  %68 = ptrtoint i8* %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store i64 %68, i64* %69, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i8* @PQgetvalue(i32* %70, i32 %71, i32 %72)
  %74 = call i8* @atooid(i8* %73)
  %75 = ptrtoint i8* %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  store i64 %75, i64* %76, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i8* @PQgetvalue(i32* %77, i32 %78, i32 %79)
  %81 = call i8* @atooid(i8* %80)
  %82 = ptrtoint i8* %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  store i64 %82, i64* %83, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i8* @PQgetvalue(i32* %84, i32 %85, i32 %86)
  %88 = load i8, i8* %87, align 1
  store i8 %88, i8* %16, align 1
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %90 = icmp eq %struct.TYPE_16__* %89, null
  br i1 %90, label %107, label %91

91:                                               ; preds = %55
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %95, %97
  br i1 %98, label %107, label %99

99:                                               ; preds = %91
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %103, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %99, %91, %55
  %108 = bitcast %struct.TYPE_17__* %14 to { i64, i64 }*
  %109 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %108, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call %struct.TYPE_16__* @findObjectByCatalogId(i64 %110, i64 %112)
  store %struct.TYPE_16__* %113, %struct.TYPE_16__** %12, align 8
  br label %114

114:                                              ; preds = %107, %99
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %116 = icmp eq %struct.TYPE_16__* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %157

118:                                              ; preds = %114
  %119 = bitcast %struct.TYPE_17__* %15 to { i64, i64 }*
  %120 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %119, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call %struct.TYPE_16__* @findObjectByCatalogId(i64 %121, i64 %123)
  store %struct.TYPE_16__* %124, %struct.TYPE_16__** %13, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %126 = icmp eq %struct.TYPE_16__* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %157

128:                                              ; preds = %118
  %129 = load i8, i8* %16, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 105
  br i1 %131, label %132, label %150

132:                                              ; preds = %128
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @DO_TABLE, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %150

138:                                              ; preds = %132
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @DO_TYPE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @addObjectDependency(%struct.TYPE_16__* %145, i32 %148)
  br label %156

150:                                              ; preds = %138, %132, %128
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @addObjectDependency(%struct.TYPE_16__* %151, i32 %154)
  br label %156

156:                                              ; preds = %150, %144
  br label %157

157:                                              ; preds = %156, %127, %117
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %51

160:                                              ; preds = %51
  %161 = load i32*, i32** %4, align 8
  %162 = call i32 @PQclear(i32* %161)
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %164 = call i32 @destroyPQExpBuffer(%struct.TYPE_15__* %163)
  ret void
}

declare dso_local i32 @pg_log_info(i8*) #1

declare dso_local %struct.TYPE_15__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_15__*, i8*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i8*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local %struct.TYPE_16__* @findObjectByCatalogId(i64, i64) #1

declare dso_local i32 @addObjectDependency(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
