; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_c55plus_decode.c_set_magic_value.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_c55plus_decode.c_set_magic_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"invalid hash code 0x%x for magic value 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_magic_value(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %48 [
    i32 232, label %8
    i32 424, label %12
    i32 236, label %16
    i32 233, label %20
    i32 234, label %24
    i32 483, label %28
    i32 484, label %32
    i32 476, label %36
    i32 481, label %40
    i32 482, label %44
  ]

8:                                                ; preds = %3
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, 1
  store i32 %11, i32* %9, align 4
  br label %55

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, 2
  store i32 %15, i32* %13, align 4
  br label %55

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, 4
  store i32 %19, i32* %17, align 4
  br label %55

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, 16
  store i32 %23, i32* %21, align 4
  br label %55

24:                                               ; preds = %3
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, 32
  store i32 %27, i32* %25, align 4
  br label %55

28:                                               ; preds = %3
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, 64
  store i32 %31, i32* %29, align 4
  br label %55

32:                                               ; preds = %3
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, 128
  store i32 %35, i32* %33, align 4
  br label %55

36:                                               ; preds = %3
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, 256
  store i32 %39, i32* %37, align 4
  br label %55

40:                                               ; preds = %3
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, 512
  store i32 %43, i32* %41, align 4
  br label %55

44:                                               ; preds = %3
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, 1024
  store i32 %47, i32* %45, align 4
  br label %55

48:                                               ; preds = %3
  %49 = load i32, i32* @stderr, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %52)
  %54 = load i32*, i32** %6, align 8
  store i32 -1, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %44, %40, %36, %32, %28, %24, %20, %16, %12, %8
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
