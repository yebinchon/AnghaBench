; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_null.c_flip_page.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_null.c_flip_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.priv* }
%struct.priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @flip_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flip_page(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vo* %0, %struct.vo** %2, align 8
  %8 = load %struct.vo*, %struct.vo** %2, align 8
  %9 = getelementptr inbounds %struct.vo, %struct.vo* %8, i32 0, i32 0
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %3, align 8
  %11 = load %struct.priv*, %struct.priv** %3, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %1
  %16 = load %struct.priv*, %struct.priv** %3, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sitofp i32 %18 to double
  %20 = fdiv double 1.000000e+06, %19
  %21 = fptosi double %20 to i32
  store i32 %21, i32* %4, align 4
  %22 = call i32 (...) @mp_time_us()
  %23 = load i32, i32* %4, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %35, %15
  %30 = call i32 (...) @mp_time_us()
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %40

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 %36, %37
  %39 = call i32 @mp_sleep_us(i32 %38)
  br label %29

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %1
  ret void
}

declare dso_local i32 @mp_time_us(...) #1

declare dso_local i32 @mp_sleep_us(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
