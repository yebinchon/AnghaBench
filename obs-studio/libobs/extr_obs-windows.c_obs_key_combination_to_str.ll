; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-windows.c_obs_key_combination_to_str.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-windows.c_obs_key_combination_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@INTERACT_CONTROL_KEY = common dso_local global i32 0, align 4
@OBS_KEY_CONTROL = common dso_local global i64 0, align 8
@INTERACT_COMMAND_KEY = common dso_local global i32 0, align 4
@OBS_KEY_META = common dso_local global i64 0, align 8
@INTERACT_ALT_KEY = common dso_local global i32 0, align 4
@OBS_KEY_ALT = common dso_local global i64 0, align 8
@INTERACT_SHIFT_KEY = common dso_local global i32 0, align 4
@OBS_KEY_SHIFT = common dso_local global i64 0, align 8
@OBS_KEY_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_key_combination_to_str(i32 %0, i64 %1, %struct.dstr* %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca %struct.dstr*, align 8
  %6 = bitcast %struct.TYPE_3__* %4 to { i32, i64 }*
  %7 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %6, i32 0, i32 0
  store i32 %0, i32* %7, align 8
  %8 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %6, i32 0, i32 1
  store i64 %1, i64* %8, align 8
  store %struct.dstr* %2, %struct.dstr** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @INTERACT_CONTROL_KEY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i64, i64* @OBS_KEY_CONTROL, align 8
  %16 = load %struct.dstr*, %struct.dstr** %5, align 8
  %17 = call i32 @add_combo_key(i64 %15, %struct.dstr* %16)
  br label %18

18:                                               ; preds = %14, %3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @INTERACT_COMMAND_KEY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i64, i64* @OBS_KEY_META, align 8
  %26 = load %struct.dstr*, %struct.dstr** %5, align 8
  %27 = call i32 @add_combo_key(i64 %25, %struct.dstr* %26)
  br label %28

28:                                               ; preds = %24, %18
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @INTERACT_ALT_KEY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i64, i64* @OBS_KEY_ALT, align 8
  %36 = load %struct.dstr*, %struct.dstr** %5, align 8
  %37 = call i32 @add_combo_key(i64 %35, %struct.dstr* %36)
  br label %38

38:                                               ; preds = %34, %28
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @INTERACT_SHIFT_KEY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i64, i64* @OBS_KEY_SHIFT, align 8
  %46 = load %struct.dstr*, %struct.dstr** %5, align 8
  %47 = call i32 @add_combo_key(i64 %45, %struct.dstr* %46)
  br label %48

48:                                               ; preds = %44, %38
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @OBS_KEY_NONE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.dstr*, %struct.dstr** %5, align 8
  %57 = call i32 @add_combo_key(i64 %55, %struct.dstr* %56)
  br label %58

58:                                               ; preds = %53, %48
  ret void
}

declare dso_local i32 @add_combo_key(i64, %struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
