; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_describeOneTSConfig.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_describe.c_describeOneTSConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32*, i32, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@pset = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str = private unnamed_addr constant [584 x i8] c"SELECT\0A  ( SELECT t.alias FROM\0A    pg_catalog.ts_token_type(c.cfgparser) AS t\0A    WHERE t.tokid = m.maptokentype ) AS \22%s\22,\0A  pg_catalog.btrim(\0A    ARRAY( SELECT mm.mapdict::pg_catalog.regdictionary\0A           FROM pg_catalog.pg_ts_config_map AS mm\0A           WHERE mm.mapcfg = m.mapcfg AND mm.maptokentype = m.maptokentype\0A           ORDER BY mapcfg, maptokentype, mapseqno\0A    ) :: pg_catalog.text,\0A  '{}') AS \22%s\22\0AFROM pg_catalog.pg_ts_config AS c, pg_catalog.pg_ts_config_map AS m\0AWHERE c.oid = '%s' AND m.mapcfg = c.oid\0AGROUP BY m.mapcfg, m.maptokentype, c.cfgparser\0AORDER BY 1;\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Token\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Dictionaries\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Text search configuration \22%s.%s\22\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Text search configuration \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0AParser: \22%s.%s\22\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"\0AParser: \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i8*)* @describeOneTSConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @describeOneTSConfig(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_12__, align 4
  %13 = alloca %struct.TYPE_12__, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_11__, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = bitcast %struct.TYPE_11__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.TYPE_11__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 2) to i8*), i64 32, i1 false)
  %17 = call i32 @initPQExpBuffer(%struct.TYPE_12__* %12)
  %18 = call i32 @gettext_noop(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @gettext_noop(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @printfPQExpBuffer(%struct.TYPE_12__* %12, i8* getelementptr inbounds ([584 x i8], [584 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i8* %20)
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @PSQLexec(i32 %23)
  store i32* %24, i32** %14, align 8
  %25 = call i32 @termPQExpBuffer(%struct.TYPE_12__* %12)
  %26 = load i32*, i32** %14, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %70

29:                                               ; preds = %5
  %30 = call i32 @initPQExpBuffer(%struct.TYPE_12__* %13)
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @appendPQExpBuffer(%struct.TYPE_12__* %13, i32 %34, i8* %35, i8* %36)
  br label %42

38:                                               ; preds = %29
  %39 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @appendPQExpBuffer(%struct.TYPE_12__* %13, i32 %39, i8* %40)
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = call i32 @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @appendPQExpBuffer(%struct.TYPE_12__* %13, i32 %46, i8* %47, i8* %48)
  br label %54

50:                                               ; preds = %42
  %51 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @appendPQExpBuffer(%struct.TYPE_12__* %13, i32 %51, i8* %52)
  br label %54

54:                                               ; preds = %50, %45
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 4
  store i32* null, i32** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 1), align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @pset, i32 0, i32 0), align 8
  %66 = call i32 @printQuery(i32* %63, %struct.TYPE_11__* %15, i32 %64, i32 0, i32 %65)
  %67 = call i32 @termPQExpBuffer(%struct.TYPE_12__* %13)
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 @PQclear(i32* %68)
  store i32 1, i32* %6, align 4
  br label %70

70:                                               ; preds = %54, %28
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_12__*) #2

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_12__*, i8*, i32, i32, i8*) #2

declare dso_local i32 @gettext_noop(i8*) #2

declare dso_local i32* @PSQLexec(i32) #2

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_12__*) #2

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_12__*, i32, i8*, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @printQuery(i32*, %struct.TYPE_11__*, i32, i32, i32) #2

declare dso_local i32 @PQclear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
