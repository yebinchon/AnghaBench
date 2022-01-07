; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_selfuncs.c_inet_inclusion_cmp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_selfuncs.c_inet_inclusion_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @inet_inclusion_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_inclusion_cmp(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @ip_family(i32* %9)
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @ip_family(i32* %11)
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @ip_addr(i32* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @ip_addr(i32* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @ip_bits(i32* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @ip_bits(i32* %21)
  %23 = call i32 @Min(i32 %20, i32 %22)
  %24 = call i32 @bitncmp(i32 %16, i32 %18, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %14
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @inet_masklen_inclusion_cmp(i32* %30, i32* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %40

34:                                               ; preds = %3
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @ip_family(i32* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @ip_family(i32* %37)
  %39 = sub nsw i32 %36, %38
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %34, %29, %27
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @ip_family(i32*) #1

declare dso_local i32 @bitncmp(i32, i32, i32) #1

declare dso_local i32 @ip_addr(i32*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @ip_bits(i32*) #1

declare dso_local i32 @inet_masklen_inclusion_cmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
