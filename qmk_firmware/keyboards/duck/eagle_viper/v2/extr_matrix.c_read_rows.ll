; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/duck/eagle_viper/v2/extr_matrix.c_read_rows.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/duck/eagle_viper/v2/extr_matrix.c_read_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIND = common dso_local global i32 0, align 4
@PINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @read_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_rows(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i32, i32* @PIND, align 4
  %4 = and i32 %3, 1
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i64
  %7 = select i1 %5, i32 1, i32 0
  %8 = load i32, i32* @PIND, align 4
  %9 = and i32 %8, 2
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 2, i32 0
  %13 = or i32 %7, %12
  %14 = load i32, i32* @PIND, align 4
  %15 = and i32 %14, 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 4, i32 0
  %19 = or i32 %13, %18
  %20 = load i32, i32* @PIND, align 4
  %21 = and i32 %20, 8
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 8, i32 0
  %25 = or i32 %19, %24
  %26 = load i32, i32* @PIND, align 4
  %27 = and i32 %26, 32
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 16, i32 0
  %31 = or i32 %25, %30
  %32 = load i64, i64* %2, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load i32, i32* @PINE, align 4
  %36 = and i32 %35, 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 4
  br label %41

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %40, %34
  %42 = phi i32 [ %39, %34 ], [ 0, %40 ]
  %43 = or i32 %31, %42
  %44 = sext i32 %43 to i64
  ret i64 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
