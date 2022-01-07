; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_selfuncs.c_inet_hist_match_divider.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_network_selfuncs.c_inet_hist_match_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @inet_hist_match_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_hist_match_divider(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @ip_family(i32* %10)
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @ip_family(i32* %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @inet_masklen_inclusion_cmp(i32* %16, i32* %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %15
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @ip_bits(i32* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @ip_bits(i32* %24)
  %26 = call i32 @Min(i32 %23, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ip_bits(i32* %30)
  store i32 %31, i32* %9, align 4
  br label %41

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @ip_bits(i32* %36)
  store i32 %37, i32* %9, align 4
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %38, %35
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @ip_addr(i32* %46)
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @ip_addr(i32* %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @bitncommon(i32 %47, i32 %49, i32 %50)
  %52 = sub nsw i32 %45, %51
  store i32 %52, i32* %4, align 4
  br label %56

53:                                               ; preds = %41
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %15, %3
  store i32 -1, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %53, %44
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @ip_family(i32*) #1

declare dso_local i64 @inet_masklen_inclusion_cmp(i32*, i32*, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @ip_bits(i32*) #1

declare dso_local i32 @bitncommon(i32, i32, i32) #1

declare dso_local i32 @ip_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
