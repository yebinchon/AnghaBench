; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_keyboard.c_map_dik_code.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_keyboard.c_map_dik_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAPVK_VK_TO_VSC = common dso_local global i32 0, align 4
@DIDEVTYPEKEYBOARD_JAPAN106 = common dso_local global i64 0, align 8
@DIK_CIRCUMFLEX = common dso_local global i64 0, align 8
@DIK_AT = common dso_local global i64 0, align 8
@DIK_LBRACKET = common dso_local global i64 0, align 8
@DIK_COLON = common dso_local global i64 0, align 8
@DIK_KANJI = common dso_local global i64 0, align 8
@DIK_RBRACKET = common dso_local global i64 0, align 8
@DIK_BACKSLASH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @map_dik_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @map_dik_code(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* @MAPVK_VK_TO_VSC, align 4
  %12 = call i64 @MapVirtualKeyW(i64 %10, i32 %11)
  store i64 %12, i64* %4, align 8
  br label %13

13:                                               ; preds = %9, %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @DIDEVTYPEKEYBOARD_JAPAN106, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  switch i64 %18, label %33 [
    i64 13, label %19
    i64 26, label %21
    i64 27, label %23
    i64 40, label %25
    i64 41, label %27
    i64 43, label %29
    i64 115, label %31
  ]

19:                                               ; preds = %17
  %20 = load i64, i64* @DIK_CIRCUMFLEX, align 8
  store i64 %20, i64* %4, align 8
  br label %33

21:                                               ; preds = %17
  %22 = load i64, i64* @DIK_AT, align 8
  store i64 %22, i64* %4, align 8
  br label %33

23:                                               ; preds = %17
  %24 = load i64, i64* @DIK_LBRACKET, align 8
  store i64 %24, i64* %4, align 8
  br label %33

25:                                               ; preds = %17
  %26 = load i64, i64* @DIK_COLON, align 8
  store i64 %26, i64* %4, align 8
  br label %33

27:                                               ; preds = %17
  %28 = load i64, i64* @DIK_KANJI, align 8
  store i64 %28, i64* %4, align 8
  br label %33

29:                                               ; preds = %17
  %30 = load i64, i64* @DIK_RBRACKET, align 8
  store i64 %30, i64* %4, align 8
  br label %33

31:                                               ; preds = %17
  %32 = load i64, i64* @DIK_BACKSLASH, align 8
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %17, %31, %29, %27, %25, %23, %21, %19
  br label %34

34:                                               ; preds = %33, %13
  %35 = load i64, i64* %4, align 8
  ret i64 %35
}

declare dso_local i64 @MapVirtualKeyW(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
