; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_objstr.c_mp_obj_str_get_data.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_objstr.c_mp_obj_str_get_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s = common dso_local global i64 0, align 8
@l = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mp_obj_str_get_data(i32 %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @mp_obj_is_str_or_bytes(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i64, i64* @s, align 8
  %12 = load i64, i64* @l, align 8
  %13 = call i32 @GET_STR_DATA_LEN(i32 %10, i64 %11, i64 %12)
  %14 = load i64, i64* @l, align 8
  %15 = load i64*, i64** %5, align 8
  store i64 %14, i64* %15, align 8
  %16 = load i64, i64* @s, align 8
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %3, align 8
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @bad_implicit_conversion(i32 %19)
  br label %21

21:                                               ; preds = %9, %18
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

declare dso_local i64 @mp_obj_is_str_or_bytes(i32) #1

declare dso_local i32 @GET_STR_DATA_LEN(i32, i64, i64) #1

declare dso_local i32 @bad_implicit_conversion(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
