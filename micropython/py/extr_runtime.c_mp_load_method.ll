; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_load_method.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_runtime.c_mp_load_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"load method %p.%s\0A\00", align 1
@MP_OBJ_NULL = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING_TERSE = common dso_local global i64 0, align 8
@mp_type_AttributeError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no such attribute\00", align 1
@mp_type_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"type object '%q' has no attribute '%q'\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"'%s' object has no attribute '%q'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_load_method(i64 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @qstr_str(i32 %8)
  %10 = call i32 @DEBUG_OP_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %7, i32 %9)
  %11 = load i64, i64* %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i64*, i64** %6, align 8
  %14 = call i32 @mp_load_method_maybe(i64 %11, i32 %12, i64* %13)
  %15 = load i64*, i64** %6, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MP_OBJ_NULL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %3
  %21 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %22 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @mp_raise_msg(i32* @mp_type_AttributeError, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %46

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @mp_obj_is_type(i64 %27, i32* @mp_type_type)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @MP_OBJ_TO_PTR(i64 %31)
  %33 = inttoptr i64 %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_AttributeError, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %36)
  %38 = call i32 @nlr_raise(i32 %37)
  br label %45

39:                                               ; preds = %26
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @mp_obj_get_type_str(i64 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_AttributeError, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 %42)
  %44 = call i32 @nlr_raise(i32 %43)
  br label %45

45:                                               ; preds = %39, %30
  br label %46

46:                                               ; preds = %45, %24
  br label %47

47:                                               ; preds = %46, %3
  ret void
}

declare dso_local i32 @DEBUG_OP_printf(i8*, i64, i32) #1

declare dso_local i32 @qstr_str(i32) #1

declare dso_local i32 @mp_load_method_maybe(i64, i32, i64*) #1

declare dso_local i32 @mp_raise_msg(i32*, i8*) #1

declare dso_local i64 @mp_obj_is_type(i64, i32*) #1

declare dso_local i32 @nlr_raise(i32) #1

declare dso_local i32 @mp_obj_new_exception_msg_varg(i32*, i8*, i32, i32) #1

declare dso_local i64 @MP_OBJ_TO_PTR(i64) #1

declare dso_local i32 @mp_obj_get_type_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
