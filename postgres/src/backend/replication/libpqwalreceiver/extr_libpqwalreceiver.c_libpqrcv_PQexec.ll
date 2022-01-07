; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_PQexec.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/libpqwalreceiver/extr_libpqwalreceiver.c_libpqrcv_PQexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PGRES_COPY_IN = common dso_local global i64 0, align 8
@PGRES_COPY_OUT = common dso_local global i64 0, align 8
@PGRES_COPY_BOTH = common dso_local global i64 0, align 8
@CONNECTION_BAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*)* @libpqrcv_PQexec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @libpqrcv_PQexec(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @PQsendQuery(i32* %8, i8* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %47

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %44, %13
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @libpqrcv_PQgetResult(i32* %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %45

20:                                               ; preds = %14
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @PQclear(i32* %21)
  %23 = load i32*, i32** %7, align 8
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @PQresultStatus(i32* %24)
  %26 = load i64, i64* @PGRES_COPY_IN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %43, label %28

28:                                               ; preds = %20
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @PQresultStatus(i32* %29)
  %31 = load i64, i64* @PGRES_COPY_OUT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load i32*, i32** %6, align 8
  %35 = call i64 @PQresultStatus(i32* %34)
  %36 = load i64, i64* @PGRES_COPY_BOTH, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = call i64 @PQstatus(i32* %39)
  %41 = load i64, i64* @CONNECTION_BAD, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %33, %28, %20
  br label %45

44:                                               ; preds = %38
  br label %14

45:                                               ; preds = %43, %19
  %46 = load i32*, i32** %6, align 8
  store i32* %46, i32** %3, align 8
  br label %47

47:                                               ; preds = %45, %12
  %48 = load i32*, i32** %3, align 8
  ret i32* %48
}

declare dso_local i32 @PQsendQuery(i32*, i8*) #1

declare dso_local i32* @libpqrcv_PQgetResult(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i64 @PQstatus(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
