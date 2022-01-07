; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/amd29k/extr_amd29k.c_decode_imm16_sh2.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/amd29k/extr_amd29k.c_decode_imm16_sh2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AMD29K_TYPE_JMP = common dso_local global i32 0, align 4
@AMD29K_TYPE_IMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @decode_imm16_sh2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_imm16_sh2(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = shl i32 %8, 10
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 3
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 2
  %14 = add nsw i32 %9, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 131072
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = or i32 -262144, %19
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @AMD29K_HAS_BIT(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @AMD29K_TYPE_JMP, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @AMD29K_TYPE_IMM, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = call i32 @AMD29K_SET_VALUE(i32* %22, i32 0, i32 %23, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @AMD29K_SET_INVALID(i32* %34, i32 1)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @AMD29K_SET_INVALID(i32* %36, i32 2)
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @AMD29K_SET_INVALID(i32* %38, i32 3)
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @AMD29K_SET_INVALID(i32* %40, i32 4)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @AMD29K_SET_INVALID(i32* %42, i32 5)
  ret void
}

declare dso_local i32 @AMD29K_SET_VALUE(i32*, i32, i32, i32) #1

declare dso_local i64 @AMD29K_HAS_BIT(i32*) #1

declare dso_local i32 @AMD29K_SET_INVALID(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
