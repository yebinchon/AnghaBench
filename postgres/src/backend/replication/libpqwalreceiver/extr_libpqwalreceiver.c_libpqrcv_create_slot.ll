; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_create_slot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_create_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"CREATE_REPLICATION_SLOT \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" TEMPORARY\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" LOGICAL pgoutput\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c" EXPORT_SNAPSHOT\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c" NOEXPORT_SNAPSHOT\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c" USE_SNAPSHOT\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"could not create replication slot \22%s\22: %s\00", align 1
@pg_lsn_in = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_7__*, i8*, i32, i32, i32*)* @libpqrcv_create_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @libpqrcv_create_slot(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = call i32 @initStringInfo(%struct.TYPE_8__* %12)
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @appendStringInfo(%struct.TYPE_8__* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = call i32 @appendStringInfoString(%struct.TYPE_8__* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %5
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = call i32 @appendStringInfoString(%struct.TYPE_8__* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* %9, align 4
  switch i32 %28, label %35 [
    i32 130, label %29
    i32 129, label %31
    i32 128, label %33
  ]

29:                                               ; preds = %26
  %30 = call i32 @appendStringInfoString(%struct.TYPE_8__* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %35

31:                                               ; preds = %26
  %32 = call i32 @appendStringInfoString(%struct.TYPE_8__* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %35

33:                                               ; preds = %26
  %34 = call i32 @appendStringInfoString(%struct.TYPE_8__* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %35

35:                                               ; preds = %26, %33, %31, %29
  br label %36

36:                                               ; preds = %35, %21
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @libpqrcv_PQexec(i32 %39, i32 %41)
  store i32* %42, i32** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @pfree(i32 %44)
  %46 = load i32*, i32** %11, align 8
  %47 = call i64 @PQresultStatus(i32* %46)
  %48 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %36
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @PQclear(i32* %51)
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PQerrorMessage(i32 %57)
  %59 = call i32 @pchomp(i32 %58)
  %60 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %54, i32 %59)
  %61 = call i32 @ereport(i32 %53, i32 %60)
  br label %62

62:                                               ; preds = %50, %36
  %63 = load i32, i32* @pg_lsn_in, align 4
  %64 = load i32, i32* @InvalidOid, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @PQgetvalue(i32* %65, i32 0, i32 1)
  %67 = call i32 @CStringGetDatum(i32 %66)
  %68 = call i32 @DirectFunctionCall1Coll(i32 %63, i32 %64, i32 %67)
  %69 = call i32 @DatumGetLSN(i32 %68)
  %70 = load i32*, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @PQgetisnull(i32* %71, i32 0, i32 2)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %62
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @PQgetvalue(i32* %75, i32 0, i32 2)
  %77 = call i8* @pstrdup(i32 %76)
  store i8* %77, i8** %13, align 8
  br label %79

78:                                               ; preds = %62
  store i8* null, i8** %13, align 8
  br label %79

79:                                               ; preds = %78, %74
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @PQclear(i32* %80)
  %82 = load i8*, i8** %13, align 8
  ret i8* %82
}

declare dso_local i32 @initStringInfo(%struct.TYPE_8__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_8__*, i8*) #1

declare dso_local i32* @libpqrcv_PQexec(i32, i32) #1

declare dso_local i32 @pfree(i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i32) #1

declare dso_local i32 @pchomp(i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @DatumGetLSN(i32) #1

declare dso_local i32 @DirectFunctionCall1Coll(i32, i32, i32) #1

declare dso_local i32 @CStringGetDatum(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i8* @pstrdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
