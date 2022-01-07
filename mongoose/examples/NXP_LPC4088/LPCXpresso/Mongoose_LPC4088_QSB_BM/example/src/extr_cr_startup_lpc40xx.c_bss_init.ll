; ModuleID = '/home/carl/AnghaBench/mongoose/examples/NXP_LPC4088/LPCXpresso/Mongoose_LPC4088_QSB_BM/example/src/extr_cr_startup_lpc40xx.c_bss_init.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/NXP_LPC4088/LPCXpresso/Mongoose_LPC4088_QSB_BM/example/src/extr_cr_startup_lpc40xx.c_bss_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bss_init(i32 %0, i32 %1) #0 section ".after_vectors" {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %17, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %5, align 8
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = add i32 %18, 4
  store i32 %19, i32* %6, align 4
  br label %10

20:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
