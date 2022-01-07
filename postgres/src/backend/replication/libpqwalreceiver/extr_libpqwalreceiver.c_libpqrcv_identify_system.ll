; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_identify_system.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_identify_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"IDENTIFY_SYSTEM\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [89 x i8] c"could not receive database system identifier and timeline ID from the primary server: %s\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"invalid response from primary server\00", align 1
@.str.3 = private unnamed_addr constant [94 x i8] c"Could not identify system: got %d rows and %d fields, expected %d rows and %d or more fields.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i32*)* @libpqrcv_identify_system to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @libpqrcv_identify_system(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @libpqrcv_PQexec(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @PQresultStatus(i32* %13)
  %15 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @PQclear(i32* %18)
  %20 = load i32, i32* @ERROR, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @PQerrorMessage(i32 %23)
  %25 = call i32 @pchomp(i32 %24)
  %26 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = call i32 @ereport(i32 %20, i32 %26)
  br label %28

28:                                               ; preds = %17, %2
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @PQnfields(i32* %29)
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @PQntuples(i32* %33)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %49

36:                                               ; preds = %32, %28
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @PQntuples(i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @PQnfields(i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @PQclear(i32* %41)
  %43 = load i32, i32* @ERROR, align 4
  %44 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @errdetail(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.3, i64 0, i64 0), i32 %45, i32 %46, i32 3, i32 1)
  %48 = call i32 @ereport(i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %36, %32
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @PQgetvalue(i32* %50, i32 0, i32 0)
  %52 = call i8* @pstrdup(i32 %51)
  store i8* %52, i8** %6, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @PQgetvalue(i32* %53, i32 0, i32 1)
  %55 = call i32 @pg_strtoint32(i32 %54)
  %56 = load i32*, i32** %4, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @PQclear(i32* %57)
  %59 = load i8*, i8** %6, align 8
  ret i8* %59
}

declare dso_local i32* @libpqrcv_PQexec(i32, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @pchomp(i32) #1

declare dso_local i32 @PQerrorMessage(i32) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @errdetail(i8*, i32, i32, i32, i32) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @pg_strtoint32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
