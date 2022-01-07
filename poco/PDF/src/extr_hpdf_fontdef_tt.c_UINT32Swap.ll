; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_UINT32Swap.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_fontdef_tt.c_UINT32Swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @UINT32Swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UINT32Swap(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [4 x i64], align 16
  store i32* %0, i32** %2, align 8
  %4 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to i64*
  %7 = call i32 @HPDF_MemCpy(i64* %4, i64* %6, i32 4)
  %8 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 0
  %9 = load i64, i64* %8, align 16
  %10 = trunc i64 %9 to i32
  %11 = shl i32 %10, 24
  %12 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 1
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = shl i32 %14, 16
  %16 = or i32 %11, %15
  %17 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 2
  %18 = load i64, i64* %17, align 16
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %19, 8
  %21 = or i32 %16, %20
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %3, i64 0, i64 3
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = or i32 %21, %24
  %26 = load i32*, i32** %2, align 8
  store i32 %25, i32* %26, align 4
  ret void
}

declare dso_local i32 @HPDF_MemCpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
