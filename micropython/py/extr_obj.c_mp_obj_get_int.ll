; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_get_int.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_get_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp_const_false = common dso_local global i64 0, align 8
@mp_const_true = common dso_local global i64 0, align 8
@mp_type_int = common dso_local global i32 0, align 4
@MP_UNARY_OP_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_obj_get_int(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @mp_const_false, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @mp_const_true, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %34

14:                                               ; preds = %9
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @mp_obj_is_small_int(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @MP_OBJ_SMALL_INT_VALUE(i64 %19)
  store i32 %20, i32* %2, align 4
  br label %34

21:                                               ; preds = %14
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @mp_obj_is_type(i64 %22, i32* @mp_type_int)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @mp_obj_int_get_checked(i64 %26)
  store i32 %27, i32* %2, align 4
  br label %34

28:                                               ; preds = %21
  %29 = load i32, i32* @MP_UNARY_OP_INT, align 4
  %30 = load i64, i64* %3, align 8
  %31 = call i64 @mp_unary_op(i32 %29, i64 %30)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @mp_obj_int_get_checked(i64 %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %28, %25, %18, %13, %8
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @mp_obj_is_small_int(i64) #1

declare dso_local i32 @MP_OBJ_SMALL_INT_VALUE(i64) #1

declare dso_local i64 @mp_obj_is_type(i64, i32*) #1

declare dso_local i32 @mp_obj_int_get_checked(i64) #1

declare dso_local i64 @mp_unary_op(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
