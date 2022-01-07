; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getTSTemplates.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getTSTemplates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_19__, i8*, i8* }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [98 x i8] c"SELECT tableoid, oid, tmplname, tmplnamespace, tmplinit::oid, tmpllexize::oid FROM pg_ts_template\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"tmplname\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"tmplnamespace\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"tmplinit\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"tmpllexize\00", align 1
@DO_TSTEMPLATE = common dso_local global i32 0, align 4
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @getTSTemplates(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 80300
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  store i32 0, i32* %22, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %167

23:                                               ; preds = %2
  %24 = call %struct.TYPE_17__* (...) @createPQExpBuffer()
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %9, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %26 = call i32 @appendPQExpBufferStr(%struct.TYPE_17__* %25, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %32 = call i32* @ExecuteSqlQuery(%struct.TYPE_18__* %27, i32 %30, i32 %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @PQntuples(i32* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 56
  %40 = trunc i64 %39 to i32
  %41 = call i64 @pg_malloc(i32 %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %10, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @PQfnumber(i32* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %11, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @PQfnumber(i32* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %46, i32* %12, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @PQfnumber(i32* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %48, i32* %13, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @PQfnumber(i32* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 %50, i32* %14, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @PQfnumber(i32* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i32 %52, i32* %15, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @PQfnumber(i32* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32 %54, i32* %16, align 4
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %158, %23
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %161

59:                                               ; preds = %55
  %60 = load i32, i32* @DO_TSTEMPLATE, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 4
  store i32 %60, i32* %66, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @PQgetvalue(i32* %67, i32 %68, i32 %69)
  %71 = call i8* @atooid(i32 %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  store i8* %71, i8** %78, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @PQgetvalue(i32* %79, i32 %80, i32 %81)
  %83 = call i8* @atooid(i32 %82)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  store i8* %83, i8** %90, align 8
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = call i32 @AssignDumpId(%struct.TYPE_19__* %95)
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @PQgetvalue(i32* %97, i32 %98, i32 %99)
  %101 = call i32 @pg_strdup(i32 %100)
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 2
  store i32 %101, i32* %107, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @PQgetvalue(i32* %109, i32 %110, i32 %111)
  %113 = call i8* @atooid(i32 %112)
  %114 = call i32 @findNamespace(%struct.TYPE_18__* %108, i8* %113)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  store i32 %114, i32* %120, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @PQgetvalue(i32* %121, i32 %122, i32 %123)
  %125 = call i8* @atooid(i32 %124)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  store i8* %125, i8** %130, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @PQgetvalue(i32* %131, i32 %132, i32 %133)
  %135 = call i8* @atooid(i32 %134)
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  store i8* %135, i8** %140, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %147 = call i32 @selectDumpableObject(%struct.TYPE_19__* %145, %struct.TYPE_18__* %146)
  %148 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %149 = xor i32 %148, -1
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, %149
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %59
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %55

161:                                              ; preds = %55
  %162 = load i32*, i32** %6, align 8
  %163 = call i32 @PQclear(i32* %162)
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %165 = call i32 @destroyPQExpBuffer(%struct.TYPE_17__* %164)
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %166, %struct.TYPE_16__** %3, align 8
  br label %167

167:                                              ; preds = %161, %21
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %168
}

declare dso_local %struct.TYPE_17__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_17__*, i8*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_19__*) #1

declare dso_local i32 @pg_strdup(i32) #1

declare dso_local i32 @findNamespace(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @selectDumpableObject(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
