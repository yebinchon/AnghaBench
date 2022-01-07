; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_tmr.c_tmr_interval.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_tmr.c_tmr_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@MAX_TIMEOUT = common dso_local global i64 0, align 8
@MAX_TIMEOUT_ERR_STR = common dso_local global i32 0, align 4
@TIMER_MODE_OFF = common dso_local global i32 0, align 4
@TIMER_IDLE_FLAG = common dso_local global i32 0, align 4
@TIMER_MODE_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @tmr_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmr_interval(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call %struct.TYPE_3__* @tmr_get(i32* %5, i32 1)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @luaL_checkinteger(i32* %7, i32 2)
  store i64 %8, i64* %4, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @MAX_TIMEOUT, align 8
  %15 = icmp sle i64 %13, %14
  br label %16

16:                                               ; preds = %12, %1
  %17 = phi i1 [ false, %1 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @MAX_TIMEOUT_ERR_STR, align 4
  %20 = call i32 @luaL_argcheck(i32* %9, i32 %18, i32 2, i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @TIMER_MODE_OFF, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %16
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TIMER_IDLE_FLAG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %26
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = call i32 @os_timer_disarm(i32* %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TIMER_MODE_AUTO, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @os_timer_arm(i32* %41, i64 %44, i32 %50)
  br label %52

52:                                               ; preds = %36, %26
  br label %53

53:                                               ; preds = %52, %16
  ret i32 0
}

declare dso_local %struct.TYPE_3__* @tmr_get(i32*, i32) #1

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i32) #1

declare dso_local i32 @os_timer_disarm(i32*) #1

declare dso_local i32 @os_timer_arm(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
