; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_convert_to_alias.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_convert_to_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @convert_to_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_to_alias(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %45 [
    i32 151, label %9
    i32 141, label %9
    i32 142, label %12
    i32 147, label %15
    i32 146, label %15
    i32 145, label %15
    i32 144, label %18
    i32 143, label %18
    i32 130, label %21
    i32 148, label %21
    i32 134, label %21
    i32 135, label %24
    i32 149, label %24
    i32 131, label %24
    i32 150, label %27
    i32 137, label %30
    i32 139, label %33
    i32 138, label %33
    i32 140, label %36
    i32 136, label %39
    i32 133, label %42
    i32 132, label %42
    i32 129, label %42
    i32 128, label %42
  ]

9:                                                ; preds = %2, %2
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @convert_bfm_to_sr(i32* %10)
  store i32 %11, i32* %3, align 4
  br label %46

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @convert_ubfm_to_lsl(i32* %13)
  store i32 %14, i32* %3, align 4
  br label %46

15:                                               ; preds = %2, %2, %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @convert_from_csel(i32* %16)
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %2, %2
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @convert_csinc_to_cset(i32* %19)
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %2, %2, %2
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @convert_bfm_to_bfx(i32* %22)
  store i32 %23, i32* %3, align 4
  br label %46

24:                                               ; preds = %2, %2, %2
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @convert_bfm_to_bfi(i32* %25)
  store i32 %26, i32* %3, align 4
  br label %46

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @convert_bfm_to_bfc(i32* %28)
  store i32 %29, i32* %3, align 4
  br label %46

30:                                               ; preds = %2
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @convert_orr_to_mov(i32* %31)
  store i32 %32, i32* %3, align 4
  br label %46

33:                                               ; preds = %2, %2
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @convert_movewide_to_mov(i32* %34)
  store i32 %35, i32* %3, align 4
  br label %46

36:                                               ; preds = %2
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @convert_movebitmask_to_mov(i32* %37)
  store i32 %38, i32* %3, align 4
  br label %46

39:                                               ; preds = %2
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @convert_extr_to_ror(i32* %40)
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %2, %2, %2, %2
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @convert_shll_to_xtl(i32* %43)
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12, %9
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @convert_bfm_to_sr(i32*) #1

declare dso_local i32 @convert_ubfm_to_lsl(i32*) #1

declare dso_local i32 @convert_from_csel(i32*) #1

declare dso_local i32 @convert_csinc_to_cset(i32*) #1

declare dso_local i32 @convert_bfm_to_bfx(i32*) #1

declare dso_local i32 @convert_bfm_to_bfi(i32*) #1

declare dso_local i32 @convert_bfm_to_bfc(i32*) #1

declare dso_local i32 @convert_orr_to_mov(i32*) #1

declare dso_local i32 @convert_movewide_to_mov(i32*) #1

declare dso_local i32 @convert_movebitmask_to_mov(i32*) #1

declare dso_local i32 @convert_extr_to_ror(i32*) #1

declare dso_local i32 @convert_shll_to_xtl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
