; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/util/extr_cryptohash.c_CRYPTOHASH_SHAMD5Read.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/util/extr_cryptohash.c_CRYPTOHASH_SHAMD5Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHAMD5_BASE = common dso_local global i64 0, align 8
@SHAMD5_O_IRQSTATUS = common dso_local global i64 0, align 8
@SHAMD5_INT_OUTPUT_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRYPTOHASH_SHAMD5Read(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  br label %3

3:                                                ; preds = %11, %1
  %4 = load i64, i64* @SHAMD5_BASE, align 8
  %5 = load i64, i64* @SHAMD5_O_IRQSTATUS, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @HWREG(i64 %6)
  %8 = load i32, i32* @SHAMD5_INT_OUTPUT_READY, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %3

12:                                               ; preds = %3
  %13 = load i64, i64* @SHAMD5_BASE, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @MAP_SHAMD5ResultRead(i64 %13, i32* %14)
  ret void
}

declare dso_local i32 @HWREG(i64) #1

declare dso_local i32 @MAP_SHAMD5ResultRead(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
