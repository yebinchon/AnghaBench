; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_check_device_present.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_alsa.c_check_device_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Device lost, trying to recover...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i32)* @check_device_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_device_present(%struct.ao* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ao*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.priv*, align 8
  store %struct.ao* %0, %struct.ao** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ao*, %struct.ao** %4, align 8
  %8 = getelementptr inbounds %struct.ao, %struct.ao* %7, i32 0, i32 0
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  %13 = icmp ne i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.priv*, %struct.priv** %6, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load %struct.ao*, %struct.ao** %4, align 8
  %22 = call i32 @MP_WARN(%struct.ao* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.ao*, %struct.ao** %4, align 8
  %24 = call i32 @ao_request_reload(%struct.ao* %23)
  %25 = load %struct.priv*, %struct.priv** %6, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %20, %15
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @MP_WARN(%struct.ao*, i8*) #1

declare dso_local i32 @ao_request_reload(%struct.ao*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
