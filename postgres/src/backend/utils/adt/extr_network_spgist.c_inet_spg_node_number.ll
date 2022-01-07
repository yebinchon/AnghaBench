; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_spgist.c_inet_spg_node_number.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_spgist.c_inet_spg_node_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @inet_spg_node_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_spg_node_number(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @ip_maxbits(i32* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @ip_addr(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = sdiv i32 %13, 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = srem i32 %18, 8
  %20 = sub nsw i32 7, %19
  %21 = shl i32 1, %20
  %22 = and i32 %17, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %10
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %10, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @ip_bits(i32* %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, 2
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @ip_maxbits(i32*) #1

declare dso_local i32* @ip_addr(i32*) #1

declare dso_local i32 @ip_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
