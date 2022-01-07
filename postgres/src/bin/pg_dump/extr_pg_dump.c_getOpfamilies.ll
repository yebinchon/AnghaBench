; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getOpfamilies.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_getOpfamilies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_19__, i8* }
%struct.TYPE_19__ = type { i8*, i32, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [87 x i8] c"SELECT tableoid, oid, opfname, opfnamespace, (%s opfowner) AS rolname FROM pg_opfamily\00", align 1
@username_subquery = common dso_local global i32 0, align 4
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tableoid\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"oid\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"opfname\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"opfnamespace\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"rolname\00", align 1
@DO_OPFAMILY = common dso_local global i32 0, align 4
@DUMP_COMPONENT_ACL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"owner of operator family \22%s\22 appears to be invalid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @getOpfamilies(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 80300
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  store i32 0, i32* %21, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %173

22:                                               ; preds = %2
  %23 = call %struct.TYPE_16__* (...) @createPQExpBuffer()
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %9, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %25 = load i32, i32* @username_subquery, align 4
  %26 = call i32 @appendPQExpBuffer(%struct.TYPE_16__* %24, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
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
  %39 = mul i64 %38, 48
  %40 = trunc i64 %39 to i32
  %41 = call i64 @pg_malloc(i32 %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %42, %struct.TYPE_17__** %10, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @PQfnumber(i32* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %44, i32* %11, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @PQfnumber(i32* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %46, i32* %12, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @PQfnumber(i32* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 %48, i32* %13, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @PQfnumber(i32* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 %50, i32* %14, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @PQfnumber(i32* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store i32 %52, i32* %15, align 4
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %164, %22
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %167

57:                                               ; preds = %53
  %58 = load i32, i32* @DO_OPFAMILY, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 4
  store i32 %58, i32* %64, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @PQgetvalue(i32* %65, i32 %66, i32 %67)
  %69 = call i8* @atooid(i32 %68)
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  store i8* %69, i8** %76, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @PQgetvalue(i32* %77, i32 %78, i32 %79)
  %81 = call i8* @atooid(i32 %80)
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  store i8* %81, i8** %88, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = call i32 @AssignDumpId(%struct.TYPE_19__* %93)
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i32 @PQgetvalue(i32* %95, i32 %96, i32 %97)
  %99 = call i8* @pg_strdup(i32 %98)
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  store i8* %99, i8** %105, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @PQgetvalue(i32* %107, i32 %108, i32 %109)
  %111 = call i8* @atooid(i32 %110)
  %112 = call i32 @findNamespace(%struct.TYPE_18__* %106, i8* %111)
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 2
  store i32 %112, i32* %118, align 4
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @PQgetvalue(i32* %119, i32 %120, i32 %121)
  %123 = call i8* @pg_strdup(i32 %122)
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  store i8* %123, i8** %128, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %135 = call i32 @selectDumpableObject(%struct.TYPE_19__* %133, %struct.TYPE_18__* %134)
  %136 = load i32, i32* @DUMP_COMPONENT_ACL, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = and i32 %144, %137
  store i32 %145, i32* %143, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = call i64 @strlen(i8* %151)
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %57
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @pg_log_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* %161)
  br label %163

163:                                              ; preds = %154, %57
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  br label %53

167:                                              ; preds = %53
  %168 = load i32*, i32** %6, align 8
  %169 = call i32 @PQclear(i32* %168)
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %171 = call i32 @destroyPQExpBuffer(%struct.TYPE_16__* %170)
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %172, %struct.TYPE_17__** %3, align 8
  br label %173

173:                                              ; preds = %167, %20
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %174
}

declare dso_local %struct.TYPE_16__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_19__*) #1

declare dso_local i8* @pg_strdup(i32) #1

declare dso_local i32 @findNamespace(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @selectDumpableObject(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pg_log_warning(i8*, i8*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
