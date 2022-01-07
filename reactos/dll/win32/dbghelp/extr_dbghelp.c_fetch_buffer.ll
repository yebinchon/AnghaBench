; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dbghelp.c_fetch_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_dbghelp.c_fetch_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fetch_buffer(%struct.process* %0, i32 %1) #0 {
  %3 = alloca %struct.process*, align 8
  %4 = alloca i32, align 4
  store %struct.process* %0, %struct.process** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.process*, %struct.process** %3, align 8
  %7 = getelementptr inbounds %struct.process, %struct.process* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ugt i32 %5, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %2
  %11 = load %struct.process*, %struct.process** %3, align 8
  %12 = getelementptr inbounds %struct.process, %struct.process* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = call i32 (...) @GetProcessHeap()
  %17 = load %struct.process*, %struct.process** %3, align 8
  %18 = getelementptr inbounds %struct.process, %struct.process* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @HeapReAlloc(i32 %16, i32 0, i8* %19, i32 %20)
  %22 = load %struct.process*, %struct.process** %3, align 8
  %23 = getelementptr inbounds %struct.process, %struct.process* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  br label %30

24:                                               ; preds = %10
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load i32, i32* %4, align 4
  %27 = call i8* @HeapAlloc(i32 %25, i32 0, i32 %26)
  %28 = load %struct.process*, %struct.process** %3, align 8
  %29 = getelementptr inbounds %struct.process, %struct.process* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %24, %15
  %31 = load %struct.process*, %struct.process** %3, align 8
  %32 = getelementptr inbounds %struct.process, %struct.process* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  br label %38

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = load %struct.process*, %struct.process** %3, align 8
  %41 = getelementptr inbounds %struct.process, %struct.process* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %2
  %43 = load %struct.process*, %struct.process** %3, align 8
  %44 = getelementptr inbounds %struct.process, %struct.process* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  ret i8* %45
}

declare dso_local i8* @HeapReAlloc(i32, i32, i8*, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
