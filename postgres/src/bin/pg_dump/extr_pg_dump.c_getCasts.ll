; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getCasts.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getCasts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_20__, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i8*, i8* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [106 x i8] c"SELECT tableoid, oid, castsource, casttarget, castfunc, castcontext, castmethod FROM pg_cast ORDER BY 3,4\00", align 1
@.str.1 = private unnamed_addr constant [154 x i8] c"SELECT tableoid, oid, castsource, casttarget, castfunc, castcontext, CASE WHEN castfunc = 0 THEN 'b' ELSE 'f' END AS castmethod FROM pg_cast ORDER BY 3,4\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"castsource\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"casttarget\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"castfunc\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"castcontext\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"castmethod\00", align 1
@DO_CAST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_26__* @getCasts(%struct.TYPE_27__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_24__, align 4
  %18 = alloca %struct.TYPE_23__*, align 8
  %19 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store i32* %1, i32** %4, align 8
  %20 = call %struct.TYPE_25__* (...) @createPQExpBuffer()
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %8, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 80400
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %27 = call i32 @appendPQExpBufferStr(%struct.TYPE_25__* %26, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0))
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %30 = call i32 @appendPQExpBufferStr(%struct.TYPE_25__* %29, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %37 = call i32* @ExecuteSqlQuery(%struct.TYPE_27__* %32, i32 %35, i32 %36)
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @PQntuples(i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 72
  %45 = trunc i64 %44 to i32
  %46 = call i64 @pg_malloc(i32 %45)
  %47 = inttoptr i64 %46 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %47, %struct.TYPE_26__** %9, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @PQfnumber(i32* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 %49, i32* %10, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @PQfnumber(i32* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %51, i32* %11, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @PQfnumber(i32* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 %53, i32* %12, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @PQfnumber(i32* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32 %55, i32* %13, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @PQfnumber(i32* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %57, i32* %14, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @PQfnumber(i32* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i32 %59, i32* %15, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @PQfnumber(i32* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store i32 %61, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %209, %31
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %212

66:                                               ; preds = %62
  %67 = load i32, i32* @DO_CAST, align 4
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 3
  store i32 %67, i32* %73, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i8** @PQgetvalue(i32* %74, i32 %75, i32 %76)
  %78 = call i8* @atooid(i8** %77)
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  store i8* %78, i8** %85, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i8** @PQgetvalue(i32* %86, i32 %87, i32 %88)
  %90 = call i8* @atooid(i8** %89)
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  store i8* %90, i8** %97, align 8
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  %103 = call i32 @AssignDumpId(%struct.TYPE_20__* %102)
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i8** @PQgetvalue(i32* %104, i32 %105, i32 %106)
  %108 = call i8* @atooid(i8** %107)
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 2
  store i8* %108, i8** %113, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i8** @PQgetvalue(i32* %114, i32 %115, i32 %116)
  %118 = call i8* @atooid(i8** %117)
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 1
  store i8* %118, i8** %123, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %14, align 4
  %127 = call i8** @PQgetvalue(i32* %124, i32 %125, i32 %126)
  %128 = call i8* @atooid(i8** %127)
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 5
  store i8* %128, i8** %133, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %15, align 4
  %137 = call i8** @PQgetvalue(i32* %134, i32 %135, i32 %136)
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 4
  store i8* %138, i8** %143, align 8
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %16, align 4
  %147 = call i8** @PQgetvalue(i32* %144, i32 %145, i32 %146)
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 3
  store i8* %148, i8** %153, align 8
  %154 = call i32 @initPQExpBuffer(%struct.TYPE_24__* %17)
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = call %struct.TYPE_23__* @findTypeByOid(i8* %160)
  store %struct.TYPE_23__* %161, %struct.TYPE_23__** %18, align 8
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = call %struct.TYPE_23__* @findTypeByOid(i8* %167)
  store %struct.TYPE_23__* %168, %struct.TYPE_23__** %19, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %170 = icmp ne %struct.TYPE_23__* %169, null
  br i1 %170, label %171, label %184

171:                                              ; preds = %66
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %173 = icmp ne %struct.TYPE_23__* %172, null
  br i1 %173, label %174, label %184

174:                                              ; preds = %171
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @appendPQExpBuffer(%struct.TYPE_24__* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %178, i32 %182)
  br label %184

184:                                              ; preds = %174, %171, %66
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 1
  store i32 %186, i32* %192, align 4
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i64 %195
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %198 = call i32 @selectDumpableCast(%struct.TYPE_26__* %196, %struct.TYPE_27__* %197)
  %199 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %200 = xor i32 %199, -1
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = and i32 %207, %200
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %184
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %7, align 4
  br label %62

212:                                              ; preds = %62
  %213 = load i32*, i32** %5, align 8
  %214 = call i32 @PQclear(i32* %213)
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %216 = call i32 @destroyPQExpBuffer(%struct.TYPE_25__* %215)
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  ret %struct.TYPE_26__* %217
}

declare dso_local %struct.TYPE_25__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_25__*, i8*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i8**) #1

declare dso_local i8** @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_20__*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @findTypeByOid(i8*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_24__*, i8*, i32, i32) #1

declare dso_local i32 @selectDumpableCast(%struct.TYPE_26__*, %struct.TYPE_27__*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
