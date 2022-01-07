; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_finish_foreign_modify.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_finish_foreign_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"DEALLOCATE %s\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @finish_foreign_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_foreign_modify(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @Assert(i32 %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %1
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @snprintf(i8* %14, i32 64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %23 = call i32* @pgfdw_exec_query(i32* %21, i8* %22)
  store i32* %23, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @PQresultStatus(i32* %24)
  %26 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %13
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %35 = call i32 @pgfdw_report_error(i32 %29, i32* %30, i32* %33, i32 1, i8* %34)
  br label %36

36:                                               ; preds = %28, %13
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @PQclear(i32* %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i8* null, i8** %40, align 8
  br label %41

41:                                               ; preds = %36, %1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @ReleaseConnection(i32* %44)
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32* @pgfdw_exec_query(i32*, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @pgfdw_report_error(i32, i32*, i32*, i32, i8*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ReleaseConnection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
