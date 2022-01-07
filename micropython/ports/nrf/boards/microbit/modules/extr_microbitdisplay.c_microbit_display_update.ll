; ModuleID = '/home/carl/AnghaBench/micropython/ports/nrf/boards/microbit/modules/extr_microbitdisplay.c_microbit_display_update.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/nrf/boards/microbit/modules/extr_microbitdisplay.c_microbit_display_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@MILLISECONDS_PER_MACRO_TICK = common dso_local global i64 0, align 8
@async_tick = common dso_local global i64 0, align 8
@async_delay = common dso_local global i64 0, align 8
@async_mode = common dso_local global i32 0, align 4
@async_data = common dso_local global i32 0, align 4
@async_iterator = common dso_local global i32 0, align 4
@mp_type_StopIteration = common dso_local global i32 0, align 4
@mp_type_MemoryError = common dso_local global i32 0, align 4
@mp_plat_print = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Allocation in interrupt handler\00", align 1
@MP_OBJ_STOP_ITERATION = common dso_local global i32 0, align 4
@microbit_display_obj = common dso_local global i32 0, align 4
@BLANK_IMAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @microbit_display_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @microbit_display_update() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* @MILLISECONDS_PER_MACRO_TICK, align 8
  %5 = load i64, i64* @async_tick, align 8
  %6 = add nsw i64 %5, %4
  store i64 %6, i64* @async_tick, align 8
  %7 = load i64, i64* @async_tick, align 8
  %8 = load i64, i64* @async_delay, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  br label %67

11:                                               ; preds = %0
  store i64 0, i64* @async_tick, align 8
  %12 = load i32, i32* @async_mode, align 4
  switch i32 %12, label %67 [
    i32 129, label %13
    i32 128, label %63
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @async_data, align 4
  %15 = call i32** @MP_STATE_PORT(i32 %14)
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @async_data, align 4
  %21 = call i32** @MP_STATE_PORT(i32 %20)
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %13
  %26 = call i32 (...) @async_stop()
  br label %67

27:                                               ; preds = %19
  %28 = call i32 (...) @gc_lock()
  %29 = call i32 @nlr_push(%struct.TYPE_4__* %2)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* @async_iterator, align 4
  %33 = call i32 @mp_iternext_allow_raise(i32 %32)
  store i32 %33, i32* %1, align 4
  %34 = call i32 (...) @nlr_pop()
  %35 = call i32 (...) @gc_unlock()
  br label %60

36:                                               ; preds = %27
  %37 = call i32 (...) @gc_unlock()
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = bitcast i32* %39 to %struct.TYPE_5__*
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @MP_OBJ_FROM_PTR(i32* %42)
  %44 = call i32 @MP_OBJ_FROM_PTR(i32* @mp_type_StopIteration)
  %45 = call i32 @mp_obj_is_subclass_fast(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32* @mp_obj_get_type(i32* %49)
  %51 = icmp eq i32* %50, @mp_type_MemoryError
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @mp_printf(i32* @mp_plat_print, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %47
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @MP_OBJ_FROM_PTR(i32* %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %36
  %59 = load i32, i32* @MP_OBJ_STOP_ITERATION, align 4
  store i32 %59, i32* %1, align 4
  br label %60

60:                                               ; preds = %58, %31
  %61 = load i32, i32* %1, align 4
  %62 = call i32 @draw_object(i32 %61)
  br label %67

63:                                               ; preds = %11
  %64 = load i32, i32* @BLANK_IMAGE, align 4
  %65 = call i32 @microbit_display_show(i32* @microbit_display_obj, i32 %64)
  %66 = call i32 (...) @async_stop()
  br label %67

67:                                               ; preds = %10, %11, %63, %60, %25
  ret void
}

declare dso_local i32** @MP_STATE_PORT(i32) #1

declare dso_local i32 @async_stop(...) #1

declare dso_local i32 @gc_lock(...) #1

declare dso_local i32 @nlr_push(%struct.TYPE_4__*) #1

declare dso_local i32 @mp_iternext_allow_raise(i32) #1

declare dso_local i32 @nlr_pop(...) #1

declare dso_local i32 @gc_unlock(...) #1

declare dso_local i32 @mp_obj_is_subclass_fast(i32, i32) #1

declare dso_local i32 @MP_OBJ_FROM_PTR(i32*) #1

declare dso_local i32* @mp_obj_get_type(i32*) #1

declare dso_local i32 @mp_printf(i32*, i8*) #1

declare dso_local i32 @draw_object(i32) #1

declare dso_local i32 @microbit_display_show(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
