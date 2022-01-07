; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6_combine.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges6.c_range6_combine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Range6 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Range6*, i64)* @range6_combine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @range6_combine(%struct.Range6* %0, i64 %1) #0 {
  %3 = alloca %struct.Range6, align 4
  %4 = alloca %struct.Range6*, align 8
  %5 = bitcast %struct.Range6* %3 to i64*
  store i64 %1, i64* %5, align 4
  store %struct.Range6* %0, %struct.Range6** %4, align 8
  %6 = getelementptr inbounds %struct.Range6, %struct.Range6* %3, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.Range6*, %struct.Range6** %4, align 8
  %9 = getelementptr inbounds %struct.Range6, %struct.Range6* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @LESSEQ(i32 %7, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.Range6, %struct.Range6* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.Range6*, %struct.Range6** %4, align 8
  %17 = getelementptr inbounds %struct.Range6, %struct.Range6* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.Range6*, %struct.Range6** %4, align 8
  %20 = getelementptr inbounds %struct.Range6, %struct.Range6* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.Range6, %struct.Range6* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @LESSEQ(i32 %21, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.Range6, %struct.Range6* %3, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.Range6*, %struct.Range6** %4, align 8
  %30 = getelementptr inbounds %struct.Range6, %struct.Range6* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %18
  ret void
}

declare dso_local i64 @LESSEQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
