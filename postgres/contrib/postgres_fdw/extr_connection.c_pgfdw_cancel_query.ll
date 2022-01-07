; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_connection.c_pgfdw_cancel_query.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_connection.c_pgfdw_cancel_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WARNING = common dso_local global i32 0, align 4
@ERRCODE_CONNECTION_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not send cancel request: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pgfdw_cancel_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgfdw_cancel_query(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %6, align 8
  %8 = call i32 (...) @GetCurrentTimestamp()
  %9 = call i32 @TimestampTzPlusMilliseconds(i32 %8, i32 30000)
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @PQgetCancel(i32* %10)
  store i32* %11, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %16 = call i32 @PQcancel(i32* %14, i8* %15, i32 256)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @WARNING, align 4
  %20 = load i32, i32* @ERRCODE_CONNECTION_FAILURE, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %23 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = call i32 @ereport(i32 %19, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @PQfreeCancel(i32* %25)
  store i32 0, i32* %2, align 4
  br label %39

27:                                               ; preds = %13
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @PQfreeCancel(i32* %28)
  br label %30

30:                                               ; preds = %27, %1
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @pgfdw_get_cleanup_result(i32* %31, i32 %32, i32** %6)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %39

36:                                               ; preds = %30
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @PQclear(i32* %37)
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %35, %18
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @TimestampTzPlusMilliseconds(i32, i32) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32* @PQgetCancel(i32*) #1

declare dso_local i32 @PQcancel(i32*, i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @PQfreeCancel(i32*) #1

declare dso_local i64 @pgfdw_get_cleanup_result(i32*, i32, i32**) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
