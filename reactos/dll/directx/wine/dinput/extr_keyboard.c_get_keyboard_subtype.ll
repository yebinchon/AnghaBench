; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_keyboard.c_get_keyboard_subtype.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_keyboard.c_get_keyboard_subtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIDEVTYPEKEYBOARD_PCENH = common dso_local global i32 0, align 4
@DIDEVTYPEKEYBOARD_JAPAN106 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unknown keyboard type=%u, subtype=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_keyboard_subtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_keyboard_subtype() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @GetKeyboardType(i32 0)
  store i32 %4, i32* %1, align 4
  %5 = call i32 @GetKeyboardType(i32 1)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %14, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp eq i32 %9, 7
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %0
  %15 = load i32, i32* @DIDEVTYPEKEYBOARD_PCENH, align 4
  store i32 %15, i32* %3, align 4
  br label %30

16:                                               ; preds = %11, %8
  %17 = load i32, i32* %1, align 4
  %18 = icmp eq i32 %17, 7
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @DIDEVTYPEKEYBOARD_JAPAN106, align 4
  store i32 %23, i32* %3, align 4
  br label %29

24:                                               ; preds = %19, %16
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @FIXME(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* @DIDEVTYPEKEYBOARD_PCENH, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %22
  br label %30

30:                                               ; preds = %29, %14
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @GetKeyboardType(i32) #1

declare dso_local i32 @FIXME(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
