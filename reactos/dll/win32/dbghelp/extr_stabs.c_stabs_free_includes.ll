; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_free_includes.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_free_includes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }

@num_include_def = common dso_local global i32 0, align 4
@include_defs = common dso_local global %struct.TYPE_4__* null, align 8
@num_alloc_include_def = common dso_local global i64 0, align 8
@cu_vector = common dso_local global %struct.TYPE_4__* null, align 8
@cu_nrofentries = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @stabs_free_includes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stabs_free_includes() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @stabs_reset_includes()
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %24, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @num_include_def, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = call i32 (...) @GetProcessHeap()
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @include_defs, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @HeapFree(i32 %8, i32 0, %struct.TYPE_4__* %14)
  %16 = call i32 (...) @GetProcessHeap()
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @include_defs, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32 @HeapFree(i32 %16, i32 0, %struct.TYPE_4__* %22)
  br label %24

24:                                               ; preds = %7
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %3

27:                                               ; preds = %3
  %28 = call i32 (...) @GetProcessHeap()
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @include_defs, align 8
  %30 = call i32 @HeapFree(i32 %28, i32 0, %struct.TYPE_4__* %29)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @include_defs, align 8
  store i32 0, i32* @num_include_def, align 4
  store i64 0, i64* @num_alloc_include_def, align 8
  %31 = call i32 (...) @GetProcessHeap()
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cu_vector, align 8
  %33 = call i32 @HeapFree(i32 %31, i32 0, %struct.TYPE_4__* %32)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** @cu_vector, align 8
  store i64 0, i64* @cu_nrofentries, align 8
  ret void
}

declare dso_local i32 @stabs_reset_includes(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
