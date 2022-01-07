; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/hppa/gnu/extr_hppa-dis.c_extract_21.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/hppa/gnu/extr_hppa-dis.c_extract_21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MASK_21 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @extract_21 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extract_21(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @MASK_21, align 4
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, %4
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = shl i32 %7, 11
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @GET_FIELD(i32 %9, i32 20, i32 20)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 %11, 11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @GET_FIELD(i32 %13, i32 9, i32 19)
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = shl i32 %17, 2
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @GET_FIELD(i32 %19, i32 5, i32 6)
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = shl i32 %23, 5
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @GET_FIELD(i32 %25, i32 0, i32 4)
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = shl i32 %29, 2
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @GET_FIELD(i32 %31, i32 7, i32 8)
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @sign_extend(i32 %35, i32 21)
  %37 = shl i32 %36, 11
  ret i32 %37
}

declare dso_local i32 @GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @sign_extend(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
