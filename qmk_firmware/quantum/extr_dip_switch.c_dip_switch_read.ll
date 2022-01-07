; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_dip_switch.c_dip_switch_read.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_dip_switch.c_dip_switch_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMBER_OF_DIP_SWITCHES = common dso_local global i64 0, align 8
@dip_switch_pad = common dso_local global i32* null, align 8
@dip_switch_state = common dso_local global i64* null, align 8
@last_dip_switch_state = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dip_switch_read(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %52, %1
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @NUMBER_OF_DIP_SWITCHES, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %55

10:                                               ; preds = %6
  %11 = load i32*, i32** @dip_switch_pad, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @readPin(i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = load i64*, i64** @dip_switch_state, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64 %19, i64* %22, align 8
  %23 = load i64*, i64** @dip_switch_state, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = shl i64 %26, %27
  %29 = load i64, i64* %4, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %4, align 8
  %31 = load i64*, i64** @last_dip_switch_state, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** @dip_switch_state, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = xor i64 %34, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %10
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41, %10
  store i32 1, i32* %3, align 4
  %45 = load i64, i64* %5, align 8
  %46 = load i64*, i64** @dip_switch_state, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @dip_switch_update_kb(i64 %45, i64 %49)
  br label %51

51:                                               ; preds = %44, %41
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %6

55:                                               ; preds = %6
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @dip_switch_update_mask_kb(i64 %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i64*, i64** @last_dip_switch_state, align 8
  %63 = load i64*, i64** @dip_switch_state, align 8
  %64 = call i32 @memcpy(i64* %62, i64* %63, i32 8)
  ret void
}

declare dso_local i32 @readPin(i32) #1

declare dso_local i32 @dip_switch_update_kb(i64, i64) #1

declare dso_local i32 @dip_switch_update_mask_kb(i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
