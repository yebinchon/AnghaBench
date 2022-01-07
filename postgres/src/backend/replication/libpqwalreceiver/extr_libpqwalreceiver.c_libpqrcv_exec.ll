; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_exec.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32 }

@MyDatabaseId = common dso_local global i64 0, align 8
@InvalidOid = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"the query interface requires a database connection\00", align 1
@WALRCV_OK_TUPLES = common dso_local global i8* null, align 8
@WALRCV_OK_COPY_IN = common dso_local global i8* null, align 8
@WALRCV_OK_COPY_OUT = common dso_local global i8* null, align 8
@WALRCV_OK_COPY_BOTH = common dso_local global i8* null, align 8
@WALRCV_OK_COMMAND = common dso_local global i8* null, align 8
@WALRCV_ERROR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"empty query\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*, i8*, i32, i32*)* @libpqrcv_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @libpqrcv_exec(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %11 = call %struct.TYPE_8__* @palloc0(i32 16)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %10, align 8
  %12 = load i64, i64* @MyDatabaseId, align 8
  %13 = load i64, i64* @InvalidOid, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* @ERROR, align 4
  %17 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %18 = call i32 @errcode(i32 %17)
  %19 = call i32 @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @ereport(i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %15, %4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32* @libpqrcv_PQexec(i32 %24, i8* %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @PQresultStatus(i32* %27)
  switch i32 %28, label %72 [
    i32 129, label %29
    i32 128, label %29
    i32 134, label %38
    i32 133, label %42
    i32 135, label %46
    i32 136, label %50
    i32 132, label %54
    i32 130, label %61
    i32 131, label %61
    i32 137, label %61
  ]

29:                                               ; preds = %21, %21
  %30 = load i8*, i8** @WALRCV_OK_TUPLES, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @libpqrcv_processTuples(i32* %33, %struct.TYPE_8__* %34, i32 %35, i32* %36)
  br label %72

38:                                               ; preds = %21
  %39 = load i8*, i8** @WALRCV_OK_COPY_IN, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %72

42:                                               ; preds = %21
  %43 = load i8*, i8** @WALRCV_OK_COPY_OUT, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  br label %72

46:                                               ; preds = %21
  %47 = load i8*, i8** @WALRCV_OK_COPY_BOTH, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  br label %72

50:                                               ; preds = %21
  %51 = load i8*, i8** @WALRCV_OK_COMMAND, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  br label %72

54:                                               ; preds = %21
  %55 = load i8*, i8** @WALRCV_ERROR, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %72

61:                                               ; preds = %21, %21, %21
  %62 = load i8*, i8** @WALRCV_ERROR, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @PQerrorMessage(i32 %67)
  %69 = call i32 @pchomp(i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %21, %61, %54, %50, %46, %42, %38, %29
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @PQclear(i32* %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  ret %struct.TYPE_8__* %75
}

declare dso_local %struct.TYPE_8__* @palloc0(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @libpqrcv_PQexec(i32, i8*) #1

declare dso_local i32 @PQresultStatus(i32*) #1

declare dso_local i32 @libpqrcv_processTuples(i32*, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @pchomp(i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
