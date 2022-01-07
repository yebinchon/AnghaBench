; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_modbuiltins.c_mp_load_attr_default.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_modbuiltins.c_mp_load_attr_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_OBJ_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i64)* @mp_load_attr_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mp_load_attr_default(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [2 x i64], align 16
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @MP_OBJ_NULL, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 (i64, i32, i64*)* @mp_load_method, i32 (i64, i32, i64*)* @mp_load_method_maybe
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %17 = call i32 %13(i64 %14, i32 %15, i64* %16)
  %18 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %19 = load i64, i64* %18, align 16
  %20 = load i64, i64* @MP_OBJ_NULL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  store i64 %23, i64* %4, align 8
  br label %38

24:                                               ; preds = %3
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MP_OBJ_NULL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %31 = load i64, i64* %30, align 16
  store i64 %31, i64* %4, align 8
  br label %38

32:                                               ; preds = %24
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %34 = load i64, i64* %33, align 16
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @mp_obj_new_bound_meth(i64 %34, i64 %36)
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %32, %29, %22
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

declare dso_local i32 @mp_load_method(i64, i32, i64*) #1

declare dso_local i32 @mp_load_method_maybe(i64, i32, i64*) #1

declare dso_local i64 @mp_obj_new_bound_meth(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
