; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_handle.c_kull_m_handle_getHandles.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_handle.c_kull_m_handle_getHandles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@SystemHandleInformation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_handle_getHandles(i64 (i32*, i32)* %0, i32 %1) #0 {
  %3 = alloca i64 (i32*, i32)*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i64 (i32*, i32)* %0, i64 (i32*, i32)** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  %8 = load i32, i32* @SystemHandleInformation, align 4
  %9 = call i32 @kull_m_process_NtQuerySystemInformation(i32 %8, %struct.TYPE_4__** %7, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @NT_SUCCESS(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %33, %13
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load i64 (i32*, i32)*, i64 (i32*, i32)** %3, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %4, align 4
  %28 = call i64 %21(i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %20, %14
  %31 = phi i1 [ false, %14 ], [ %29, %20 ]
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %6, align 8
  br label %14

36:                                               ; preds = %30
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = call i32 @LocalFree(%struct.TYPE_4__* %37)
  br label %39

39:                                               ; preds = %36, %2
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @kull_m_process_NtQuerySystemInformation(i32, %struct.TYPE_4__**, i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @LocalFree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
