; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6_is_overlap.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6_is_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.Range6 = type { i32, i32 }

@range6_is_overlap.zero = internal constant %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @range6_is_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @range6_is_overlap(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Range6, align 4
  %5 = alloca %struct.Range6, align 4
  %6 = alloca %struct.TYPE_4__, align 4
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = bitcast %struct.Range6* %4 to i64*
  store i64 %0, i64* %8, align 4
  %9 = bitcast %struct.Range6* %5 to i64*
  store i64 %1, i64* %9, align 4
  %10 = getelementptr inbounds %struct.Range6, %struct.Range6* %4, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @MINUS_ONE(i32 %11)
  %13 = bitcast %struct.TYPE_4__* %6 to i64*
  store i64 %12, i64* %13, align 4
  %14 = getelementptr inbounds %struct.Range6, %struct.Range6* %5, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @MINUS_ONE(i32 %15)
  %17 = bitcast %struct.TYPE_4__* %7 to i64*
  store i64 %16, i64* %17, align 4
  %18 = getelementptr inbounds %struct.Range6, %struct.Range6* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* bitcast (%struct.TYPE_4__* @range6_is_overlap.zero to i64*), align 4
  %21 = call i64 @LESS(i64 %20, i32 %19)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.Range6, %struct.Range6* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = bitcast %struct.TYPE_4__* %6 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = call i64 @LESS(i64 %27, i32 %25)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %46

31:                                               ; preds = %23, %2
  %32 = getelementptr inbounds %struct.Range6, %struct.Range6* %5, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* bitcast (%struct.TYPE_4__* @range6_is_overlap.zero to i64*), align 4
  %35 = call i64 @LESS(i64 %34, i32 %33)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.Range6, %struct.Range6* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = bitcast %struct.TYPE_4__* %7 to i64*
  %41 = load i64, i64* %40, align 4
  %42 = call i64 @LESS(i64 %41, i32 %39)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %46

45:                                               ; preds = %37, %31
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44, %30
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @MINUS_ONE(i32) #1

declare dso_local i64 @LESS(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
