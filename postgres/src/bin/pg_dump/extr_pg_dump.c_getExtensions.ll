; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getExtensions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getExtensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i8*, i8*, i8*, i8*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [174 x i8] c"SELECT x.tableoid, x.oid, x.extname, n.nspname, x.extrelocatable, x.extversion, x.extconfig, x.extcondition FROM pg_extension x JOIN pg_namespace n ON n.oid = x.extnamespace\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"extname\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nspname\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"extrelocatable\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"extversion\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"extconfig\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"extcondition\00", align 1
@DO_EXTENSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @getExtensions(%struct.TYPE_17__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %6, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %25, 90100
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32*, i32** %5, align 8
  store i32 0, i32* %28, align 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %186

29:                                               ; preds = %2
  %30 = call %struct.TYPE_15__* (...) @createPQExpBuffer()
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %10, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %32 = call i32 @appendPQExpBufferStr(%struct.TYPE_15__* %31, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %38 = call i32* @ExecuteSqlQuery(%struct.TYPE_17__* %33, i32 %36, i32 %37)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @PQntuples(i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 72
  %44 = trunc i64 %43 to i32
  %45 = call i64 @pg_malloc(i32 %44)
  %46 = inttoptr i64 %45 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %46, %struct.TYPE_16__** %11, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @PQfnumber(i32* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %48, i32* %12, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @PQfnumber(i32* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %50, i32* %13, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @PQfnumber(i32* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %52, i32* %14, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @PQfnumber(i32* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %54, i32* %15, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @PQfnumber(i32* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 %56, i32* %16, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @PQfnumber(i32* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32 %58, i32* %17, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @PQfnumber(i32* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i32 %60, i32* %18, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @PQfnumber(i32* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store i32 %62, i32* %19, align 4
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %175, %29
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %178

67:                                               ; preds = %63
  %68 = load i32, i32* @DO_EXTENSION, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  store i32 %68, i32* %74, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i8* @PQgetvalue(i32* %75, i32 %76, i32 %77)
  %79 = call i8* @atooid(i8* %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store i8* %79, i8** %86, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i8* @PQgetvalue(i32* %87, i32 %88, i32 %89)
  %91 = call i8* @atooid(i8* %90)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  store i8* %91, i8** %98, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 5
  %104 = call i32 @AssignDumpId(%struct.TYPE_13__* %103)
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i8* @PQgetvalue(i32* %105, i32 %106, i32 %107)
  %109 = call i8* @pg_strdup(i8* %108)
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  store i8* %109, i8** %115, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %15, align 4
  %119 = call i8* @PQgetvalue(i32* %116, i32 %117, i32 %118)
  %120 = call i8* @pg_strdup(i8* %119)
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 4
  store i8* %120, i8** %125, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %16, align 4
  %129 = call i8* @PQgetvalue(i32* %126, i32 %127, i32 %128)
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 116
  %133 = zext i1 %132 to i32
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  store i32 %133, i32* %138, align 8
  %139 = load i32*, i32** %7, align 8
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %17, align 4
  %142 = call i8* @PQgetvalue(i32* %139, i32 %140, i32 %141)
  %143 = call i8* @pg_strdup(i8* %142)
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 3
  store i8* %143, i8** %148, align 8
  %149 = load i32*, i32** %7, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %18, align 4
  %152 = call i8* @PQgetvalue(i32* %149, i32 %150, i32 %151)
  %153 = call i8* @pg_strdup(i8* %152)
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  store i8* %153, i8** %158, align 8
  %159 = load i32*, i32** %7, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %19, align 4
  %162 = call i8* @PQgetvalue(i32* %159, i32 %160, i32 %161)
  %163 = call i8* @pg_strdup(i8* %162)
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  store i8* %163, i8** %168, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i64 %171
  %173 = load i32*, i32** %6, align 8
  %174 = call i32 @selectDumpableExtension(%struct.TYPE_16__* %172, i32* %173)
  br label %175

175:                                              ; preds = %67
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  br label %63

178:                                              ; preds = %63
  %179 = load i32*, i32** %7, align 8
  %180 = call i32 @PQclear(i32* %179)
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %182 = call i32 @destroyPQExpBuffer(%struct.TYPE_15__* %181)
  %183 = load i32, i32* %8, align 4
  %184 = load i32*, i32** %5, align 8
  store i32 %183, i32* %184, align 4
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %185, %struct.TYPE_16__** %3, align 8
  br label %186

186:                                              ; preds = %178, %27
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %187
}

declare dso_local %struct.TYPE_15__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_15__*, i8*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i8*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_13__*) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i32 @selectDumpableExtension(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
