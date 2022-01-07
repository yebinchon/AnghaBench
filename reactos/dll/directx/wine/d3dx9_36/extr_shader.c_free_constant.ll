; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_free_constant.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_shader.c_free_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctab_constant = type { %struct.ctab_constant*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctab_constant*)* @free_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_constant(%struct.ctab_constant* %0) #0 {
  %2 = alloca %struct.ctab_constant*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ctab_constant* %0, %struct.ctab_constant** %2, align 8
  %5 = load %struct.ctab_constant*, %struct.ctab_constant** %2, align 8
  %6 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %5, i32 0, i32 0
  %7 = load %struct.ctab_constant*, %struct.ctab_constant** %6, align 8
  %8 = icmp ne %struct.ctab_constant* %7, null
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = load %struct.ctab_constant*, %struct.ctab_constant** %2, align 8
  %11 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.ctab_constant*, %struct.ctab_constant** %2, align 8
  %17 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  br label %26

21:                                               ; preds = %9
  %22 = load %struct.ctab_constant*, %struct.ctab_constant** %2, align 8
  %23 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi i64 [ %20, %15 ], [ %25, %21 ]
  store i64 %27, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %28

28:                                               ; preds = %38, %26
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.ctab_constant*, %struct.ctab_constant** %2, align 8
  %34 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %33, i32 0, i32 0
  %35 = load %struct.ctab_constant*, %struct.ctab_constant** %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %35, i64 %36
  call void @free_constant(%struct.ctab_constant* %37)
  br label %38

38:                                               ; preds = %32
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %28

41:                                               ; preds = %28
  %42 = call i32 (...) @GetProcessHeap()
  %43 = load %struct.ctab_constant*, %struct.ctab_constant** %2, align 8
  %44 = getelementptr inbounds %struct.ctab_constant, %struct.ctab_constant* %43, i32 0, i32 0
  %45 = load %struct.ctab_constant*, %struct.ctab_constant** %44, align 8
  %46 = call i32 @HeapFree(i32 %42, i32 0, %struct.ctab_constant* %45)
  br label %47

47:                                               ; preds = %41, %1
  ret void
}

declare dso_local i32 @HeapFree(i32, i32, %struct.ctab_constant*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
