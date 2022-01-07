; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/kbdfans/kbd67/hotswap/keymaps/zunger/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/kbdfans/kbd67/hotswap/keymaps/zunger/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@process_record_user.shifted = internal global i32 0, align 4
@process_record_user.magic = internal global i32 0, align 4
@KC_LSHIFT = common dso_local global i64 0, align 8
@KC_RSHIFT = common dso_local global i64 0, align 8
@MAGIC = common dso_local global i64 0, align 8
@RESET = common dso_local global i64 0, align 8
@layer_state = common dso_local global i32 0, align 4
@LAYER_MASK = common dso_local global i32 0, align 4
@SHIFTMAGIC_LAYER = common dso_local global i32 0, align 4
@MAGIC_LAYER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i64 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @KC_LSHIFT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @KC_RSHIFT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10, %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* @process_record_user.shifted, align 4
  br label %46

19:                                               ; preds = %10
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @MAGIC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @process_record_user.magic, align 4
  br label %45

28:                                               ; preds = %19
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @RESET, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @process_record_user.shifted, align 4
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %38, %32
  %42 = phi i1 [ false, %32 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %71

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %23
  br label %46

46:                                               ; preds = %45, %14
  %47 = load i32, i32* @layer_state, align 4
  %48 = load i32, i32* @LAYER_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @process_record_user.magic, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load i32, i32* @process_record_user.shifted, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @SHIFTMAGIC_LAYER, align 4
  br label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @MAGIC_LAYER, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %59, %46
  %64 = load i32, i32* @layer_state, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @layer_state_set(i32 %68)
  br label %70

70:                                               ; preds = %67, %63
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %41
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @layer_state_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
