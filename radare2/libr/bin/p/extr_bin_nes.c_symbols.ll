; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_nes.c_symbols.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_nes.c_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"NMI_VECTOR_START_ADDRESS\00", align 1
@NMI_VECTOR_START_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"RESET_VECTOR_START_ADDRESS\00", align 1
@RESET_VECTOR_START_ADDRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"IRQ_VECTOR_START_ADDRESS\00", align 1
@IRQ_VECTOR_START_ADDRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"PPU_CTRL_REG1\00", align 1
@PPU_CTRL_REG1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"PPU_CTRL_REG2\00", align 1
@PPU_CTRL_REG2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"PPU_STATUS\00", align 1
@PPU_STATUS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"PPU_SPR_ADDR\00", align 1
@PPU_SPR_ADDR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"PPU_SPR_DATA\00", align 1
@PPU_SPR_DATA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"PPU_SCROLL_REG\00", align 1
@PPU_SCROLL_REG = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"PPU_ADDRESS\00", align 1
@PPU_ADDRESS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"PPU_DATA\00", align 1
@PPU_DATA = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"SND_REGISTER\00", align 1
@SND_REGISTER = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"SND_SQUARE1_REG\00", align 1
@SND_SQUARE1_REG = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"SND_SQUARE2_REG\00", align 1
@SND_SQUARE2_REG = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"SND_TRIANGLE_REG\00", align 1
@SND_TRIANGLE_REG = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [14 x i8] c"SND_NOISE_REG\00", align 1
@SND_NOISE_REG = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"SND_DELTA_REG\00", align 1
@SND_DELTA_REG = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"SND_MASTERCTRL_REG\00", align 1
@SND_MASTERCTRL_REG = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"SPR_DMA\00", align 1
@SPR_DMA = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"JOYPAD_PORT\00", align 1
@JOYPAD_PORT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [13 x i8] c"JOYPAD_PORT1\00", align 1
@JOYPAD_PORT1 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"JOYPAD_PORT2\00", align 1
@JOYPAD_PORT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @symbols(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %5 = load i32, i32* @free, align 4
  %6 = call i32* @r_list_newf(i32 %5)
  store i32* %6, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %77

9:                                                ; preds = %1
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @NMI_VECTOR_START_ADDRESS, align 4
  %12 = call i32 @addsym(i32* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %11, i32 2)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @RESET_VECTOR_START_ADDRESS, align 4
  %15 = call i32 @addsym(i32* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 2)
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @IRQ_VECTOR_START_ADDRESS, align 4
  %18 = call i32 @addsym(i32* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %17, i32 2)
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @PPU_CTRL_REG1, align 4
  %21 = call i32 @addsym(i32* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %20, i32 1)
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @PPU_CTRL_REG2, align 4
  %24 = call i32 @addsym(i32* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %23, i32 1)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @PPU_STATUS, align 4
  %27 = call i32 @addsym(i32* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %26, i32 1)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @PPU_SPR_ADDR, align 4
  %30 = call i32 @addsym(i32* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %29, i32 1)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @PPU_SPR_DATA, align 4
  %33 = call i32 @addsym(i32* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %32, i32 1)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @PPU_SCROLL_REG, align 4
  %36 = call i32 @addsym(i32* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %35, i32 1)
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @PPU_ADDRESS, align 4
  %39 = call i32 @addsym(i32* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %38, i32 1)
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* @PPU_DATA, align 4
  %42 = call i32 @addsym(i32* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %41, i32 1)
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* @SND_REGISTER, align 4
  %45 = call i32 @addsym(i32* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %44, i32 21)
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @SND_SQUARE1_REG, align 4
  %48 = call i32 @addsym(i32* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %47, i32 4)
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* @SND_SQUARE2_REG, align 4
  %51 = call i32 @addsym(i32* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32 %50, i32 4)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* @SND_TRIANGLE_REG, align 4
  %54 = call i32 @addsym(i32* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %53, i32 4)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32, i32* @SND_NOISE_REG, align 4
  %57 = call i32 @addsym(i32* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 %56, i32 2)
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @SND_DELTA_REG, align 4
  %60 = call i32 @addsym(i32* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i32 %59, i32 4)
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* @SND_MASTERCTRL_REG, align 4
  %63 = call i32 @addsym(i32* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %62, i32 5)
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* @SPR_DMA, align 4
  %66 = call i32 @addsym(i32* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 %65, i32 2)
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @JOYPAD_PORT, align 4
  %69 = call i32 @addsym(i32* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %68, i32 1)
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* @JOYPAD_PORT1, align 4
  %72 = call i32 @addsym(i32* %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32 %71, i32 1)
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* @JOYPAD_PORT2, align 4
  %75 = call i32 @addsym(i32* %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i32 %74, i32 1)
  %76 = load i32*, i32** %4, align 8
  store i32* %76, i32** %2, align 8
  br label %77

77:                                               ; preds = %9, %8
  %78 = load i32*, i32** %2, align 8
  ret i32* %78
}

declare dso_local i32* @r_list_newf(i32) #1

declare dso_local i32 @addsym(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
