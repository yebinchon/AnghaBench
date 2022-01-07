; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getOperators.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getOperators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__, i8*, i8*, i32 }
%struct.TYPE_13__ = type { i8*, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [121 x i8] c"SELECT tableoid, oid, oprname, oprnamespace, (%s oprowner) AS rolname, oprkind, oprcode::oid AS oprcode FROM pg_operator\00", align 1
@username_subquery = common dso_local global i32 0, align 4
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"oprname\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"oprnamespace\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"rolname\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"oprkind\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"oprcode\00", align 1
@DO_OPERATOR = common dso_local global i32 0, align 4
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"owner of operator \22%s\22 appears to be invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @getOperators(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = call %struct.TYPE_11__* (...) @createPQExpBuffer()
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %8, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = load i32, i32* @username_subquery, align 4
  %20 = call i32 @appendPQExpBuffer(%struct.TYPE_11__* %18, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %26 = call i32* @ExecuteSqlQuery(i32* %21, i32 %24, i32 %25)
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @PQntuples(i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 64
  %34 = trunc i64 %33 to i32
  %35 = call i64 @pg_malloc(i32 %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %9, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @PQfnumber(i32* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %38, i32* %10, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @PQfnumber(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %40, i32* %11, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @PQfnumber(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @PQfnumber(i32* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 %44, i32* %13, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @PQfnumber(i32* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 %46, i32* %14, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @PQfnumber(i32* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 %48, i32* %15, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @PQfnumber(i32* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 %50, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %183, %2
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %186

55:                                               ; preds = %51
  %56 = load i32, i32* @DO_OPERATOR, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 4
  store i32 %56, i32* %62, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32* @PQgetvalue(i32* %63, i32 %64, i32 %65)
  %67 = call i8* @atooid(i32* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  store i8* %67, i8** %74, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32* @PQgetvalue(i32* %75, i32 %76, i32 %77)
  %79 = call i8* @atooid(i32* %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  store i8* %79, i8** %86, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = call i32 @AssignDumpId(%struct.TYPE_13__* %91)
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32* @PQgetvalue(i32* %93, i32 %94, i32 %95)
  %97 = call i8* @pg_strdup(i32* %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  store i8* %97, i8** %103, align 8
  %104 = load i32*, i32** %3, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32* @PQgetvalue(i32* %105, i32 %106, i32 %107)
  %109 = call i8* @atooid(i32* %108)
  %110 = call i32 @findNamespace(i32* %104, i8* %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  store i32 %110, i32* %116, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %14, align 4
  %120 = call i32* @PQgetvalue(i32* %117, i32 %118, i32 %119)
  %121 = call i8* @pg_strdup(i32* %120)
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  store i8* %121, i8** %126, align 8
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %15, align 4
  %130 = call i32* @PQgetvalue(i32* %127, i32 %128, i32 %129)
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  store i32 %132, i32* %137, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %16, align 4
  %141 = call i32* @PQgetvalue(i32* %138, i32 %139, i32 %140)
  %142 = call i8* @atooid(i32* %141)
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  store i8* %142, i8** %147, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i32*, i32** %3, align 8
  %154 = call i32 @selectDumpableObject(%struct.TYPE_13__* %152, i32* %153)
  %155 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, %156
  store i32 %164, i32* %162, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = call i64 @strlen(i8* %170)
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %55
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @pg_log_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i8* %180)
  br label %182

182:                                              ; preds = %173, %55
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %7, align 4
  br label %51

186:                                              ; preds = %51
  %187 = load i32*, i32** %5, align 8
  %188 = call i32 @PQclear(i32* %187)
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %190 = call i32 @destroyPQExpBuffer(%struct.TYPE_11__* %189)
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  ret %struct.TYPE_12__* %191
}

declare dso_local %struct.TYPE_11__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32* @ExecuteSqlQuery(i32*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i32*) #1

declare dso_local i32* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_13__*) #1

declare dso_local i8* @pg_strdup(i32*) #1

declare dso_local i32 @findNamespace(i32*, i8*) #1

declare dso_local i32 @selectDumpableObject(%struct.TYPE_13__*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pg_log_warning(i8*, i8*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
