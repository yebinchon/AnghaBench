; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/board/zyxel/nbg460n/extr_nbg460n.c_misc_init_r.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-ar71xx/src/board/zyxel/nbg460n/extr_nbg460n.c_misc_init_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Testing mac addresses\0A\00", align 1
@CONFIG_ETHADDR_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"ethaddr\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Setting eth0 mac addr to %pM\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"eth1addr\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Setting eth1 mac addr to %pM\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @misc_init_r() #0 {
  %1 = alloca [6 x i32], align 16
  %2 = alloca [6 x i32], align 16
  %3 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %4 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0
  %5 = load i64, i64* @CONFIG_ETHADDR_ADDR, align 8
  %6 = inttoptr i64 %5 to i32*
  %7 = call i32 @memcpy(i32* %4, i32* %6, i32 6)
  %8 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %9 = call i32 @eth_getenv_enetaddr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0
  %13 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32* %12)
  %14 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0
  %15 = call i32 @eth_setenv_enetaddr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %14)
  br label %16

16:                                               ; preds = %11, %0
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %2, i64 0, i64 0
  %18 = call i32 @eth_getenv_enetaddr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 5
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0
  %25 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32* %24)
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %1, i64 0, i64 0
  %27 = call i32 @eth_setenv_enetaddr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* %26)
  br label %28

28:                                               ; preds = %20, %16
  ret i32 0
}

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @eth_getenv_enetaddr(i8*, i32*) #1

declare dso_local i32 @eth_setenv_enetaddr(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
