; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_make_raise_obj.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_make_raise_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"raise %p\0A\00", align 1
@mp_type_TypeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"exceptions must derive from BaseException\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_make_raise_obj(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @DEBUG_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @mp_obj_is_exception_type(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @mp_call_function_n_kw(i32 %10, i32 0, i32 0, i32* null)
  store i32 %11, i32* %2, align 4
  br label %20

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @mp_obj_is_exception_instance(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %2, align 4
  br label %20

18:                                               ; preds = %12
  %19 = call i32 @mp_obj_new_exception_msg(i32* @mp_type_TypeError, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %16, %9
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @DEBUG_printf(i8*, i32) #1

declare dso_local i64 @mp_obj_is_exception_type(i32) #1

declare dso_local i32 @mp_call_function_n_kw(i32, i32, i32, i32*) #1

declare dso_local i64 @mp_obj_is_exception_instance(i32) #1

declare dso_local i32 @mp_obj_new_exception_msg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
