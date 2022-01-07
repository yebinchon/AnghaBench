; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_allocate_resource_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_allocate_resource_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_data = type { i32, i32, %struct.resource_data*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource_data* (i32, i32, %struct.resource_data*, i32, i64)* @allocate_resource_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource_data* @allocate_resource_data(i32 %0, i32 %1, %struct.resource_data* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.resource_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.resource_data*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.resource_data* %2, %struct.resource_data** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %13 = load %struct.resource_data*, %struct.resource_data** %9, align 8
  %14 = icmp ne %struct.resource_data* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %5
  store %struct.resource_data* null, %struct.resource_data** %6, align 8
  br label %64

19:                                               ; preds = %15
  %20 = call i32 (...) @GetProcessHeap()
  %21 = load i64, i64* %11, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  br label %26

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = sext i32 %27 to i64
  %29 = add i64 24, %28
  %30 = trunc i64 %29 to i32
  %31 = call %struct.resource_data* @HeapAlloc(i32 %20, i32 0, i32 %30)
  store %struct.resource_data* %31, %struct.resource_data** %12, align 8
  %32 = load %struct.resource_data*, %struct.resource_data** %12, align 8
  %33 = icmp ne %struct.resource_data* %32, null
  br i1 %33, label %34, label %62

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.resource_data*, %struct.resource_data** %12, align 8
  %37 = getelementptr inbounds %struct.resource_data, %struct.resource_data* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.resource_data*, %struct.resource_data** %12, align 8
  %40 = getelementptr inbounds %struct.resource_data, %struct.resource_data* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.resource_data*, %struct.resource_data** %12, align 8
  %43 = getelementptr inbounds %struct.resource_data, %struct.resource_data* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* %11, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %34
  %47 = load %struct.resource_data*, %struct.resource_data** %12, align 8
  %48 = getelementptr inbounds %struct.resource_data, %struct.resource_data* %47, i64 1
  %49 = load %struct.resource_data*, %struct.resource_data** %12, align 8
  %50 = getelementptr inbounds %struct.resource_data, %struct.resource_data* %49, i32 0, i32 2
  store %struct.resource_data* %48, %struct.resource_data** %50, align 8
  %51 = load %struct.resource_data*, %struct.resource_data** %12, align 8
  %52 = getelementptr inbounds %struct.resource_data, %struct.resource_data* %51, i32 0, i32 2
  %53 = load %struct.resource_data*, %struct.resource_data** %52, align 8
  %54 = load %struct.resource_data*, %struct.resource_data** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @memcpy(%struct.resource_data* %53, %struct.resource_data* %54, i32 %55)
  br label %61

57:                                               ; preds = %34
  %58 = load %struct.resource_data*, %struct.resource_data** %9, align 8
  %59 = load %struct.resource_data*, %struct.resource_data** %12, align 8
  %60 = getelementptr inbounds %struct.resource_data, %struct.resource_data* %59, i32 0, i32 2
  store %struct.resource_data* %58, %struct.resource_data** %60, align 8
  br label %61

61:                                               ; preds = %57, %46
  br label %62

62:                                               ; preds = %61, %26
  %63 = load %struct.resource_data*, %struct.resource_data** %12, align 8
  store %struct.resource_data* %63, %struct.resource_data** %6, align 8
  br label %64

64:                                               ; preds = %62, %18
  %65 = load %struct.resource_data*, %struct.resource_data** %6, align 8
  ret %struct.resource_data* %65
}

declare dso_local %struct.resource_data* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(%struct.resource_data*, %struct.resource_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
