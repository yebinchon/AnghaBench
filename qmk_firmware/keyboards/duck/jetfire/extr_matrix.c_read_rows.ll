; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/duck/jetfire/extr_matrix.c_read_rows.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/duck/jetfire/extr_matrix.c_read_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PINE = common dso_local global i32 0, align 4
@PIND = common dso_local global i32 0, align 4
@PINB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @read_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_rows(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 15
  br i1 %5, label %6, label %42

6:                                                ; preds = %1
  %7 = load i32, i32* @PINE, align 4
  %8 = and i32 %7, 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 0, i32 1
  %12 = load i32, i32* @PIND, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 2, i32 0
  %17 = or i32 %11, %16
  %18 = load i32, i32* @PIND, align 4
  %19 = and i32 %18, 2
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 4, i32 0
  %23 = or i32 %17, %22
  %24 = load i32, i32* @PIND, align 4
  %25 = and i32 %24, 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 8, i32 0
  %29 = or i32 %23, %28
  %30 = load i32, i32* @PIND, align 4
  %31 = and i32 %30, 8
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 16, i32 0
  %35 = or i32 %29, %34
  %36 = load i32, i32* @PIND, align 4
  %37 = and i32 %36, 32
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 32, i32 0
  %41 = or i32 %35, %40
  store i32 %41, i32* %2, align 4
  br label %78

42:                                               ; preds = %1
  %43 = load i32, i32* @PINB, align 4
  %44 = and i32 %43, 128
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  %48 = load i32, i32* @PIND, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 2, i32 0
  %53 = or i32 %47, %52
  %54 = load i32, i32* @PIND, align 4
  %55 = and i32 %54, 2
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 4, i32 0
  %59 = or i32 %53, %58
  %60 = load i32, i32* @PIND, align 4
  %61 = and i32 %60, 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 8, i32 0
  %65 = or i32 %59, %64
  %66 = load i32, i32* @PIND, align 4
  %67 = and i32 %66, 8
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 16, i32 0
  %71 = or i32 %65, %70
  %72 = load i32, i32* @PIND, align 4
  %73 = and i32 %72, 32
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 32, i32 0
  %77 = or i32 %71, %76
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %42, %6
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
