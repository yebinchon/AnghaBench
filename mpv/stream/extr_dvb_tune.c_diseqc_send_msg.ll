; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_diseqc_send_msg.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_dvb_tune.c_diseqc_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diseqc_cmd = type { i32, i32 }

@FE_SET_TONE = common dso_local global i32 0, align 4
@SEC_TONE_OFF = common dso_local global i32* null, align 8
@FE_SET_VOLTAGE = common dso_local global i32 0, align 4
@FE_DISEQC_SEND_MASTER_CMD = common dso_local global i32 0, align 4
@FE_DISEQC_SEND_BURST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.diseqc_cmd*, i32*, i32*)* @diseqc_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diseqc_send_msg(i32 %0, i32* %1, %struct.diseqc_cmd* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.diseqc_cmd*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store %struct.diseqc_cmd* %2, %struct.diseqc_cmd** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @FE_SET_TONE, align 4
  %14 = load i32*, i32** @SEC_TONE_OFF, align 8
  %15 = call i64 @ioctl(i32 %12, i32 %13, i32* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %57

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @FE_SET_VOLTAGE, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @ioctl(i32 %19, i32 %20, i32* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %6, align 4
  br label %57

25:                                               ; preds = %18
  %26 = call i32 @usleep(i32 15000)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @FE_DISEQC_SEND_MASTER_CMD, align 4
  %29 = load %struct.diseqc_cmd*, %struct.diseqc_cmd** %9, align 8
  %30 = getelementptr inbounds %struct.diseqc_cmd, %struct.diseqc_cmd* %29, i32 0, i32 1
  %31 = call i64 @ioctl(i32 %27, i32 %28, i32* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 -1, i32* %6, align 4
  br label %57

34:                                               ; preds = %25
  %35 = load %struct.diseqc_cmd*, %struct.diseqc_cmd** %9, align 8
  %36 = getelementptr inbounds %struct.diseqc_cmd, %struct.diseqc_cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 1000
  %39 = call i32 @usleep(i32 %38)
  %40 = call i32 @usleep(i32 15000)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @FE_DISEQC_SEND_BURST, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = call i64 @ioctl(i32 %41, i32 %42, i32* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store i32 -1, i32* %6, align 4
  br label %57

47:                                               ; preds = %34
  %48 = call i32 @usleep(i32 15000)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @FE_SET_TONE, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = call i64 @ioctl(i32 %49, i32 %50, i32* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 -1, i32* %6, align 4
  br label %57

55:                                               ; preds = %47
  %56 = call i32 @usleep(i32 100000)
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %54, %46, %33, %24, %17
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
