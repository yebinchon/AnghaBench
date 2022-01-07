; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-coro.c_coro_deferred_run.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-coro.c_coro_deferred_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coro = type { i32 }
%struct.lwan_array = type { i64, %struct.coro_defer* }
%struct.coro_defer = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i32 (i32)* }
%struct.TYPE_3__ = type { i32, i32, i32 (i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @coro_deferred_run(%struct.coro* %0, i64 %1) #0 {
  %3 = alloca %struct.coro*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lwan_array*, align 8
  %6 = alloca %struct.coro_defer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.coro_defer*, align 8
  store %struct.coro* %0, %struct.coro** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.coro*, %struct.coro** %3, align 8
  %10 = getelementptr inbounds %struct.coro, %struct.coro* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to %struct.lwan_array*
  store %struct.lwan_array* %11, %struct.lwan_array** %5, align 8
  %12 = load %struct.lwan_array*, %struct.lwan_array** %5, align 8
  %13 = getelementptr inbounds %struct.lwan_array, %struct.lwan_array* %12, i32 0, i32 1
  %14 = load %struct.coro_defer*, %struct.coro_defer** %13, align 8
  store %struct.coro_defer* %14, %struct.coro_defer** %6, align 8
  %15 = load %struct.lwan_array*, %struct.lwan_array** %5, align 8
  %16 = getelementptr inbounds %struct.lwan_array, %struct.lwan_array* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  br label %18

18:                                               ; preds = %56, %2
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %18
  %23 = load %struct.coro_defer*, %struct.coro_defer** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = sub i64 %24, 1
  %26 = getelementptr inbounds %struct.coro_defer, %struct.coro_defer* %23, i64 %25
  store %struct.coro_defer* %26, %struct.coro_defer** %8, align 8
  %27 = load %struct.coro_defer*, %struct.coro_defer** %8, align 8
  %28 = getelementptr inbounds %struct.coro_defer, %struct.coro_defer* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %22
  %32 = load %struct.coro_defer*, %struct.coro_defer** %8, align 8
  %33 = getelementptr inbounds %struct.coro_defer, %struct.coro_defer* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = load %struct.coro_defer*, %struct.coro_defer** %8, align 8
  %37 = getelementptr inbounds %struct.coro_defer, %struct.coro_defer* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.coro_defer*, %struct.coro_defer** %8, align 8
  %41 = getelementptr inbounds %struct.coro_defer, %struct.coro_defer* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %35(i32 %39, i32 %43)
  br label %55

45:                                               ; preds = %22
  %46 = load %struct.coro_defer*, %struct.coro_defer** %8, align 8
  %47 = getelementptr inbounds %struct.coro_defer, %struct.coro_defer* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32 (i32)*, i32 (i32)** %48, align 8
  %50 = load %struct.coro_defer*, %struct.coro_defer** %8, align 8
  %51 = getelementptr inbounds %struct.coro_defer, %struct.coro_defer* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %49(i32 %53)
  br label %55

55:                                               ; preds = %45, %31
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %7, align 8
  br label %18

59:                                               ; preds = %18
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.lwan_array*, %struct.lwan_array** %5, align 8
  %62 = getelementptr inbounds %struct.lwan_array, %struct.lwan_array* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
