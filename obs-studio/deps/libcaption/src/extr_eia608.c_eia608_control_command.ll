; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_eia608.c_eia608_control_command.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_eia608.c_eia608_control_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eia608_tab_offset_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eia608_control_command(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 1
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 2048, i32 0
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 2
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 256, i32 0
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @eia608_tab_offset_0, align 4
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 65472
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %23, %24
  %26 = call i64 @eia608_parity(i32 %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %36

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %31, %32
  %34 = call i64 @eia608_parity(i32 %33)
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %28, %22
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @eia608_parity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
