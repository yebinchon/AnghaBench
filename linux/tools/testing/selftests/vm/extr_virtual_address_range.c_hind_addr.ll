; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_virtual_address_range.c_hind_addr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_virtual_address_range.c_hind_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HIGH_ADDR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @hind_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hind_addr() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @HIGH_ADDR_SHIFT, align 4
  %3 = call i32 (...) @rand()
  %4 = load i32, i32* @HIGH_ADDR_SHIFT, align 4
  %5 = sub nsw i32 63, %4
  %6 = srem i32 %3, %5
  %7 = add nsw i32 %2, %6
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = zext i32 %8 to i64
  %10 = shl i64 1, %9
  %11 = inttoptr i64 %10 to i8*
  ret i8* %11
}

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
