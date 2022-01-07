; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_timeout.c_RegisterTimeout.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_timeout.c_RegisterTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@all_timeouts_initialized = common dso_local global i32 0, align 4
@USER_TIMEOUT = common dso_local global i64 0, align 8
@MAX_TIMEOUTS = common dso_local global i64 0, align 8
@all_timeouts = common dso_local global %struct.TYPE_2__* null, align 8
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_CONFIGURATION_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cannot add more timeout reasons\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RegisterTimeout(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @all_timeouts_initialized, align 4
  %6 = call i32 @Assert(i32 %5)
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @USER_TIMEOUT, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %2
  %11 = load i64, i64* @USER_TIMEOUT, align 8
  store i64 %11, i64* %3, align 8
  br label %12

12:                                               ; preds = %25, %10
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @MAX_TIMEOUTS, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_timeouts, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %28

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %12

28:                                               ; preds = %23, %12
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @MAX_TIMEOUTS, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* @FATAL, align 4
  %34 = load i32, i32* @ERRCODE_CONFIGURATION_LIMIT_EXCEEDED, align 4
  %35 = call i32 @errcode(i32 %34)
  %36 = call i32 @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @ereport(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %32, %28
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_timeouts, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @all_timeouts, align 8
  %50 = load i64, i64* %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32* %48, i32** %52, align 8
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
