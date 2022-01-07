; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_mboot.c_MmuTranslate.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_mboot.c_MmuTranslate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ofproxy = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"translate\00", align 1
@mmu_handle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MmuTranslate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @ofproxy, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %8, i32* %9, align 4
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* @mmu_handle, align 4
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %13 = call i32 @ofw_callmethod_ret(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11, i32 2, i32* %12, i32 3)
  store i32 %13, i32* %2, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %14, %7
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @ofw_callmethod_ret(i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
