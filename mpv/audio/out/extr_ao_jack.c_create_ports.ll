; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_jack.c_create_ports.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_jack.c_create_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"out_%d\00", align 1
@JACK_DEFAULT_AUDIO_TYPE = common dso_local global i32 0, align 4
@JackPortIsOutput = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"not enough ports available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i32)* @create_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_ports(%struct.ao* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ao*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.priv*, align 8
  %7 = alloca [30 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ao*, %struct.ao** %4, align 8
  %10 = getelementptr inbounds %struct.ao, %struct.ao* %9, i32 0, i32 0
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %6, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %45, %2
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @snprintf(i8* %17, i32 30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.priv*, %struct.priv** %6, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %24 = load i32, i32* @JACK_DEFAULT_AUDIO_TYPE, align 4
  %25 = load i32, i32* @JackPortIsOutput, align 4
  %26 = call i32 @jack_port_register(i32 %22, i8* %23, i32 %24, i32 %25, i32 0)
  %27 = load %struct.priv*, %struct.priv** %6, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  %33 = load %struct.priv*, %struct.priv** %6, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %16
  %42 = load %struct.ao*, %struct.ao** %4, align 8
  %43 = call i32 @MP_FATAL(%struct.ao* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %52

44:                                               ; preds = %16
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %12

48:                                               ; preds = %12
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.priv*, %struct.priv** %6, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %3, align 4
  br label %53

52:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %48
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @jack_port_register(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @MP_FATAL(%struct.ao*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
