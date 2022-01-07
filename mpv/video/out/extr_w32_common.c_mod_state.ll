; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_mod_state.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_w32_common.c_mod_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_w32_state = type { i32 }

@VK_RMENU = common dso_local global i32 0, align 4
@VK_LCONTROL = common dso_local global i32 0, align 4
@VK_RCONTROL = common dso_local global i32 0, align 4
@MP_KEY_MODIFIER_CTRL = common dso_local global i32 0, align 4
@VK_SHIFT = common dso_local global i32 0, align 4
@MP_KEY_MODIFIER_SHIFT = common dso_local global i32 0, align 4
@VK_LMENU = common dso_local global i32 0, align 4
@MP_KEY_MODIFIER_ALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo_w32_state*)* @mod_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mod_state(%struct.vo_w32_state* %0) #0 {
  %2 = alloca %struct.vo_w32_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vo_w32_state* %0, %struct.vo_w32_state** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.vo_w32_state*, %struct.vo_w32_state** %2, align 8
  %6 = getelementptr inbounds %struct.vo_w32_state, %struct.vo_w32_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @mp_input_use_alt_gr(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, i32* @VK_RMENU, align 4
  %12 = call i64 @key_state(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* @VK_LCONTROL, align 4
  %16 = call i64 @key_state(i32 %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %14, %10, %1
  %19 = phi i1 [ false, %10 ], [ false, %1 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @VK_RCONTROL, align 4
  %22 = call i64 @key_state(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @VK_LCONTROL, align 4
  %26 = call i64 @key_state(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28, %18
  %32 = load i32, i32* @MP_KEY_MODIFIER_CTRL, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %28, %24
  %36 = load i32, i32* @VK_SHIFT, align 4
  %37 = call i64 @key_state(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @MP_KEY_MODIFIER_SHIFT, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @VK_LMENU, align 4
  %45 = call i64 @key_state(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @VK_RMENU, align 4
  %49 = call i64 @key_state(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51, %43
  %55 = load i32, i32* @MP_KEY_MODIFIER_ALT, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %51, %47
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @mp_input_use_alt_gr(i32) #1

declare dso_local i64 @key_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
