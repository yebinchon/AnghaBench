; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/extr_wizchip_conf.c_wizchip_sw_reset.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/extr_wizchip_conf.c_wizchip_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MR_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wizchip_sw_reset() #0 {
  %1 = alloca [4 x i32], align 16
  %2 = alloca [4 x i32], align 16
  %3 = alloca [4 x i32], align 16
  %4 = alloca [6 x i32], align 16
  %5 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %6 = call i32 @getSHAR(i32* %5)
  %7 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %8 = call i32 @getGAR(i32* %7)
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %10 = call i32 @getSUBR(i32* %9)
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %12 = call i32 @getSIPR(i32* %11)
  %13 = load i32, i32* @MR_RST, align 4
  %14 = call i32 @setMR(i32 %13)
  %15 = call i32 (...) @getMR()
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %17 = call i32 @setSHAR(i32* %16)
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %1, i64 0, i64 0
  %19 = call i32 @setGAR(i32* %18)
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %21 = call i32 @setSUBR(i32* %20)
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %23 = call i32 @setSIPR(i32* %22)
  ret void
}

declare dso_local i32 @getSHAR(i32*) #1

declare dso_local i32 @getGAR(i32*) #1

declare dso_local i32 @getSUBR(i32*) #1

declare dso_local i32 @getSIPR(i32*) #1

declare dso_local i32 @setMR(i32) #1

declare dso_local i32 @getMR(...) #1

declare dso_local i32 @setSHAR(i32*) #1

declare dso_local i32 @setGAR(i32*) #1

declare dso_local i32 @setSUBR(i32*) #1

declare dso_local i32 @setSIPR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
