; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_PrintQueryResults.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_PrintQueryResults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"INSERT\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"UPDATE\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"unexpected PQresultStatus: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @PrintQueryResults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PrintQueryResults(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @PQresultStatus(i32* %10)
  switch i32 %11, label %59 [
    i32 128, label %12
    i32 134, label %53
    i32 131, label %56
    i32 132, label %57
    i32 133, label %57
    i32 135, label %58
    i32 129, label %58
    i32 130, label %58
  ]

12:                                               ; preds = %9
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 3), align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @StoreQueryTuple(i32* %16)
  store i32 %17, i32* %4, align 4
  br label %35

18:                                               ; preds = %12
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 2), align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @ExecQueryTuples(i32* %22)
  store i32 %23, i32* %4, align 4
  br label %34

24:                                               ; preds = %18
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @PrintResultsInCrosstab(i32* %28)
  store i32 %29, i32* %4, align 4
  br label %33

30:                                               ; preds = %24
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @PrintQueryTuples(i32* %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %21
  br label %35

35:                                               ; preds = %34, %15
  %36 = load i32*, i32** %3, align 8
  %37 = call i8* @PQcmdStatus(i32* %36)
  store i8* %37, i8** %5, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @strncmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @strncmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %41, %35
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @PrintQueryStatus(i32* %50)
  br label %52

52:                                               ; preds = %49, %45
  br label %63

53:                                               ; preds = %9
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @PrintQueryStatus(i32* %54)
  store i32 1, i32* %4, align 4
  br label %63

56:                                               ; preds = %9
  store i32 1, i32* %4, align 4
  br label %63

57:                                               ; preds = %9, %9
  store i32 1, i32* %4, align 4
  br label %63

58:                                               ; preds = %9, %9, %9
  store i32 0, i32* %4, align 4
  br label %63

59:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @PQresultStatus(i32* %60)
  %62 = call i32 @pg_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %58, %57, %56, %53, %52
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %65 = call i32 @fflush(i32 %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %8
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @PQresultStatus(i32*) #1

declare dso_local i32 @StoreQueryTuple(i32*) #1

declare dso_local i32 @ExecQueryTuples(i32*) #1

declare dso_local i32 @PrintResultsInCrosstab(i32*) #1

declare dso_local i32 @PrintQueryTuples(i32*) #1

declare dso_local i8* @PQcmdStatus(i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @PrintQueryStatus(i32*) #1

declare dso_local i32 @pg_log_error(i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
