; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_main-readrange.c_count_cidr_bits.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_main-readrange.c_count_cidr_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @count_cidr_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_cidr_bits(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Range, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = bitcast %struct.Range* %3 to i64*
  store i64 %0, i64* %6, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %41, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %8, 32
  br i1 %9, label %10, label %44

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = lshr i32 -1, %11
  store i32 %12, i32* %5, align 4
  %13 = getelementptr inbounds %struct.Range, %struct.Range* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = getelementptr inbounds %struct.Range, %struct.Range* %3, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.Range, %struct.Range* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.Range, %struct.Range* %3, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %45

39:                                               ; preds = %30, %24
  br label %40

40:                                               ; preds = %39, %10
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %7

44:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
