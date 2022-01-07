; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getTSDictionaries.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getTSDictionaries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_19__, i32*, i8*, i8* }
%struct.TYPE_19__ = type { i32, i32, i8*, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [119 x i8] c"SELECT tableoid, oid, dictname, dictnamespace, (%s dictowner) AS rolname, dicttemplate, dictinitoption FROM pg_ts_dict\00", align 1
@username_subquery = common dso_local global i32 0, align 4
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"dictname\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"dictnamespace\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"rolname\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"dictinitoption\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"dicttemplate\00", align 1
@DO_TSDICT = common dso_local global i32 0, align 4
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @getTSDictionaries(%struct.TYPE_18__* %0, i32* %1) #0 {
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
  %17 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 80300
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  store i32 0, i32* %23, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %195

24:                                               ; preds = %2
  %25 = call %struct.TYPE_17__* (...) @createPQExpBuffer()
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %9, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %27 = load i32, i32* @username_subquery, align 4
  %28 = call i32 @appendPQExpBuffer(%struct.TYPE_17__* %26, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %34 = call i32* @ExecuteSqlQuery(%struct.TYPE_18__* %29, i32 %32, i32 %33)
  store i32* %34, i32** %6, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @PQntuples(i32* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 64
  %42 = trunc i64 %41 to i32
  %43 = call i64 @pg_malloc(i32 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %10, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @PQfnumber(i32* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %11, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @PQfnumber(i32* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %48, i32* %12, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @PQfnumber(i32* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 %50, i32* %13, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @PQfnumber(i32* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 %52, i32* %14, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @PQfnumber(i32* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 %54, i32* %15, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @PQfnumber(i32* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i32 %56, i32* %17, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @PQfnumber(i32* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32 %58, i32* %16, align 4
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %186, %24
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %189

63:                                               ; preds = %59
  %64 = load i32, i32* @DO_TSDICT, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 4
  store i32 %64, i32* %70, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @PQgetvalue(i32* %71, i32 %72, i32 %73)
  %75 = call i8* @atooid(i32 %74)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  store i8* %75, i8** %82, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @PQgetvalue(i32* %83, i32 %84, i32 %85)
  %87 = call i8* @atooid(i32 %86)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  store i8* %87, i8** %94, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = call i32 @AssignDumpId(%struct.TYPE_19__* %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @PQgetvalue(i32* %101, i32 %102, i32 %103)
  %105 = call i8* @pg_strdup(i32 %104)
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 2
  store i8* %105, i8** %111, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @PQgetvalue(i32* %113, i32 %114, i32 %115)
  %117 = call i8* @atooid(i32 %116)
  %118 = call i32 @findNamespace(%struct.TYPE_18__* %112, i8* %117)
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  store i32 %118, i32* %124, align 4
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %15, align 4
  %128 = call i32 @PQgetvalue(i32* %125, i32 %126, i32 %127)
  %129 = call i8* @pg_strdup(i32 %128)
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 3
  store i8* %129, i8** %134, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @PQgetvalue(i32* %135, i32 %136, i32 %137)
  %139 = call i8* @atooid(i32 %138)
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  store i8* %139, i8** %144, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %17, align 4
  %148 = call i64 @PQgetisnull(i32* %145, i32 %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %63
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  store i32* null, i32** %155, align 8
  br label %168

156:                                              ; preds = %63
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %17, align 4
  %160 = call i32 @PQgetvalue(i32* %157, i32 %158, i32 %159)
  %161 = call i8* @pg_strdup(i32 %160)
  %162 = bitcast i8* %161 to i32*
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %164 = load i32, i32* %8, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  store i32* %162, i32** %167, align 8
  br label %168

168:                                              ; preds = %156, %150
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %175 = call i32 @selectDumpableObject(%struct.TYPE_19__* %173, %struct.TYPE_18__* %174)
  %176 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %177 = xor i32 %176, -1
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = and i32 %184, %177
  store i32 %185, i32* %183, align 8
  br label %186

186:                                              ; preds = %168
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %59

189:                                              ; preds = %59
  %190 = load i32*, i32** %6, align 8
  %191 = call i32 @PQclear(i32* %190)
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %193 = call i32 @destroyPQExpBuffer(%struct.TYPE_17__* %192)
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %194, %struct.TYPE_16__** %3, align 8
  br label %195

195:                                              ; preds = %189, %22
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %196
}

declare dso_local %struct.TYPE_17__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_19__*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i32 @findNamespace(%struct.TYPE_18__*, i8*) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @selectDumpableObject(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
