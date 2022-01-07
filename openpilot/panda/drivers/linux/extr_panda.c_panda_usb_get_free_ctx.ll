; ModuleID = '/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_usb_get_free_ctx.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_usb_get_free_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panda_usb_ctx = type { i64, i32 }
%struct.panda_inf_priv = type { i32, i32, %struct.panda_usb_ctx* }
%struct.can_frame = type { i32 }

@PANDA_MAX_TX_URBS = common dso_local global i32 0, align 4
@PANDA_CTX_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"CTX num %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SENDING TOO FAST\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.panda_usb_ctx* (%struct.panda_inf_priv*, %struct.can_frame*)* @panda_usb_get_free_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.panda_usb_ctx* @panda_usb_get_free_ctx(%struct.panda_inf_priv* %0, %struct.can_frame* %1) #0 {
  %3 = alloca %struct.panda_inf_priv*, align 8
  %4 = alloca %struct.can_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.panda_usb_ctx*, align 8
  store %struct.panda_inf_priv* %0, %struct.panda_inf_priv** %3, align 8
  store %struct.can_frame* %1, %struct.can_frame** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.panda_usb_ctx* null, %struct.panda_usb_ctx** %6, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %42, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @PANDA_MAX_TX_URBS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %7
  %12 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %3, align 8
  %13 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %12, i32 0, i32 2
  %14 = load %struct.panda_usb_ctx*, %struct.panda_usb_ctx** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.panda_usb_ctx, %struct.panda_usb_ctx* %14, i64 %16
  %18 = getelementptr inbounds %struct.panda_usb_ctx, %struct.panda_usb_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PANDA_CTX_FREE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %11
  %23 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %3, align 8
  %24 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %23, i32 0, i32 2
  %25 = load %struct.panda_usb_ctx*, %struct.panda_usb_ctx** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.panda_usb_ctx, %struct.panda_usb_ctx* %25, i64 %27
  store %struct.panda_usb_ctx* %28, %struct.panda_usb_ctx** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.panda_usb_ctx*, %struct.panda_usb_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.panda_usb_ctx, %struct.panda_usb_ctx* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.can_frame*, %struct.can_frame** %4, align 8
  %34 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.panda_usb_ctx*, %struct.panda_usb_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.panda_usb_ctx, %struct.panda_usb_ctx* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %3, align 8
  %39 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %38, i32 0, i32 1
  %40 = call i32 @atomic_dec(i32* %39)
  br label %45

41:                                               ; preds = %11
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %7

45:                                               ; preds = %22, %7
  %46 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %3, align 8
  %47 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %46, i32 0, i32 1
  %48 = call i32 @atomic_read(i32* %47)
  %49 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %3, align 8
  %51 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %50, i32 0, i32 1
  %52 = call i32 @atomic_read(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %45
  %55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %3, align 8
  %57 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @netif_stop_queue(i32 %58)
  br label %60

60:                                               ; preds = %54, %45
  %61 = load %struct.panda_usb_ctx*, %struct.panda_usb_ctx** %6, align 8
  ret %struct.panda_usb_ctx* %61
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
