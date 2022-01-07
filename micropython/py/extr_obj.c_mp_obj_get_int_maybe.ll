; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_get_int_maybe.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_get_int_maybe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp_const_false = common dso_local global i64 0, align 8
@mp_const_true = common dso_local global i64 0, align 8
@mp_type_int = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_obj_get_int_maybe(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @mp_const_false, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  store i32 0, i32* %10, align 4
  br label %37

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @mp_const_true, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  store i32 1, i32* %16, align 4
  br label %36

17:                                               ; preds = %11
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @mp_obj_is_small_int(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @MP_OBJ_SMALL_INT_VALUE(i64 %22)
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  br label %35

25:                                               ; preds = %17
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @mp_obj_is_type(i64 %26, i32* @mp_type_int)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @mp_obj_int_get_checked(i64 %30)
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %34

33:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %38

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %21
  br label %36

36:                                               ; preds = %35, %15
  br label %37

37:                                               ; preds = %36, %9
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @mp_obj_is_small_int(i64) #1

declare dso_local i32 @MP_OBJ_SMALL_INT_VALUE(i64) #1

declare dso_local i64 @mp_obj_is_type(i64, i32*) #1

declare dso_local i32 @mp_obj_int_get_checked(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
