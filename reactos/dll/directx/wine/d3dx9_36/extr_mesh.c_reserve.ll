; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_reserve.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dynamic_array = type { i32, i8* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dynamic_array*, i32, i32)* @reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve(%struct.dynamic_array* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dynamic_array*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.dynamic_array* %0, %struct.dynamic_array** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.dynamic_array*, %struct.dynamic_array** %5, align 8
  %12 = getelementptr inbounds %struct.dynamic_array, %struct.dynamic_array* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %10, %13
  br i1 %14, label %15, label %60

15:                                               ; preds = %3
  %16 = load %struct.dynamic_array*, %struct.dynamic_array** %5, align 8
  %17 = getelementptr inbounds %struct.dynamic_array, %struct.dynamic_array* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load %struct.dynamic_array*, %struct.dynamic_array** %5, align 8
  %22 = getelementptr inbounds %struct.dynamic_array, %struct.dynamic_array* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load %struct.dynamic_array*, %struct.dynamic_array** %5, align 8
  %27 = getelementptr inbounds %struct.dynamic_array, %struct.dynamic_array* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %28, 2
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @max(i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = call i32 (...) @GetProcessHeap()
  %33 = load %struct.dynamic_array*, %struct.dynamic_array** %5, align 8
  %34 = getelementptr inbounds %struct.dynamic_array, %struct.dynamic_array* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = mul nsw i32 %36, %37
  %39 = call i8* @HeapReAlloc(i32 %32, i32 0, i8* %35, i32 %38)
  store i8* %39, i8** %8, align 8
  br label %48

40:                                               ; preds = %20, %15
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @max(i32 16, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = call i32 (...) @GetProcessHeap()
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 %44, %45
  %47 = call i8* @HeapAlloc(i32 %43, i32 0, i32 %46)
  store i8* %47, i8** %8, align 8
  br label %48

48:                                               ; preds = %40, %25
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %4, align 4
  br label %62

53:                                               ; preds = %48
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.dynamic_array*, %struct.dynamic_array** %5, align 8
  %56 = getelementptr inbounds %struct.dynamic_array, %struct.dynamic_array* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.dynamic_array*, %struct.dynamic_array** %5, align 8
  %59 = getelementptr inbounds %struct.dynamic_array, %struct.dynamic_array* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %53, %3
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %51
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @HeapReAlloc(i32, i32, i8*, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
