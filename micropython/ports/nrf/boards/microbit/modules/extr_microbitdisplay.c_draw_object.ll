; ModuleID = '/home/carl/AnghaBench/micropython/ports/nrf/boards/microbit/modules/extr_microbitdisplay.c_draw_object.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/nrf/boards/microbit/modules/extr_microbitdisplay.c_draw_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@async_data = common dso_local global i32 0, align 4
@MP_OBJ_STOP_ITERATION = common dso_local global i64 0, align 8
@async_clear = common dso_local global i32 0, align 4
@microbit_display_obj = common dso_local global i32 0, align 4
@BLANK_IMAGE = common dso_local global i32* null, align 8
@microbit_image_type = common dso_local global i32 0, align 4
@mp_type_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"not an image.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @draw_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_object(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i32, i32* @async_data, align 4
  %8 = call i64* @MP_STATE_PORT(i32 %7)
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %3, align 8
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @MP_OBJ_STOP_ITERATION, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @async_clear, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** @BLANK_IMAGE, align 8
  %20 = call i32 @microbit_display_show(i32* @microbit_display_obj, i32* %19)
  store i32 0, i32* @async_clear, align 4
  br label %23

21:                                               ; preds = %15
  %22 = call i32 (...) @async_stop()
  br label %23

23:                                               ; preds = %21, %18
  br label %57

24:                                               ; preds = %1
  %25 = load i64, i64* %2, align 8
  %26 = call i32* @mp_obj_get_type(i64 %25)
  %27 = icmp eq i32* %26, @microbit_image_type
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = load i64, i64* %2, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = call i32 @microbit_display_show(i32* %29, i32* %31)
  br label %56

33:                                               ; preds = %24
  %34 = load i64, i64* %2, align 8
  %35 = call i64 @mp_obj_is_str(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i64, i64* %2, align 8
  %39 = call i8* @mp_obj_str_get_data(i64 %38, i64* %4)
  store i8* %39, i8** %5, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp eq i64 %40, 1
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32*, i32** %3, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = call i32* @microbit_image_for_char(i8 signext %46)
  %48 = call i32 @microbit_display_show(i32* %43, i32* %47)
  br label %51

49:                                               ; preds = %37
  %50 = call i32 (...) @async_stop()
  br label %51

51:                                               ; preds = %49, %42
  br label %55

52:                                               ; preds = %33
  %53 = call i32 @mp_obj_new_exception_msg(i32* @mp_type_TypeError, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %53, i32* %6, align 4
  %54 = call i32 (...) @async_stop()
  br label %55

55:                                               ; preds = %52, %51
  br label %56

56:                                               ; preds = %55, %28
  br label %57

57:                                               ; preds = %56, %23
  ret void
}

declare dso_local i64* @MP_STATE_PORT(i32) #1

declare dso_local i32 @microbit_display_show(i32*, i32*) #1

declare dso_local i32 @async_stop(...) #1

declare dso_local i32* @mp_obj_get_type(i64) #1

declare dso_local i64 @mp_obj_is_str(i64) #1

declare dso_local i8* @mp_obj_str_get_data(i64, i64*) #1

declare dso_local i32* @microbit_image_for_char(i8 signext) #1

declare dso_local i32 @mp_obj_new_exception_msg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
