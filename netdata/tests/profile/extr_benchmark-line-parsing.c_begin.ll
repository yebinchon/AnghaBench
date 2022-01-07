; ModuleID = '/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-line-parsing.c_begin.c'
source_filename = "/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-line-parsing.c_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.base = type { i32, i64, %struct.entry*, %struct.entry*, i64 }
%struct.entry = type { i64, %struct.entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.base*)* @begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @begin(%struct.base* %0) #0 {
  %2 = alloca %struct.base*, align 8
  %3 = alloca %struct.entry*, align 8
  store %struct.base* %0, %struct.base** %2, align 8
  %4 = load %struct.base*, %struct.base** %2, align 8
  %5 = getelementptr inbounds %struct.base, %struct.base* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = srem i32 %6, 60
  %8 = call i32 @unlikely(i32 %7)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load %struct.base*, %struct.base** %2, align 8
  %12 = getelementptr inbounds %struct.base, %struct.base* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.base*, %struct.base** %2, align 8
  %14 = getelementptr inbounds %struct.base, %struct.base* %13, i32 0, i32 2
  %15 = load %struct.entry*, %struct.entry** %14, align 8
  store %struct.entry* %15, %struct.entry** %3, align 8
  br label %16

16:                                               ; preds = %30, %10
  %17 = load %struct.entry*, %struct.entry** %3, align 8
  %18 = icmp ne %struct.entry* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load %struct.entry*, %struct.entry** %3, align 8
  %21 = getelementptr inbounds %struct.entry, %struct.entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.base*, %struct.base** %2, align 8
  %26 = getelementptr inbounds %struct.base, %struct.base* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  br label %29

29:                                               ; preds = %24, %19
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.entry*, %struct.entry** %3, align 8
  %32 = getelementptr inbounds %struct.entry, %struct.entry* %31, i32 0, i32 1
  %33 = load %struct.entry*, %struct.entry** %32, align 8
  store %struct.entry* %33, %struct.entry** %3, align 8
  br label %16

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.base*, %struct.base** %2, align 8
  %37 = getelementptr inbounds %struct.base, %struct.base* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.base*, %struct.base** %2, align 8
  %41 = getelementptr inbounds %struct.base, %struct.base* %40, i32 0, i32 2
  %42 = load %struct.entry*, %struct.entry** %41, align 8
  %43 = load %struct.base*, %struct.base** %2, align 8
  %44 = getelementptr inbounds %struct.base, %struct.base* %43, i32 0, i32 3
  store %struct.entry* %42, %struct.entry** %44, align 8
  %45 = load %struct.base*, %struct.base** %2, align 8
  %46 = getelementptr inbounds %struct.base, %struct.base* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  ret void
}

declare dso_local i32 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
