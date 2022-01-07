; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/dp60/extr_matrix.c_read_rows.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/dp60/extr_matrix.c_read_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E6 = common dso_local global i32 0, align 4
@F6 = common dso_local global i32 0, align 4
@F7 = common dso_local global i32 0, align 4
@B7 = common dso_local global i32 0, align 4
@D4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_rows() #0 {
  %1 = load i32, i32* @E6, align 4
  %2 = call i64 @readPin(i32 %1)
  %3 = icmp ne i64 %2, 0
  %4 = zext i1 %3 to i64
  %5 = select i1 %3, i32 0, i32 1
  %6 = load i32, i32* @F6, align 4
  %7 = call i64 @readPin(i32 %6)
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 0, i32 2
  %11 = or i32 %5, %10
  %12 = load i32, i32* @F7, align 4
  %13 = call i64 @readPin(i32 %12)
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 0, i32 4
  %17 = or i32 %11, %16
  %18 = load i32, i32* @B7, align 4
  %19 = call i64 @readPin(i32 %18)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 8
  %23 = or i32 %17, %22
  %24 = load i32, i32* @D4, align 4
  %25 = call i64 @readPin(i32 %24)
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 16
  %29 = or i32 %23, %28
  ret i32 %29
}

declare dso_local i64 @readPin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
