; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_vk2ascii.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_vk2ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CTRL_A = common dso_local global i16 0, align 2
@CTRL_Z = common dso_local global i16 0, align 2
@CTRL_FLAG = common dso_local global i16 0, align 2
@VK_MENU = common dso_local global i32 0, align 4
@ALT_FLAG = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vk2ascii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vk2ascii(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca [256 x i32], align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 @GetKeyboardLayout(i32 0)
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %10 = call i32 @GetKeyboardState(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %78

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @MapVirtualKeyEx(i32 %14, i32 0, i32 %15)
  store i32 %16, i32* %5, align 4
  store i16 0, i16* %4, align 2
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @ToAsciiEx(i32 %17, i32 %18, i32* %19, i16* %4, i32 0, i32 %20)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %77

23:                                               ; preds = %13
  %24 = load i16, i16* %4, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp sge i32 %25, 97
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i16, i16* %4, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp sle i32 %29, 122
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i16, i16* %4, align 2
  %33 = zext i16 %32 to i32
  %34 = sub nsw i32 %33, 97
  %35 = add nsw i32 %34, 65
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %4, align 2
  br label %37

37:                                               ; preds = %31, %27, %23
  %38 = load i32, i32* %3, align 4
  %39 = icmp uge i32 %38, 65
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = icmp ule i32 %41, 90
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  %44 = load i16, i16* %4, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* @CTRL_A, align 2
  %47 = zext i16 %46 to i32
  %48 = icmp sge i32 %45, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load i16, i16* %4, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* @CTRL_Z, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp sle i32 %51, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i16, i16* @CTRL_FLAG, align 2
  %57 = zext i16 %56 to i32
  %58 = load i16, i16* %4, align 2
  %59 = zext i16 %58 to i32
  %60 = or i32 %59, %57
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %4, align 2
  br label %74

62:                                               ; preds = %49, %43, %40, %37
  %63 = load i32, i32* @VK_MENU, align 4
  %64 = call i64 @GetAsyncKeyState(i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i16, i16* @ALT_FLAG, align 2
  %68 = zext i16 %67 to i32
  %69 = load i16, i16* %4, align 2
  %70 = zext i16 %69 to i32
  %71 = or i32 %70, %68
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %4, align 2
  br label %73

73:                                               ; preds = %66, %62
  br label %74

74:                                               ; preds = %73, %55
  %75 = load i16, i16* %4, align 2
  %76 = zext i16 %75 to i32
  store i32 %76, i32* %2, align 4
  br label %78

77:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %74, %12
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @GetKeyboardLayout(i32) #1

declare dso_local i32 @GetKeyboardState(i32*) #1

declare dso_local i32 @MapVirtualKeyEx(i32, i32, i32) #1

declare dso_local i64 @ToAsciiEx(i32, i32, i32*, i16*, i32, i32) #1

declare dso_local i64 @GetAsyncKeyState(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
