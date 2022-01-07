; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network.c_network_cmp_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network.c_network_cmp_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @network_cmp_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @network_cmp_internal(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @ip_family(i32* %7)
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @ip_family(i32* %9)
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %47

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @ip_addr(i32* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @ip_addr(i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @ip_bits(i32* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @ip_bits(i32* %19)
  %21 = call i32 @Min(i64 %18, i64 %20)
  %22 = call i32 @bitncmp(i32 %14, i32 %16, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %12
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %53

27:                                               ; preds = %12
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @ip_bits(i32* %28)
  %30 = trunc i64 %29 to i32
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @ip_bits(i32* %31)
  %33 = trunc i64 %32 to i32
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %53

39:                                               ; preds = %27
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @ip_addr(i32* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @ip_addr(i32* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @ip_maxbits(i32* %44)
  %46 = call i32 @bitncmp(i32 %41, i32 %43, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %53

47:                                               ; preds = %2
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @ip_family(i32* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @ip_family(i32* %50)
  %52 = sub nsw i32 %49, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %39, %37, %25
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ip_family(i32*) #1

declare dso_local i32 @bitncmp(i32, i32, i32) #1

declare dso_local i32 @ip_addr(i32*) #1

declare dso_local i32 @Min(i64, i64) #1

declare dso_local i64 @ip_bits(i32*) #1

declare dso_local i32 @ip_maxbits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
