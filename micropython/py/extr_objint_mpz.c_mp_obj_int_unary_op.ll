; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_objint_mpz.c_mp_obj_int_unary_op.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_objint_mpz.c_mp_obj_int_unary_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@MP_OBJ_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_obj_int_unary_op(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_13__* @MP_OBJ_TO_PTR(i32 %11)
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %6, align 8
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %66 [
    i32 132, label %14
    i32 131, label %22
    i32 128, label %27
    i32 129, label %29
    i32 130, label %38
    i32 133, label %47
  ]

14:                                               ; preds = %2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = call i32 @mpz_is_zero(%struct.TYPE_14__* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @mp_obj_new_bool(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %68

22:                                               ; preds = %2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = call i32 @mpz_hash(%struct.TYPE_14__* %24)
  %26 = call i32 @MP_OBJ_NEW_SMALL_INT(i32 %25)
  store i32 %26, i32* %3, align 4
  br label %68

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %3, align 4
  br label %68

29:                                               ; preds = %2
  %30 = call %struct.TYPE_13__* (...) @mp_obj_int_new_mpz()
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** %7, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = call i32 @mpz_neg_inpl(%struct.TYPE_14__* %32, %struct.TYPE_14__* %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = call i32 @MP_OBJ_FROM_PTR(%struct.TYPE_13__* %36)
  store i32 %37, i32* %3, align 4
  br label %68

38:                                               ; preds = %2
  %39 = call %struct.TYPE_13__* (...) @mp_obj_int_new_mpz()
  store %struct.TYPE_13__* %39, %struct.TYPE_13__** %8, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = call i32 @mpz_not_inpl(%struct.TYPE_14__* %41, %struct.TYPE_14__* %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = call i32 @MP_OBJ_FROM_PTR(%struct.TYPE_13__* %45)
  store i32 %46, i32* %3, align 4
  br label %68

47:                                               ; preds = %2
  %48 = load i32, i32* %5, align 4
  %49 = call %struct.TYPE_13__* @MP_OBJ_TO_PTR(i32 %48)
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %9, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %3, align 4
  br label %68

57:                                               ; preds = %47
  %58 = call %struct.TYPE_13__* (...) @mp_obj_int_new_mpz()
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %10, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = call i32 @mpz_abs_inpl(%struct.TYPE_14__* %60, %struct.TYPE_14__* %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %65 = call i32 @MP_OBJ_FROM_PTR(%struct.TYPE_13__* %64)
  store i32 %65, i32* %3, align 4
  br label %68

66:                                               ; preds = %2
  %67 = load i32, i32* @MP_OBJ_NULL, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %57, %55, %38, %29, %27, %22, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_13__* @MP_OBJ_TO_PTR(i32) #1

declare dso_local i32 @mp_obj_new_bool(i32) #1

declare dso_local i32 @mpz_is_zero(%struct.TYPE_14__*) #1

declare dso_local i32 @MP_OBJ_NEW_SMALL_INT(i32) #1

declare dso_local i32 @mpz_hash(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @mp_obj_int_new_mpz(...) #1

declare dso_local i32 @mpz_neg_inpl(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @MP_OBJ_FROM_PTR(%struct.TYPE_13__*) #1

declare dso_local i32 @mpz_not_inpl(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @mpz_abs_inpl(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
