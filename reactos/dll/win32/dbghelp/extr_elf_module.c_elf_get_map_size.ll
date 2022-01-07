; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_get_map_size.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_get_map_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_section_map = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_get_map_size(%struct.image_section_map* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.image_section_map*, align 8
  store %struct.image_section_map* %0, %struct.image_section_map** %3, align 8
  %4 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %5 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ult i64 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %10 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %13 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %11, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %37

22:                                               ; preds = %8
  %23 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %24 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %23, i32 0, i32 1
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %31 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %22, %21
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
