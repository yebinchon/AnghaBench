; ModuleID = '/home/carl/AnghaBench/reactos/base/system/msiexec/extr_msiexec.c_build_transforms.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/msiexec/extr_msiexec.c_build_transforms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { %struct.string_list*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.string_list*)* @build_transforms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @build_transforms(%struct.string_list* %0) #0 {
  %2 = alloca %struct.string_list*, align 8
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %2, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.string_list*, %struct.string_list** %2, align 8
  store %struct.string_list* %7, %struct.string_list** %3, align 8
  br label %8

8:                                                ; preds = %19, %1
  %9 = load %struct.string_list*, %struct.string_list** %3, align 8
  %10 = icmp ne %struct.string_list* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load %struct.string_list*, %struct.string_list** %3, align 8
  %13 = getelementptr inbounds %struct.string_list, %struct.string_list* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @lstrlenW(i32 %14)
  %16 = add nsw i32 %15, 1
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %11
  %20 = load %struct.string_list*, %struct.string_list** %3, align 8
  %21 = getelementptr inbounds %struct.string_list, %struct.string_list* %20, i32 0, i32 0
  %22 = load %struct.string_list*, %struct.string_list** %21, align 8
  store %struct.string_list* %22, %struct.string_list** %3, align 8
  br label %8

23:                                               ; preds = %8
  %24 = call i32 (...) @GetProcessHeap()
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = call i64* @HeapAlloc(i32 %24, i32 0, i32 %28)
  store i64* %29, i64** %4, align 8
  %30 = load i64*, i64** %4, align 8
  store i64* %30, i64** %5, align 8
  %31 = load %struct.string_list*, %struct.string_list** %2, align 8
  store %struct.string_list* %31, %struct.string_list** %3, align 8
  br label %32

32:                                               ; preds = %58, %23
  %33 = load %struct.string_list*, %struct.string_list** %3, align 8
  %34 = icmp ne %struct.string_list* %33, null
  br i1 %34, label %35, label %62

35:                                               ; preds = %32
  %36 = load %struct.string_list*, %struct.string_list** %3, align 8
  %37 = getelementptr inbounds %struct.string_list, %struct.string_list* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @lstrlenW(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i64*, i64** %5, align 8
  %41 = load %struct.string_list*, %struct.string_list** %3, align 8
  %42 = getelementptr inbounds %struct.string_list, %struct.string_list* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @lstrcpynW(i64* %40, i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i64*, i64** %5, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64* %49, i64** %5, align 8
  %50 = load %struct.string_list*, %struct.string_list** %3, align 8
  %51 = getelementptr inbounds %struct.string_list, %struct.string_list* %50, i32 0, i32 0
  %52 = load %struct.string_list*, %struct.string_list** %51, align 8
  %53 = icmp ne %struct.string_list* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = load i64*, i64** %5, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %5, align 8
  store i64 59, i64* %55, align 8
  br label %57

57:                                               ; preds = %54, %35
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.string_list*, %struct.string_list** %3, align 8
  %60 = getelementptr inbounds %struct.string_list, %struct.string_list* %59, i32 0, i32 0
  %61 = load %struct.string_list*, %struct.string_list** %60, align 8
  store %struct.string_list* %61, %struct.string_list** %3, align 8
  br label %32

62:                                               ; preds = %32
  %63 = load i64*, i64** %5, align 8
  store i64 0, i64* %63, align 8
  %64 = load i64*, i64** %4, align 8
  ret i64* %64
}

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i64* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @lstrcpynW(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
