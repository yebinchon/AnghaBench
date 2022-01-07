; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_key_lock.c_process_key_lock.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/process_keycode/extr_process_key_lock.c_process_key_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@KC_LOCK = common dso_local global i64 0, align 8
@watching = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_key_lock(i64* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = load i64, i64* %7, align 8
  %9 = call i64 @translate_keycode(i64 %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @IS_STANDARD_KEYCODE(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @KC_LOCK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* @watching, align 4
  store i32 1, i32* %3, align 4
  br label %66

24:                                               ; preds = %19, %15
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @KC_LOCK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* @watching, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* @watching, align 4
  store i32 0, i32* %3, align 4
  br label %66

33:                                               ; preds = %24
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @IS_STANDARD_KEYCODE(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load i32, i32* @watching, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  store i32 0, i32* @watching, align 4
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @SET_KEY_STATE(i64 %41)
  %43 = load i64, i64* %6, align 8
  %44 = load i64*, i64** %4, align 8
  store i64 %43, i64* %44, align 8
  store i32 1, i32* %3, align 4
  br label %66

45:                                               ; preds = %37
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @KEY_STATE(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @UNSET_KEY_STATE(i64 %50)
  store i32 0, i32* %3, align 4
  br label %66

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %33
  store i32 1, i32* %3, align 4
  br label %66

54:                                               ; preds = %2
  %55 = load i64, i64* %6, align 8
  %56 = call i64 @IS_STANDARD_KEYCODE(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @KEY_STATE(i64 %59)
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i1 [ false, %54 ], [ %61, %58 ]
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %53, %49, %40, %28, %23
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @translate_keycode(i64) #1

declare dso_local i64 @IS_STANDARD_KEYCODE(i64) #1

declare dso_local i32 @SET_KEY_STATE(i64) #1

declare dso_local i64 @KEY_STATE(i64) #1

declare dso_local i32 @UNSET_KEY_STATE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
