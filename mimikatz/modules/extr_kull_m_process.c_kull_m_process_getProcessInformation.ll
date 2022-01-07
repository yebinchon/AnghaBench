; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_process.c_kull_m_process_getProcessInformation.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_process.c_kull_m_process_getProcessInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@SystemProcessInformation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_process_getProcessInformation(i64 (%struct.TYPE_6__*, i32)* %0, i32 %1) #0 {
  %3 = alloca i64 (%struct.TYPE_6__*, i32)*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i64 (%struct.TYPE_6__*, i32)* %0, i64 (%struct.TYPE_6__*, i32)** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  %8 = load i32, i32* @SystemProcessInformation, align 4
  %9 = call i32 @kull_m_process_NtQuerySystemInformation(i32 %8, %struct.TYPE_6__** %6, i32 0)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @NT_SUCCESS(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %7, align 8
  br label %15

15:                                               ; preds = %29, %13
  %16 = load i64 (%struct.TYPE_6__*, i32)*, i64 (%struct.TYPE_6__*, i32)** %3, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 %16(%struct.TYPE_6__* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi i1 [ false, %15 ], [ %25, %21 ]
  br i1 %27, label %28, label %37

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = ptrtoint %struct.TYPE_6__* %30 to i64
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = inttoptr i64 %35 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %7, align 8
  br label %15

37:                                               ; preds = %26
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = call i32 @LocalFree(%struct.TYPE_6__* %38)
  br label %40

40:                                               ; preds = %37, %2
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @kull_m_process_NtQuerySystemInformation(i32, %struct.TYPE_6__**, i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @LocalFree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
