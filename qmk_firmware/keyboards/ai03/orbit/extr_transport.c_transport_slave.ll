; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ai03/orbit/extr_transport.c_transport_slave.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ai03/orbit/extr_transport.c_transport_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i32 }

@ROWS_PER_HAND = common dso_local global i32 0, align 4
@serial_s2m_buffer = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@slave_layer_cache = common dso_local global i64 0, align 8
@serial_m2s_buffer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@slave_nlock_cache = common dso_local global i64 0, align 8
@slave_clock_cache = common dso_local global i64 0, align 8
@slave_slock_cache = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transport_slave(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @ROWS_PER_HAND, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @serial_s2m_buffer, i32 0, i32 0), align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 %13, i32* %17, align 4
  br label %18

18:                                               ; preds = %8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  %22 = load i64, i64* @slave_layer_cache, align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_m2s_buffer, i32 0, i32 0), align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_m2s_buffer, i32 0, i32 0), align 8
  store i64 %26, i64* @slave_layer_cache, align 8
  %27 = load i64, i64* @slave_layer_cache, align 8
  %28 = call i32 @set_layer_indicators(i64 %27)
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i64, i64* @slave_nlock_cache, align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_m2s_buffer, i32 0, i32 1), align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_m2s_buffer, i32 0, i32 1), align 8
  store i64 %34, i64* @slave_nlock_cache, align 8
  %35 = load i64, i64* @slave_nlock_cache, align 8
  %36 = call i32 @led_toggle(i32 3, i64 %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i64, i64* @slave_clock_cache, align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_m2s_buffer, i32 0, i32 2), align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_m2s_buffer, i32 0, i32 2), align 8
  store i64 %42, i64* @slave_clock_cache, align 8
  %43 = load i64, i64* @slave_clock_cache, align 8
  %44 = call i32 @led_toggle(i32 4, i64 %43)
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i64, i64* @slave_slock_cache, align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_m2s_buffer, i32 0, i32 3), align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @serial_m2s_buffer, i32 0, i32 3), align 8
  store i64 %50, i64* @slave_slock_cache, align 8
  %51 = load i64, i64* @slave_slock_cache, align 8
  %52 = call i32 @led_toggle(i32 5, i64 %51)
  br label %53

53:                                               ; preds = %49, %45
  ret void
}

declare dso_local i32 @set_layer_indicators(i64) #1

declare dso_local i32 @led_toggle(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
