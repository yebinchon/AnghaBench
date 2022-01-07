; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_prepare_foreign_modify.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_prepare_foreign_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@NAMEDATALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"pgsql_fdw_prep_%u\00", align 1
@ERROR = common dso_local global i32 0, align 4
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @prepare_foreign_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_foreign_modify(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load i32, i32* @NAMEDATALEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = trunc i64 %8 to i32
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @GetPrepStmtNumber(i32 %14)
  %16 = call i32 @snprintf(i8* %10, i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = call i8* @pstrdup(i8* %10)
  store i8* %17, i8** %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @PQsendPrepare(i32 %20, i8* %21, i32 %24, i32 0, i32* null)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ERROR, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pgfdw_report_error(i32 %28, i32* null, i32 %31, i32 0, i32 %34)
  br label %36

36:                                               ; preds = %27, %1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32* @pgfdw_get_result(i32 %39, i32 %42)
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i64 @PQresultStatus(i32* %44)
  %46 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %36
  %49 = load i32, i32* @ERROR, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pgfdw_report_error(i32 %49, i32* %50, i32 %53, i32 1, i32 %56)
  br label %58

58:                                               ; preds = %48, %36
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @PQclear(i32* %59)
  %61 = load i8*, i8** %5, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @GetPrepStmtNumber(i32) #2

declare dso_local i8* @pstrdup(i8*) #2

declare dso_local i32 @PQsendPrepare(i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @pgfdw_report_error(i32, i32*, i32, i32, i32) #2

declare dso_local i32* @pgfdw_get_result(i32, i32) #2

declare dso_local i64 @PQresultStatus(i32*) #2

declare dso_local i32 @PQclear(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
