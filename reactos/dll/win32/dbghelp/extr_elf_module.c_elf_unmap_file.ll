; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_unmap_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_unmap_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_file_map = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.image_file_map*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.image_section_map = type { i64, %struct.image_file_map* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.image_file_map*)* @elf_unmap_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_unmap_file(%struct.image_file_map* %0) #0 {
  %2 = alloca %struct.image_file_map*, align 8
  %3 = alloca %struct.image_section_map, align 8
  store %struct.image_file_map* %0, %struct.image_file_map** %2, align 8
  br label %4

4:                                                ; preds = %48, %1
  %5 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %6 = icmp ne %struct.image_file_map* %5, null
  br i1 %6, label %7, label %61

7:                                                ; preds = %4
  %8 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %9 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %48

14:                                               ; preds = %7
  %15 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %16 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %3, i32 0, i32 1
  store %struct.image_file_map* %15, %struct.image_file_map** %16, align 8
  %17 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %3, i32 0, i32 0
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %30, %14
  %19 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %3, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %22 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %20, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = call i32 @elf_unmap_section(%struct.image_section_map* %3)
  br label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %3, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  br label %18

34:                                               ; preds = %18
  %35 = call i32 (...) @GetProcessHeap()
  %36 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %37 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @HeapFree(i32 %35, i32 0, i32 %40)
  %42 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %43 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @close(i32 %46)
  br label %48

48:                                               ; preds = %34, %7
  %49 = call i32 (...) @GetProcessHeap()
  %50 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %51 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @HeapFree(i32 %49, i32 0, i32 %54)
  %56 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %57 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.image_file_map*, %struct.image_file_map** %59, align 8
  store %struct.image_file_map* %60, %struct.image_file_map** %2, align 8
  br label %4

61:                                               ; preds = %4
  ret void
}

declare dso_local i32 @elf_unmap_section(%struct.image_section_map*) #1

declare dso_local i32 @HeapFree(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
