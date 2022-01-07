; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/mods/extr_modusocket.c_modusocket_enter_sleep.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/mods/extr_modusocket.c_modusocket_enter_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MOD_NETWORK_MAX_SOCKETS = common dso_local global i32 0, align 4
@modusocket_sockets = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @modusocket_enter_sleep() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %30, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MOD_NETWORK_MAX_SOCKETS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @modusocket_sockets, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %4, align 8
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %9
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @SL_FD_SET(i64 %18, i32* %1)
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i64, i64* %2, align 8
  br label %27

25:                                               ; preds = %17
  %26 = load i64, i64* %4, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  store i64 %28, i64* %2, align 8
  br label %29

29:                                               ; preds = %27, %9
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %5

33:                                               ; preds = %5
  %34 = load i64, i64* %2, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i64, i64* %2, align 8
  %38 = add nsw i64 %37, 1
  %39 = call i32 @sl_Select(i64 %38, i32* %1, i32* null, i32* null, i32* null)
  br label %40

40:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32 @SL_FD_SET(i64, i32*) #1

declare dso_local i32 @sl_Select(i64, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
