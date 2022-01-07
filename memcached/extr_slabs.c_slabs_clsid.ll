; ModuleID = '/home/carl/AnghaBench/memcached/extr_slabs.c_slabs_clsid.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_slabs.c_slabs_clsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@POWER_SMALLEST = common dso_local global i32 0, align 4
@settings = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@slabclass = common dso_local global %struct.TYPE_3__* null, align 8
@power_largest = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slabs_clsid(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @POWER_SMALLEST, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 0), align 8
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %33

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %30, %13
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @slabclass, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ugt i64 %15, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @power_largest, align 4
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @power_largest, align 4
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %23
  br label %14

31:                                               ; preds = %14
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %28, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
