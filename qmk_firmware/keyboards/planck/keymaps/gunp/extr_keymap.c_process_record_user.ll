; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/gunp/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/keymaps/gunp/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@FN_A = common dso_local global i32 0, align 4
@FN_D = common dso_local global i32 0, align 4
@cur_layer_code = common dso_local global i32 0, align 4
@LY_0000 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @FN_A, align 4
  %9 = sub nsw i32 %7, %8
  %10 = sub nsw i32 3, %9
  %11 = shl i32 1, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = call i32 @process_record_dynamic_macro(i32 %12, %struct.TYPE_6__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load i32, i32* @FN_A, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @FN_D, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load i32, i32* @cur_layer_code, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %31, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %25
  %38 = load i32, i32* @cur_layer_code, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* @LY_0000, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @layer_off(i64 %41)
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @cur_layer_code, align 4
  %45 = xor i32 %44, %43
  store i32 %45, i32* @cur_layer_code, align 4
  %46 = load i32, i32* @cur_layer_code, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @LY_0000, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @layer_on(i64 %49)
  br label %51

51:                                               ; preds = %37, %25
  store i32 0, i32* %3, align 4
  br label %53

52:                                               ; preds = %21, %17
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51, %16
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @process_record_dynamic_macro(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @layer_off(i64) #1

declare dso_local i32 @layer_on(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
