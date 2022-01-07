; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c__finite.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/libc/extr_stdio.c__finite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IEEEdp = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @_finite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_finite(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.IEEEdp*, align 8
  store i32 %0, i32* %2, align 4
  %4 = bitcast i32* %2 to %struct.IEEEdp*
  store %struct.IEEEdp* %4, %struct.IEEEdp** %3, align 8
  %5 = load %struct.IEEEdp*, %struct.IEEEdp** %3, align 8
  %6 = bitcast %struct.IEEEdp* %5 to i64*
  %7 = load i64, i64* %6, align 4
  %8 = lshr i64 %7, 52
  %9 = and i64 %8, 2047
  %10 = trunc i64 %9 to i32
  %11 = icmp ne i32 %10, 2047
  %12 = zext i1 %11 to i32
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
