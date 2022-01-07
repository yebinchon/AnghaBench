; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_streamutil.c_DropReplicationSlot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_basebackup/extr_streamutil.c_DropReplicationSlot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"DROP_REPLICATION_SLOT \22%s\22\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"could not send replication command \22%s\22: %s\00", align 1
@.str.2 = private unnamed_addr constant [96 x i8] c"could not drop replication slot \22%s\22: got %d rows and %d fields, expected %d rows and %d fields\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DropReplicationSlot(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @Assert(i32 %10)
  %12 = call %struct.TYPE_5__* (...) @createPQExpBuffer()
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @appendPQExpBuffer(%struct.TYPE_5__* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @PQexec(i32* %16, i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @PQresultStatus(i32* %21)
  %23 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @PQerrorMessage(i32* %31)
  %33 = sext i32 %32 to i64
  %34 = call i32 (i8*, i8*, i64, ...) @pg_log_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %30, i64 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = call i32 @destroyPQExpBuffer(%struct.TYPE_5__* %35)
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @PQclear(i32* %37)
  store i32 0, i32* %3, align 4
  br label %63

39:                                               ; preds = %2
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @PQntuples(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32*, i32** %7, align 8
  %45 = call i64 @PQnfields(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %43, %39
  %48 = load i8*, i8** %5, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i64 @PQntuples(i32* %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @PQnfields(i32* %51)
  %53 = call i32 (i8*, i8*, i64, ...) @pg_log_error(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0), i8* %48, i64 %50, i64 %52, i32 0, i32 0)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = call i32 @destroyPQExpBuffer(%struct.TYPE_5__* %54)
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @PQclear(i32* %56)
  store i32 0, i32* %3, align 4
  br label %63

58:                                               ; preds = %43
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = call i32 @destroyPQExpBuffer(%struct.TYPE_5__* %59)
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @PQclear(i32* %61)
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %47, %25
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_5__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32* @PQexec(i32*, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @pg_log_error(i8*, i8*, i64, ...) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_5__*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i64 @PQntuples(i32*) #1

declare dso_local i64 @PQnfields(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
