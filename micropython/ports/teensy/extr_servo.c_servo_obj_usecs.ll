; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/extr_servo.c_servo_obj_usecs.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/extr_servo.c_servo_obj_usecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64 }

@servo_ticks = common dso_local global i32* null, align 8
@mp_const_none = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32, %struct.TYPE_8__**)* @servo_obj_usecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @servo_obj_usecs(i32 %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %5, align 8
  %8 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %8, i64 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i32*, i32** @servo_ticks, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ticksToUs(i32 %19)
  %21 = call %struct.TYPE_8__* @MP_OBJ_NEW_SMALL_INT(i32 %20)
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %3, align 8
  br label %61

22:                                               ; preds = %2
  %23 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %23, i64 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = call i32 @mp_obj_get_int(%struct.TYPE_8__* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %22
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @clamp(i32 %35, i64 %38, i64 %41)
  store i32 %42, i32* %7, align 4
  br label %52

43:                                               ; preds = %22
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @clamp(i32 %44, i64 %47, i64 %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %43, %34
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @usToTicks(i32 %53)
  %55 = load i32*, i32** @servo_ticks, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %54, i32* %59, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mp_const_none, align 8
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %3, align 8
  br label %61

61:                                               ; preds = %52, %13
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %62
}

declare dso_local %struct.TYPE_8__* @MP_OBJ_NEW_SMALL_INT(i32) #1

declare dso_local i32 @ticksToUs(i32) #1

declare dso_local i32 @mp_obj_get_int(%struct.TYPE_8__*) #1

declare dso_local i32 @clamp(i32, i64, i64) #1

declare dso_local i32 @usToTicks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
