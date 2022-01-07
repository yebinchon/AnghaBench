; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_AcceptResult.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_common.c_AcceptResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"unexpected PQresultStatus: %d\00", align 1
@pset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @AcceptResult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcceptResult(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %18

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @PQresultStatus(i32* %9)
  switch i32 %10, label %13 [
    i32 134, label %11
    i32 128, label %11
    i32 131, label %11
    i32 133, label %11
    i32 132, label %11
    i32 135, label %12
    i32 129, label %12
    i32 130, label %12
  ]

11:                                               ; preds = %8, %8, %8, %8, %8
  store i32 1, i32* %3, align 4
  br label %17

12:                                               ; preds = %8, %8, %8
  store i32 0, i32* %3, align 4
  br label %17

13:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @PQresultStatus(i32* %14)
  %16 = call i32 @pg_log_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %13, %12, %11
  br label %18

18:                                               ; preds = %17, %7
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pset, i32 0, i32 0), align 4
  %23 = call i8* @PQerrorMessage(i32 %22)
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @pg_log_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = call i32 (...) @CheckConnection()
  br label %32

32:                                               ; preds = %30, %18
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @PQresultStatus(i32*) #1

declare dso_local i32 @pg_log_error(i8*, i32) #1

declare dso_local i8* @PQerrorMessage(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pg_log_info(i8*, i8*) #1

declare dso_local i32 @CheckConnection(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
