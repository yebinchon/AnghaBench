; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_log_disconnections.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_postgres.c_log_disconnections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32, i32, i32 }

@MyProcPort = common dso_local global %struct.TYPE_3__* null, align 8
@MyStartTimestamp = common dso_local global i32 0, align 4
@SECS_PER_HOUR = common dso_local global i64 0, align 8
@SECS_PER_MINUTE = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"disconnection: session time: %d:%02d:%02d.%03d user=%s database=%s host=%s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" port=\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @log_disconnections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_disconnections(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MyProcPort, align 8
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %5, align 8
  %13 = load i32, i32* @MyStartTimestamp, align 4
  %14 = call i32 (...) @GetCurrentTimestamp()
  %15 = call i32 @TimestampDifference(i32 %13, i32 %14, i64* %6, i32* %7)
  %16 = load i32, i32* %7, align 4
  %17 = sdiv i32 %16, 1000
  store i32 %17, i32* %8, align 4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @SECS_PER_HOUR, align 8
  %20 = sdiv i64 %18, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* @SECS_PER_HOUR, align 8
  %23 = load i64, i64* %6, align 8
  %24 = srem i64 %23, %22
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @SECS_PER_MINUTE, align 8
  %27 = sdiv i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @SECS_PER_MINUTE, align 8
  %31 = srem i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @LOG, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = call i32 @errmsg(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %36, i32 %37, i32 %40, i32 %43, i32 %46, i8* %54, i64* %57)
  %59 = call i32 @ereport(i32 %33, i32 %58)
  ret void
}

declare dso_local i32 @TimestampDifference(i32, i32, i64*, i32*) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
