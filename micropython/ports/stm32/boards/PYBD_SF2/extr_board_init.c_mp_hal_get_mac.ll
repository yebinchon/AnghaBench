; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/boards/PYBD_SF2/extr_board_init.c_mp_hal_get_mac.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/boards/PYBD_SF2/extr_board_init.c_mp_hal_get_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@OTP = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_hal_get_mac(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @OTP, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 209
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @OTP, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 72
  br i1 %16, label %17, label %44

17:                                               ; preds = %9
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @OTP, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 74
  br i1 %24, label %25, label %44

25:                                               ; preds = %17
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @OTP, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 48
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @OTP, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @memcpy(i32* %34, i8* %37, i32 6)
  %39 = load i32, i32* %3, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %48

44:                                               ; preds = %25, %17, %9, %2
  %45 = load i32, i32* %3, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @mp_hal_generate_laa_mac(i32 %45, i32* %46)
  br label %48

48:                                               ; preds = %44, %33
  ret void
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @mp_hal_generate_laa_mac(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
