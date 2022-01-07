; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_objint_mpz.c_mp_obj_int_get_checked.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_objint_mpz.c_mp_obj_int_get_checked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@mp_type_OverflowError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"overflow converting long int to machine word\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_obj_int_get_checked(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @mp_obj_is_small_int(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @MP_OBJ_SMALL_INT_VALUE(i32 %10)
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.TYPE_3__* @MP_OBJ_TO_PTR(i32 %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i64 @mpz_as_int_checked(i32* %16, i32* %5)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %12
  %22 = call i32 @mp_raise_msg(i32* @mp_type_OverflowError, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %9, %19, %23
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @mp_obj_is_small_int(i32) #1

declare dso_local i32 @MP_OBJ_SMALL_INT_VALUE(i32) #1

declare dso_local %struct.TYPE_3__* @MP_OBJ_TO_PTR(i32) #1

declare dso_local i64 @mpz_as_int_checked(i32*, i32*) #1

declare dso_local i32 @mp_raise_msg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
