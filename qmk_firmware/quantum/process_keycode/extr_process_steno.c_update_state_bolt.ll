; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_steno.c_update_state_bolt.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_steno.c_update_state_bolt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@boltmap = common dso_local global i64 0, align 8
@state = common dso_local global i64* null, align 8
@chord = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @update_state_bolt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_state_bolt(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @boltmap, align 8
  %7 = load i64, i64* %3, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i64 @pgm_read_byte(i64 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64*, i64** @state, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @TXB_GET_GROUP(i64 %15)
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = or i64 %18, %13
  store i64 %19, i64* %17, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64*, i64** @chord, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @TXB_GET_GROUP(i64 %22)
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = or i64 %25, %20
  store i64 %26, i64* %24, align 8
  br label %36

27:                                               ; preds = %2
  %28 = load i64, i64* %5, align 8
  %29 = xor i64 %28, -1
  %30 = load i64*, i64** @state, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @TXB_GET_GROUP(i64 %31)
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = and i64 %34, %29
  store i64 %35, i64* %33, align 8
  br label %36

36:                                               ; preds = %27, %12
  ret i32 0
}

declare dso_local i64 @pgm_read_byte(i64) #1

declare dso_local i64 @TXB_GET_GROUP(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
