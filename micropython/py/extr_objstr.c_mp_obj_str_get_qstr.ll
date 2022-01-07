; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_objstr.c_mp_obj_str_get_qstr.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_objstr.c_mp_obj_str_get_qstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@mp_type_str = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_obj_str_get_qstr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @mp_obj_is_qstr(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @MP_OBJ_QSTR_VALUE(i32 %9)
  store i32 %10, i32* %2, align 4
  br label %30

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @mp_obj_is_type(i32 %12, i32* @mp_type_str)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.TYPE_3__* @MP_OBJ_TO_PTR(i32 %16)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %4, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @qstr_from_strn(i8* %21, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %30

26:                                               ; preds = %11
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @bad_implicit_conversion(i32 %27)
  br label %29

29:                                               ; preds = %26
  br label %30

30:                                               ; preds = %8, %15, %29
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @mp_obj_is_qstr(i32) #1

declare dso_local i32 @MP_OBJ_QSTR_VALUE(i32) #1

declare dso_local i64 @mp_obj_is_type(i32, i32*) #1

declare dso_local %struct.TYPE_3__* @MP_OBJ_TO_PTR(i32) #1

declare dso_local i32 @qstr_from_strn(i8*, i32) #1

declare dso_local i32 @bad_implicit_conversion(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
