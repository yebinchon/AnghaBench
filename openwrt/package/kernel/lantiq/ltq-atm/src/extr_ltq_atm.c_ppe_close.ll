; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_ppe_close.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-atm/src/extr_ltq_atm.c_ppe_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.port*, %struct.connection* }
%struct.port = type { i32 }
%struct.connection = type { i64, i64, i64, i32* }
%struct.atm_vcc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"can't find vcc\0A\00", align 1
@g_atm_priv_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@PPE_MAILBOX_IGU1_INT = common dso_local global i32 0, align 4
@g_dma_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*)* @ppe_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppe_close(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.port*, align 8
  %5 = alloca %struct.connection*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %6 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %7 = icmp eq %struct.atm_vcc* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %71

9:                                                ; preds = %1
  %10 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %11 = call i32 @find_vcc(%struct.atm_vcc* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %70

16:                                               ; preds = %9
  %17 = load %struct.connection*, %struct.connection** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 2), align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %17, i64 %19
  store %struct.connection* %20, %struct.connection** %5, align 8
  %21 = load %struct.port*, %struct.port** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 1), align 8
  %22 = load %struct.connection*, %struct.connection** %5, align 8
  %23 = getelementptr inbounds %struct.connection, %struct.connection* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.port, %struct.port* %21, i64 %24
  store %struct.port* %25, %struct.port** %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @clear_htu_entry(i32 %26)
  %28 = load %struct.connection*, %struct.connection** %5, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.connection*, %struct.connection** %5, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.connection*, %struct.connection** %5, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @clear_bit(i32 %34, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 0))
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @g_atm_priv_data, i32 0, i32 0), align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %16
  %39 = load i32, i32* @PPE_MAILBOX_IGU1_INT, align 4
  %40 = call i32 @disable_irq(i32 %39)
  br label %41

41:                                               ; preds = %38, %16
  %42 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %43 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %68 [
    i32 131, label %47
    i32 128, label %47
    i32 129, label %57
    i32 130, label %58
  ]

47:                                               ; preds = %41, %41
  %48 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %49 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.port*, %struct.port** %4, align 8
  %54 = getelementptr inbounds %struct.port, %struct.port* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %68

57:                                               ; preds = %41
  br label %68

58:                                               ; preds = %41
  %59 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %60 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.port*, %struct.port** %4, align 8
  %65 = getelementptr inbounds %struct.port, %struct.port* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %41, %58, %57, %47
  %69 = call i32 @tasklet_unlock_wait(i32* @g_dma_tasklet)
  br label %70

70:                                               ; preds = %68, %14
  br label %71

71:                                               ; preds = %70, %8
  ret void
}

declare dso_local i32 @find_vcc(%struct.atm_vcc*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @clear_htu_entry(i32) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @tasklet_unlock_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
