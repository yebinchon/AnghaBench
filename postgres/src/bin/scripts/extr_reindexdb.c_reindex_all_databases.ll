; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/scripts/extr_reindexdb.c_reindex_all_databases.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/scripts/extr_reindexdb.c_reindex_all_databases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"SELECT datname FROM pg_database WHERE datallowconn ORDER BY 1;\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: reindexing database \22%s\22\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"dbname=\00", align 1
@REINDEX_DATABASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32)* @reindex_all_databases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reindex_all_databases(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_7__, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = load i32, i32* %16, align 4
  %33 = load i8*, i8** %17, align 8
  %34 = load i32, i32* %18, align 4
  %35 = call i32* @connectMaintenanceDatabase(i8* %28, i8* %29, i8* %30, i8* %31, i32 %32, i8* %33, i32 %34)
  store i32* %35, i32** %23, align 8
  %36 = load i32*, i32** %23, align 8
  %37 = load i32, i32* %18, align 4
  %38 = call i32* @executeQuery(i32* %36, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32* %38, i32** %24, align 8
  %39 = load i32*, i32** %23, align 8
  %40 = call i32 @PQfinish(i32* %39)
  %41 = call i32 @initPQExpBuffer(%struct.TYPE_7__* %25)
  store i32 0, i32* %26, align 4
  br label %42

42:                                               ; preds = %78, %11
  %43 = load i32, i32* %26, align 4
  %44 = load i32*, i32** %24, align 8
  %45 = call i32 @PQntuples(i32* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %42
  %48 = load i32*, i32** %24, align 8
  %49 = load i32, i32* %26, align 4
  %50 = call i8* @PQgetvalue(i32* %48, i32 %49, i32 0)
  store i8* %50, i8** %27, align 8
  %51 = load i32, i32* %19, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %47
  %54 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i8*, i8** %17, align 8
  %56 = load i8*, i8** %27, align 8
  %57 = call i32 @printf(i8* %54, i8* %55, i8* %56)
  %58 = load i32, i32* @stdout, align 4
  %59 = call i32 @fflush(i32 %58)
  br label %60

60:                                               ; preds = %53, %47
  %61 = call i32 @resetPQExpBuffer(%struct.TYPE_7__* %25)
  %62 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i8*, i8** %27, align 8
  %64 = call i32 @appendConnStrVal(%struct.TYPE_7__* %25, i8* %63)
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @REINDEX_DATABASE, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = load i8*, i8** %15, align 8
  %71 = load i32, i32* %16, align 4
  %72 = load i8*, i8** %17, align 8
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* %22, align 4
  %77 = call i32 @reindex_one_database(i32 %66, i32 %67, i32* null, i8* %68, i8* %69, i8* %70, i32 %71, i8* %72, i32 %73, i32 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %60
  %79 = load i32, i32* %26, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %26, align 4
  br label %42

81:                                               ; preds = %42
  %82 = call i32 @termPQExpBuffer(%struct.TYPE_7__* %25)
  %83 = load i32*, i32** %24, align 8
  %84 = call i32 @PQclear(i32* %83)
  ret void
}

declare dso_local i32* @connectMaintenanceDatabase(i8*, i8*, i8*, i8*, i32, i8*, i32) #1

declare dso_local i32* @executeQuery(i32*, i8*, i32) #1

declare dso_local i32 @PQfinish(i32*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_7__*) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_7__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @appendConnStrVal(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @reindex_one_database(i32, i32, i32*, i8*, i8*, i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_7__*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
