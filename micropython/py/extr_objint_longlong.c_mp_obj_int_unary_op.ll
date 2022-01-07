; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_objint_longlong.c_mp_obj_int_unary_op.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_objint_longlong.c_mp_obj_int_unary_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }

@MP_OBJ_NULL = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @mp_obj_int_unary_op(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %6, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %58 [
    i32 132, label %10
    i32 131, label %17
    i32 128, label %22
    i32 129, label %24
    i32 130, label %30
    i32 133, label %36
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call %struct.TYPE_13__* @mp_obj_new_bool(i32 %15)
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %3, align 8
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_13__* @MP_OBJ_NEW_SMALL_INT(i32 %20)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %3, align 8
  br label %60

22:                                               ; preds = %2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %3, align 8
  br label %60

24:                                               ; preds = %2
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.TYPE_13__* @mp_obj_new_int_from_ll(i32 %28)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %3, align 8
  br label %60

30:                                               ; preds = %2
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %33, -1
  %35 = call %struct.TYPE_13__* @mp_obj_new_int_from_ll(i32 %34)
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %3, align 8
  br label %60

36:                                               ; preds = %2
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = call %struct.TYPE_13__* @MP_OBJ_TO_PTR(%struct.TYPE_13__* %37)
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %7, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %3, align 8
  br label %60

45:                                               ; preds = %36
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_13__* @mp_obj_new_int_from_ll(i32 %48)
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %7, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 0, %52
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = call %struct.TYPE_13__* @MP_OBJ_FROM_PTR(%struct.TYPE_13__* %56)
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %3, align 8
  br label %60

58:                                               ; preds = %2
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MP_OBJ_NULL, align 8
  store %struct.TYPE_13__* %59, %struct.TYPE_13__** %3, align 8
  br label %60

60:                                               ; preds = %58, %45, %43, %30, %24, %22, %17, %10
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %61
}

declare dso_local %struct.TYPE_13__* @mp_obj_new_bool(i32) #1

declare dso_local %struct.TYPE_13__* @MP_OBJ_NEW_SMALL_INT(i32) #1

declare dso_local %struct.TYPE_13__* @mp_obj_new_int_from_ll(i32) #1

declare dso_local %struct.TYPE_13__* @MP_OBJ_TO_PTR(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @MP_OBJ_FROM_PTR(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
