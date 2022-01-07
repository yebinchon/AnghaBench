; ModuleID = '/home/carl/AnghaBench/mpv/audio/filter/extr_af_scaletempo.c_command.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/filter/extr_af_scaletempo.c_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mp_filter_command = type { i64, i32 }

@MP_FILTER_COMMAND_SET_SPEED = common dso_local global i64 0, align 8
@SCALE_TEMPO = common dso_local global i32 0, align 4
@SCALE_PITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*, %struct.mp_filter_command*)* @command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command(%struct.mp_filter* %0, %struct.mp_filter_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca %struct.mp_filter_command*, align 8
  %6 = alloca %struct.priv*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store %struct.mp_filter_command* %1, %struct.mp_filter_command** %5, align 8
  %7 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %8 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %7, i32 0, i32 0
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %6, align 8
  %10 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %11 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MP_FILTER_COMMAND_SET_SPEED, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %2
  %16 = load %struct.priv*, %struct.priv** %6, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SCALE_TEMPO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %15
  %25 = load %struct.priv*, %struct.priv** %6, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SCALE_PITCH, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %58

34:                                               ; preds = %24
  %35 = load %struct.priv*, %struct.priv** %6, align 8
  %36 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %37 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @update_speed(%struct.priv* %35, i32 %38)
  store i32 1, i32* %3, align 4
  br label %58

40:                                               ; preds = %15
  %41 = load %struct.priv*, %struct.priv** %6, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SCALE_PITCH, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.priv*, %struct.priv** %6, align 8
  %51 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %52 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @update_speed(%struct.priv* %50, i32 %53)
  store i32 0, i32* %3, align 4
  br label %58

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56, %2
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %49, %34, %33
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @update_speed(%struct.priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
