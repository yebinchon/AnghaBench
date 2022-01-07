; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_sndio.c_control.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_sndio.c_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CONTROL_FALSE = common dso_local global i32 0, align 4
@SIO_MAXVOL = common dso_local global i32 0, align 4
@CONTROL_UNKNOWN = common dso_local global i32 0, align 4
@CONTROL_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*, i32, i8*)* @control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @control(%struct.ao* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ao*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.priv*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  store %struct.ao* %0, %struct.ao** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.ao*, %struct.ao** %5, align 8
  %11 = getelementptr inbounds %struct.ao, %struct.ao* %10, i32 0, i32 0
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %9, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %52 [
    i32 129, label %16
    i32 128, label %34
  ]

16:                                               ; preds = %3
  %17 = load %struct.priv*, %struct.priv** %8, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @CONTROL_FALSE, align 4
  store i32 %22, i32* %4, align 4
  br label %56

23:                                               ; preds = %16
  %24 = load %struct.priv*, %struct.priv** %8, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 100
  %28 = load i32, i32* @SIO_MAXVOL, align 4
  %29 = sdiv i32 %27, %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  br label %54

34:                                               ; preds = %3
  %35 = load %struct.priv*, %struct.priv** %8, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @CONTROL_FALSE, align 4
  store i32 %40, i32* %4, align 4
  br label %56

41:                                               ; preds = %34
  %42 = load %struct.priv*, %struct.priv** %8, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SIO_MAXVOL, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sdiv i32 %49, 100
  %51 = call i32 @sio_setvol(i32 %44, i32 %50)
  br label %54

52:                                               ; preds = %3
  %53 = load i32, i32* @CONTROL_UNKNOWN, align 4
  store i32 %53, i32* %4, align 4
  br label %56

54:                                               ; preds = %41, %23
  %55 = load i32, i32* @CONTROL_OK, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %52, %39, %21
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @sio_setvol(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
