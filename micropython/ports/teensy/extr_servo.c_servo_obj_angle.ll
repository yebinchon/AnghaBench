; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/extr_servo.c_servo_obj_angle.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/extr_servo.c_servo_obj_angle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }

@servo_ticks = common dso_local global i32* null, align 8
@mp_const_none = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32, %struct.TYPE_8__**)* @servo_obj_angle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @servo_obj_angle(i32 %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %5, align 8
  %9 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %9, i64 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load i32*, i32** @servo_ticks, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usToTicks(i32 %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @usToTicks(i32 %27)
  %29 = call float @map_uint_to_float(i32 %20, i32 %24, i32 %28, double 0.000000e+00, double 1.800000e+02)
  store float %29, float* %7, align 4
  %30 = load float, float* %7, align 4
  %31 = call %struct.TYPE_8__* @mp_obj_new_float(float %30)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %3, align 8
  br label %61

32:                                               ; preds = %2
  %33 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %33, i64 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = call float @mp_obj_get_float(%struct.TYPE_8__* %35)
  store float %36, float* %8, align 4
  %37 = load float, float* %8, align 4
  %38 = fcmp olt float %37, 0.000000e+00
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store float 0.000000e+00, float* %8, align 4
  br label %40

40:                                               ; preds = %39, %32
  %41 = load float, float* %8, align 4
  %42 = fcmp ogt float %41, 1.800000e+02
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store float 1.800000e+02, float* %8, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load float, float* %8, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @usToTicks(i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @usToTicks(i32 %52)
  %54 = call i32 @map_float_to_uint(float %45, float 0.000000e+00, float 1.800000e+02, i32 %49, i32 %53)
  %55 = load i32*, i32** @servo_ticks, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %54, i32* %59, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mp_const_none, align 8
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %3, align 8
  br label %61

61:                                               ; preds = %44, %14
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %62
}

declare dso_local float @map_uint_to_float(i32, i32, i32, double, double) #1

declare dso_local i32 @usToTicks(i32) #1

declare dso_local %struct.TYPE_8__* @mp_obj_new_float(float) #1

declare dso_local float @mp_obj_get_float(%struct.TYPE_8__*) #1

declare dso_local i32 @map_float_to_uint(float, float, float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
