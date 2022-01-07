; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_utils.c_mp_chain_filters.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_utils.c_mp_chain_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_pin = type { i32 }
%struct.mp_filter = type { i32, %struct.mp_pin** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_chain_filters(%struct.mp_pin* %0, %struct.mp_pin* %1, %struct.mp_filter** %2, i32 %3) #0 {
  %5 = alloca %struct.mp_pin*, align 8
  %6 = alloca %struct.mp_pin*, align 8
  %7 = alloca %struct.mp_filter**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mp_pin* %0, %struct.mp_pin** %5, align 8
  store %struct.mp_pin* %1, %struct.mp_pin** %6, align 8
  store %struct.mp_filter** %2, %struct.mp_filter*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %53, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %56

14:                                               ; preds = %10
  %15 = load %struct.mp_filter**, %struct.mp_filter*** %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mp_filter*, %struct.mp_filter** %15, i64 %17
  %19 = load %struct.mp_filter*, %struct.mp_filter** %18, align 8
  %20 = icmp ne %struct.mp_filter* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %53

22:                                               ; preds = %14
  %23 = load %struct.mp_filter**, %struct.mp_filter*** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mp_filter*, %struct.mp_filter** %23, i64 %25
  %27 = load %struct.mp_filter*, %struct.mp_filter** %26, align 8
  %28 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.mp_filter**, %struct.mp_filter*** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.mp_filter*, %struct.mp_filter** %33, i64 %35
  %37 = load %struct.mp_filter*, %struct.mp_filter** %36, align 8
  %38 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %37, i32 0, i32 1
  %39 = load %struct.mp_pin**, %struct.mp_pin*** %38, align 8
  %40 = getelementptr inbounds %struct.mp_pin*, %struct.mp_pin** %39, i64 0
  %41 = load %struct.mp_pin*, %struct.mp_pin** %40, align 8
  %42 = load %struct.mp_pin*, %struct.mp_pin** %5, align 8
  %43 = call i32 @mp_pin_connect(%struct.mp_pin* %41, %struct.mp_pin* %42)
  %44 = load %struct.mp_filter**, %struct.mp_filter*** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.mp_filter*, %struct.mp_filter** %44, i64 %46
  %48 = load %struct.mp_filter*, %struct.mp_filter** %47, align 8
  %49 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %48, i32 0, i32 1
  %50 = load %struct.mp_pin**, %struct.mp_pin*** %49, align 8
  %51 = getelementptr inbounds %struct.mp_pin*, %struct.mp_pin** %50, i64 1
  %52 = load %struct.mp_pin*, %struct.mp_pin** %51, align 8
  store %struct.mp_pin* %52, %struct.mp_pin** %5, align 8
  br label %53

53:                                               ; preds = %22, %21
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %10

56:                                               ; preds = %10
  %57 = load %struct.mp_pin*, %struct.mp_pin** %6, align 8
  %58 = load %struct.mp_pin*, %struct.mp_pin** %5, align 8
  %59 = call i32 @mp_pin_connect(%struct.mp_pin* %57, %struct.mp_pin* %58)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_pin_connect(%struct.mp_pin*, %struct.mp_pin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
