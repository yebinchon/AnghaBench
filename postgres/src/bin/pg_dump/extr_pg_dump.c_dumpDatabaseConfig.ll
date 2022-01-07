; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_dumpDatabaseConfig.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_dumpDatabaseConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [91 x i8] c"SELECT setconfig[%d] FROM pg_db_role_setting WHERE setrole = 0 AND setdatabase = '%u'::oid\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"SELECT datconfig[%d] FROM pg_database WHERE oid = '%u'::oid\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"DATABASE\00", align 1
@.str.3 = private unnamed_addr constant [122 x i8] c"SELECT rolname, unnest(setconfig) FROM pg_db_role_setting s, pg_roles r WHERE setrole = r.oid AND setdatabase = '%u'::oid\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ROLE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_11__*, i8*, i32)* @dumpDatabaseConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpDatabaseConfig(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %15 = call i32* @GetConnection(%struct.TYPE_12__* %14)
  store i32* %15, i32** %9, align 8
  %16 = call %struct.TYPE_11__* (...) @createPQExpBuffer()
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %10, align 8
  store i32 1, i32* %12, align 4
  br label %17

17:                                               ; preds = %60, %4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 90000
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @printfPQExpBuffer(%struct.TYPE_11__* %23, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  br label %32

27:                                               ; preds = %17
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @printfPQExpBuffer(%struct.TYPE_11__* %28, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %38 = call i32* @ExecuteSqlQuery(%struct.TYPE_12__* %33, i32 %36, i32 %37)
  store i32* %38, i32** %11, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @PQntuples(i32* %39)
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %57

42:                                               ; preds = %32
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @PQgetisnull(i32* %43, i32 0, i32 0)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i8* @PQgetvalue(i32* %48, i32 0, i32 0)
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = call i32 @makeAlterConfigCommand(i32* %47, i8* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %50, i8* null, i8* null, %struct.TYPE_11__* %51)
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @PQclear(i32* %53)
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %60

57:                                               ; preds = %42, %32
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @PQclear(i32* %58)
  br label %61

60:                                               ; preds = %46
  br label %17

61:                                               ; preds = %57
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %64, 90000
  br i1 %65, label %66, label %103

66:                                               ; preds = %61
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 (%struct.TYPE_11__*, i8*, i32, ...) @printfPQExpBuffer(%struct.TYPE_11__* %67, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %75 = call i32* @ExecuteSqlQuery(%struct.TYPE_12__* %70, i32 %73, i32 %74)
  store i32* %75, i32** %11, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @PQntuples(i32* %76)
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %66
  store i32 0, i32* %13, align 4
  br label %80

80:                                               ; preds = %96, %79
  %81 = load i32, i32* %13, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @PQntuples(i32* %82)
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %80
  %86 = load i32*, i32** %9, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i8* @PQgetvalue(i32* %87, i32 %88, i32 1)
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i8* @PQgetvalue(i32* %90, i32 %91, i32 0)
  %93 = load i8*, i8** %7, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %95 = call i32 @makeAlterConfigCommand(i32* %86, i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %93, %struct.TYPE_11__* %94)
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %80

99:                                               ; preds = %80
  br label %100

100:                                              ; preds = %99, %66
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @PQclear(i32* %101)
  br label %103

103:                                              ; preds = %100, %61
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %105 = call i32 @destroyPQExpBuffer(%struct.TYPE_11__* %104)
  ret void
}

declare dso_local i32* @GetConnection(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @createPQExpBuffer(...) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_11__*, i8*, i32, ...) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @makeAlterConfigCommand(i32*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_11__*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
