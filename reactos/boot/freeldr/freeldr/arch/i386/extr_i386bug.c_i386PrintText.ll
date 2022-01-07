; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_i386bug.c_i386PrintText.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_i386bug.c_i386PrintText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i386_ScreenPosY = common dso_local global i32 0, align 4
@i386_ScreenPosX = common dso_local global i64 0, align 8
@SCREEN_ATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @i386PrintText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i386PrintText(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %1, %16, %19
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %2, align 8
  %7 = load i8, i8* %5, align 1
  store i8 %7, i8* %3, align 1
  %8 = load i8, i8* %3, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %27

12:                                               ; preds = %4
  %13 = load i8, i8* %3, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @i386_ScreenPosY, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @i386_ScreenPosY, align 4
  store i64 0, i64* @i386_ScreenPosX, align 8
  br label %4

19:                                               ; preds = %12
  %20 = load i8, i8* %3, align 1
  %21 = load i32, i32* @SCREEN_ATTR, align 4
  %22 = load i64, i64* @i386_ScreenPosX, align 8
  %23 = load i32, i32* @i386_ScreenPosY, align 4
  %24 = call i32 @MachVideoPutChar(i8 signext %20, i32 %21, i64 %22, i32 %23)
  %25 = load i64, i64* @i386_ScreenPosX, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* @i386_ScreenPosX, align 8
  br label %4

27:                                               ; preds = %11
  ret void
}

declare dso_local i32 @MachVideoPutChar(i8 signext, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
