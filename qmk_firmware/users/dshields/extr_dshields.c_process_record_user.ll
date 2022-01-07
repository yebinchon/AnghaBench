; ModuleID = '/home/carl/AnghaBench/qmk_firmware/users/dshields/extr_dshields.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/users/dshields/extr_dshields.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@KC_ESC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i64 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @KC_ESC, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = call i32 (...) @get_oneshot_mods()
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = call i32 (...) @has_oneshot_mods_timed_out()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = call i32 (...) @clear_oneshot_mods()
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @unregister_mods(i32 %25)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %20, %17
  %28 = call i32 (...) @get_oneshot_locked_mods()
  store i32 %28, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call i32 (...) @clear_oneshot_locked_mods()
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @unregister_mods(i32 %32)
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = call i64 (...) @is_oneshot_layer_active()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @layer_clear()
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %11, %2
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %39
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @get_oneshot_mods(...) #1

declare dso_local i32 @has_oneshot_mods_timed_out(...) #1

declare dso_local i32 @clear_oneshot_mods(...) #1

declare dso_local i32 @unregister_mods(i32) #1

declare dso_local i32 @get_oneshot_locked_mods(...) #1

declare dso_local i32 @clear_oneshot_locked_mods(...) #1

declare dso_local i64 @is_oneshot_layer_active(...) #1

declare dso_local i32 @layer_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
