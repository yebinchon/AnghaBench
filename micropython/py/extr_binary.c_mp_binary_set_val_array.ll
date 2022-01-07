; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_binary.c_mp_binary_set_val_array.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_binary.c_mp_binary_set_val_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_ENDIANNESS_BIG = common dso_local global i32 0, align 4
@mp_type_int = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_binary_set_val_array(i8 signext %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i8, i8* %5, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %17 [
    i32 79, label %11
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 %12, i32* %16, align 4
  br label %24

17:                                               ; preds = %4
  %18 = load i8, i8* %5, align 1
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @mp_obj_get_int(i32 %21)
  %23 = call i32 @mp_binary_set_val_array_from_int(i8 signext %18, i8* %19, i64 %20, i32 %22)
  br label %24

24:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @mp_binary_set_val_array_from_int(i8 signext, i8*, i64, i32) #1

declare dso_local i32 @mp_obj_get_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
