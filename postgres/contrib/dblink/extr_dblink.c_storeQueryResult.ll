; ModuleID = '/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_storeQueryResult.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/dblink/extr_dblink.c_storeQueryResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"could not send query: %s\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to set single-row mode for dblink query\00", align 1
@PGRES_SINGLE_TUPLE = common dso_local global i64 0, align 8
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32*, i8*)* @storeQueryResult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @storeQueryResult(%struct.TYPE_4__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @PQsendQuery(i32* %10, i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @PQerrorMessage(i32* %16)
  %18 = call i32 @pchomp(i32 %17)
  %19 = call i32 (i32, i8*, ...) @elog(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %14, %3
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @PQsetSingleRowMode(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @ERROR, align 4
  %26 = call i32 (i32, i8*, ...) @elog(i32 %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %20
  br label %28

28:                                               ; preds = %97, %27
  %29 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* @PQgetResult(i32* %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store volatile i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load volatile i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  br label %98

39:                                               ; preds = %28
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load volatile i32*, i32** %41, align 8
  %43 = call i64 @PQresultStatus(i32* %42)
  %44 = load i64, i64* @PGRES_SINGLE_TUPLE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @applyRemoteGucs(i32* %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %49, %46
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load volatile i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @storeRow(%struct.TYPE_4__* %56, i32* %59, i32 %60)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load volatile i32*, i32** %63, align 8
  %65 = call i32 @PQclear(i32* %64)
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store volatile i32* null, i32** %67, align 8
  store i32 0, i32* %7, align 4
  br label %97

68:                                               ; preds = %39
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load volatile i32*, i32** %73, align 8
  %75 = call i64 @PQresultStatus(i32* %74)
  %76 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load volatile i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @storeRow(%struct.TYPE_4__* %79, i32* %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %71, %68
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load volatile i32*, i32** %87, align 8
  %89 = call i32 @PQclear(i32* %88)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load volatile i32*, i32** %91, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store volatile i32* %92, i32** %94, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store volatile i32* null, i32** %96, align 8
  store i32 1, i32* %7, align 4
  br label %97

97:                                               ; preds = %85, %55
  br label %28

98:                                               ; preds = %38
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @restoreLocalGucs(i32 %99)
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load volatile i32*, i32** %102, align 8
  store i32* %103, i32** %9, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store volatile i32* null, i32** %105, align 8
  %106 = load i32*, i32** %9, align 8
  ret i32* %106
}

declare dso_local i32 @PQsendQuery(i32*, i8*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @pchomp(i32) #1

declare dso_local i32 @PQerrorMessage(i32*) #1

declare dso_local i32 @PQsetSingleRowMode(i32*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32* @PQgetResult(i32*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @applyRemoteGucs(i32*) #1

declare dso_local i32 @storeRow(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @restoreLocalGucs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
