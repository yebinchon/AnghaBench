; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_ExecQueryTuples.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_ExecQueryTuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@cancel_pressed = common dso_local global i64 0, align 8
@PSQL_ECHO_ALL = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ExecQueryTuples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExecQueryTuples(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %3, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @PQntuples(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @PQnfields(i32* %11)
  store i32 %12, i32* %5, align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %63, %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %59, %17
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %18
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @PQgetisnull(i32* %23, i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %22
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i8* @PQgetvalue(i32* %29, i32 %30, i32 %31)
  store i8* %32, i8** %8, align 8
  %33 = load i64, i64* @cancel_pressed, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %67

36:                                               ; preds = %28
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 1), align 8
  %38 = load i64, i64* @PSQL_ECHO_ALL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 3), align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @puts(i8* %44)
  %46 = load i32, i32* @stdout, align 4
  %47 = call i32 @fflush(i32 %46)
  br label %48

48:                                               ; preds = %43, %40, %36
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @SendQuery(i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 2), align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %67

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %48
  br label %58

58:                                               ; preds = %57, %22
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %18

62:                                               ; preds = %18
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %13

66:                                               ; preds = %13
  br label %67

67:                                               ; preds = %66, %55, %35
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 8
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local i32 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @SendQuery(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
