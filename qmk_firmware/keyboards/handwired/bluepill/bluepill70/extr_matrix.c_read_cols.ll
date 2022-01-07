; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/bluepill/bluepill70/extr_matrix.c_read_cols.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/bluepill/bluepill70/extr_matrix.c_read_cols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIOA = common dso_local global i32 0, align 4
@PAL_HIGH = common dso_local global i64 0, align 8
@GPIOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_cols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_cols() #0 {
  %1 = load i32, i32* @GPIOA, align 4
  %2 = call i64 @palReadPad(i32 %1, i32 5)
  %3 = load i64, i64* @PAL_HIGH, align 8
  %4 = icmp eq i64 %2, %3
  %5 = zext i1 %4 to i64
  %6 = select i1 %4, i32 0, i32 1
  %7 = load i32, i32* @GPIOA, align 4
  %8 = call i64 @palReadPad(i32 %7, i32 15)
  %9 = load i64, i64* @PAL_HIGH, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 0, i32 2
  %13 = or i32 %6, %12
  %14 = load i32, i32* @GPIOA, align 4
  %15 = call i64 @palReadPad(i32 %14, i32 10)
  %16 = load i64, i64* @PAL_HIGH, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 0, i32 4
  %20 = or i32 %13, %19
  %21 = load i32, i32* @GPIOA, align 4
  %22 = call i64 @palReadPad(i32 %21, i32 9)
  %23 = load i64, i64* @PAL_HIGH, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 8
  %27 = or i32 %20, %26
  %28 = load i32, i32* @GPIOA, align 4
  %29 = call i64 @palReadPad(i32 %28, i32 8)
  %30 = load i64, i64* @PAL_HIGH, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 0, i32 16
  %34 = or i32 %27, %33
  %35 = load i32, i32* @GPIOB, align 4
  %36 = call i64 @palReadPad(i32 %35, i32 15)
  %37 = load i64, i64* @PAL_HIGH, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 0, i32 32
  %41 = or i32 %34, %40
  %42 = load i32, i32* @GPIOB, align 4
  %43 = call i64 @palReadPad(i32 %42, i32 14)
  %44 = load i64, i64* @PAL_HIGH, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 0, i32 64
  %48 = or i32 %41, %47
  %49 = load i32, i32* @GPIOB, align 4
  %50 = call i64 @palReadPad(i32 %49, i32 13)
  %51 = load i64, i64* @PAL_HIGH, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 128
  %55 = or i32 %48, %54
  %56 = load i32, i32* @GPIOB, align 4
  %57 = call i64 @palReadPad(i32 %56, i32 12)
  %58 = load i64, i64* @PAL_HIGH, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 0, i32 256
  %62 = or i32 %55, %61
  %63 = load i32, i32* @GPIOB, align 4
  %64 = call i64 @palReadPad(i32 %63, i32 11)
  %65 = load i64, i64* @PAL_HIGH, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 0, i32 512
  %69 = or i32 %62, %68
  %70 = load i32, i32* @GPIOB, align 4
  %71 = call i64 @palReadPad(i32 %70, i32 10)
  %72 = load i64, i64* @PAL_HIGH, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 0, i32 1024
  %76 = or i32 %69, %75
  %77 = load i32, i32* @GPIOB, align 4
  %78 = call i64 @palReadPad(i32 %77, i32 1)
  %79 = load i64, i64* @PAL_HIGH, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 0, i32 2048
  %83 = or i32 %76, %82
  %84 = load i32, i32* @GPIOB, align 4
  %85 = call i64 @palReadPad(i32 %84, i32 0)
  %86 = load i64, i64* @PAL_HIGH, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 0, i32 4096
  %90 = or i32 %83, %89
  %91 = load i32, i32* @GPIOA, align 4
  %92 = call i64 @palReadPad(i32 %91, i32 7)
  %93 = load i64, i64* @PAL_HIGH, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 0, i32 8192
  %97 = or i32 %90, %96
  %98 = load i32, i32* @GPIOA, align 4
  %99 = call i64 @palReadPad(i32 %98, i32 6)
  %100 = load i64, i64* @PAL_HIGH, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 0, i32 16384
  %104 = or i32 %97, %103
  ret i32 %104
}

declare dso_local i64 @palReadPad(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
