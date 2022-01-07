; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_GetTableInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pgbench/extr_pgbench.c_GetTableInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"select count(*) from pgbench_branches\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@PG_DIAG_SQLSTATE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ERRCODE_UNDEFINED_TABLE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [71 x i8] c"Perhaps you need to do initialization (\22pgbench -i\22) in database \22%s\22\0A\00", align 1
@scale = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"invalid count(*) from pgbench_branches: \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"scale option ignored, using count from pgbench_branches table (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [483 x i8] c"select o.n, p.partstrat, pg_catalog.count(i.inhparent) from pg_catalog.pg_class as c join pg_catalog.pg_namespace as n on (n.oid = c.relnamespace) cross join lateral (select pg_catalog.array_position(pg_catalog.current_schemas(true), n.nspname)) as o(n) left join pg_catalog.pg_partitioned_table as p on (p.partrelid = c.oid) left join pg_catalog.pg_inherits as i on (c.oid = i.inhparent) where c.relname = 'pgbench_accounts' and o.n is not null group by 1, 2 order by 1 asc limit 1\00", align 1
@PART_NONE = common dso_local global i32 0, align 4
@partition_method = common dso_local global i32 0, align 4
@partitions = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [119 x i8] c"no pgbench_accounts table found in search_path\0APerhaps you need to do initialization (\22pgbench -i\22) in database \22%s\22.\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@PART_RANGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@PART_HASH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"unexpected partition method: \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @GetTableInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GetTableInfo(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @PQexec(i32* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @PQresultStatus(i32* %10)
  %12 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @PG_DIAG_SQLSTATE, align 4
  %17 = call i8* @PQresultErrorField(i32* %15, i32 %16)
  store i8* %17, i8** %6, align 8
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @PQerrorMessage(i32* %19)
  %21 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %14
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** @ERRCODE_UNDEFINED_TABLE, align 8
  %27 = call i64 @strcmp(i8* %25, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = call i8* @PQdb(i32* %31)
  %33 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %29, %24, %14
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %2
  %37 = load i32*, i32** %5, align 8
  %38 = call i8* @PQgetvalue(i32* %37, i32 0, i32 0)
  %39 = call i64 @atoi(i8* %38)
  store i64 %39, i64* @scale, align 8
  %40 = load i64, i64* @scale, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = call i8* @PQgetvalue(i32* %44, i32 0, i32 0)
  %46 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  %47 = call i32 @exit(i32 1) #3
  unreachable

48:                                               ; preds = %36
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @PQclear(i32* %49)
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* @stderr, align 4
  %55 = load i64, i64* @scale, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32*, i32** %3, align 8
  %60 = call i32* @PQexec(i32* %59, i8* getelementptr inbounds ([483 x i8], [483 x i8]* @.str.5, i64 0, i64 0))
  store i32* %60, i32** %5, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i64 @PQresultStatus(i32* %61)
  %63 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @PART_NONE, align 4
  store i32 %66, i32* @partition_method, align 4
  store i64 0, i64* @partitions, align 8
  br label %113

67:                                               ; preds = %58
  %68 = load i32*, i32** %5, align 8
  %69 = call i64 @PQntuples(i32* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i32, i32* @stderr, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = call i8* @PQdb(i32* %73)
  %75 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.6, i64 0, i64 0), i8* %74)
  %76 = call i32 @exit(i32 1) #3
  unreachable

77:                                               ; preds = %67
  %78 = load i32*, i32** %5, align 8
  %79 = call i64 @PQgetisnull(i32* %78, i32 0, i32 1)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @PART_NONE, align 4
  store i32 %82, i32* @partition_method, align 4
  br label %108

83:                                               ; preds = %77
  %84 = load i32*, i32** %5, align 8
  %85 = call i8* @PQgetvalue(i32* %84, i32 0, i32 1)
  store i8* %85, i8** %7, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = icmp ne i8* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i32 @Assert(i32 %88)
  %90 = load i8*, i8** %7, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* @PART_RANGE, align 4
  store i32 %94, i32* @partition_method, align 4
  br label %107

95:                                               ; preds = %83
  %96 = load i8*, i8** %7, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* @PART_HASH, align 4
  store i32 %100, i32* @partition_method, align 4
  br label %106

101:                                              ; preds = %95
  %102 = load i32, i32* @stderr, align 4
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @fprintf(i32 %102, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* %103)
  %105 = call i32 @exit(i32 1) #3
  unreachable

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %93
  br label %108

108:                                              ; preds = %107, %81
  %109 = load i32*, i32** %5, align 8
  %110 = call i8* @PQgetvalue(i32* %109, i32 0, i32 2)
  %111 = call i64 @atoi(i8* %110)
  store i64 %111, i64* @partitions, align 8
  br label %112

112:                                              ; preds = %108
  br label %113

113:                                              ; preds = %112, %65
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 @PQclear(i32* %114)
  ret void
}

declare dso_local i32* @PQexec(i32*, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i8* @PQresultErrorField(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @PQerrorMessage(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @PQdb(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @atoi(i8*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i64 @PQntuples(i32*) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
