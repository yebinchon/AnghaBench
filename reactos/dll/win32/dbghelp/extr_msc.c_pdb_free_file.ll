; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_free_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_free_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdb_file_info = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pdb_file_info*)* @pdb_free_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdb_free_file(%struct.pdb_file_info* %0) #0 {
  %2 = alloca %struct.pdb_file_info*, align 8
  store %struct.pdb_file_info* %0, %struct.pdb_file_info** %2, align 8
  %3 = load %struct.pdb_file_info*, %struct.pdb_file_info** %2, align 8
  %4 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %28 [
    i32 128, label %6
    i32 129, label %17
  ]

6:                                                ; preds = %1
  %7 = load %struct.pdb_file_info*, %struct.pdb_file_info** %2, align 8
  %8 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @pdb_free(i32* %11)
  %13 = load %struct.pdb_file_info*, %struct.pdb_file_info** %2, align 8
  %14 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %28

17:                                               ; preds = %1
  %18 = load %struct.pdb_file_info*, %struct.pdb_file_info** %2, align 8
  %19 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @pdb_free(i32* %22)
  %24 = load %struct.pdb_file_info*, %struct.pdb_file_info** %2, align 8
  %25 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %1, %17, %6
  %29 = call i32 (...) @GetProcessHeap()
  %30 = load %struct.pdb_file_info*, %struct.pdb_file_info** %2, align 8
  %31 = getelementptr inbounds %struct.pdb_file_info, %struct.pdb_file_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @HeapFree(i32 %29, i32 0, i32 %32)
  ret void
}

declare dso_local i32 @pdb_free(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
