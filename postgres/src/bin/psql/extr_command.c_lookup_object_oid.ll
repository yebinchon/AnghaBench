; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_lookup_object_oid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_lookup_object_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"SELECT \00", align 1
@pset = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"::pg_catalog.%s::pg_catalog.oid\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"regprocedure\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"regproc\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"::pg_catalog.regclass::pg_catalog.oid\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*)* @lookup_object_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_object_oid(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 1, i32* %8, align 4
  %11 = call %struct.TYPE_8__* (...) @createPQExpBuffer()
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %9, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %36 [
    i32 129, label %13
    i32 128, label %27
  ]

13:                                               ; preds = %3
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %15 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 0), align 4
  %19 = call i32 @appendStringLiteralConn(%struct.TYPE_8__* %16, i8* %17, i32 %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strchr(i8* %21, i8 signext 40)
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %26 = call i32 @appendPQExpBuffer(%struct.TYPE_8__* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %36

27:                                               ; preds = %3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %29 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 0), align 4
  %33 = call i32 @appendStringLiteralConn(%struct.TYPE_8__* %30, i8* %31, i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %35 = call i32 @appendPQExpBufferStr(%struct.TYPE_8__* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %3, %27, %13
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @echo_hidden_command(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = call i32 @destroyPQExpBuffer(%struct.TYPE_8__* %43)
  store i32 0, i32* %4, align 4
  br label %73

45:                                               ; preds = %36
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @pset, i32 0, i32 0), align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @PQexec(i32 %46, i32 %49)
  store i32* %50, i32** %10, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = call i64 @PQresultStatus(i32* %51)
  %53 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %45
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @PQntuples(i32* %56)
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @PQgetvalue(i32* %60, i32 0, i32 0)
  %62 = call i32 @atooid(i32 %61)
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  br label %67

64:                                               ; preds = %55, %45
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @minimal_error_message(i32* %65)
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @PQclear(i32* %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %71 = call i32 @destroyPQExpBuffer(%struct.TYPE_8__* %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %42
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_8__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @appendStringLiteralConn(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32 @echo_hidden_command(i32) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_8__*) #1

declare dso_local i32* @PQexec(i32, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @atooid(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @minimal_error_message(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
