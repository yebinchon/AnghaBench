; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_is_true.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_obj.c_mp_obj_is_true.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 (i32, i64)* }

@mp_const_false = common dso_local global i64 0, align 8
@mp_const_true = common dso_local global i64 0, align 8
@mp_const_none = common dso_local global i64 0, align 8
@MP_UNARY_OP_BOOL = common dso_local global i32 0, align 4
@MP_OBJ_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_obj_is_true(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @mp_const_false, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @mp_const_true, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %66

16:                                               ; preds = %11
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @mp_const_none, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %66

21:                                               ; preds = %16
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @mp_obj_is_small_int(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @MP_OBJ_NEW_SMALL_INT(i32 0)
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %66

30:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %66

31:                                               ; preds = %21
  %32 = load i64, i64* %3, align 8
  %33 = call %struct.TYPE_3__* @mp_obj_get_type(i64 %32)
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %4, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64 (i32, i64)*, i64 (i32, i64)** %35, align 8
  %37 = icmp ne i64 (i32, i64)* %36, null
  br i1 %37, label %38, label %54

38:                                               ; preds = %31
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64 (i32, i64)*, i64 (i32, i64)** %40, align 8
  %42 = load i32, i32* @MP_UNARY_OP_BOOL, align 4
  %43 = load i64, i64* %3, align 8
  %44 = call i64 %41(i32 %42, i64 %43)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @MP_OBJ_NULL, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @mp_const_true, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %2, align 4
  br label %66

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53, %31
  %55 = load i64, i64* %3, align 8
  %56 = call i64 @mp_obj_len_maybe(i64 %55)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @MP_OBJ_NULL, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @MP_OBJ_NEW_SMALL_INT(i32 0)
  %63 = icmp ne i64 %61, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %2, align 4
  br label %66

65:                                               ; preds = %54
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %60, %48, %30, %29, %20, %15, %10
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @mp_obj_is_small_int(i64) #1

declare dso_local i64 @MP_OBJ_NEW_SMALL_INT(i32) #1

declare dso_local %struct.TYPE_3__* @mp_obj_get_type(i64) #1

declare dso_local i64 @mp_obj_len_maybe(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
