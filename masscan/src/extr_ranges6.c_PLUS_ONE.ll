; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges6.c_PLUS_ONE.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges6.c_PLUS_ONE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i64 } (i32, i64)* @PLUS_ONE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i64 } @PLUS_ONE(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = bitcast %struct.TYPE_4__* %4 to { i32, i64 }*
  %6 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %5, i32 0, i32 0
  store i32 %0, i32* %6, align 8
  %7 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %5, i32 0, i32 1
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i64 %14, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 0, i32* %16, align 8
  br label %25

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  br label %25

25:                                               ; preds = %17, %11
  %26 = bitcast %struct.TYPE_4__* %3 to { i32, i64 }*
  %27 = load { i32, i64 }, { i32, i64 }* %26, align 8
  ret { i32, i64 } %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
