; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_end_find.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_end_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_file_map = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.image_file_map*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.image_section_map = type { i32, %struct.image_file_map* }

@IMAGE_NO_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.image_file_map*)* @elf_end_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_end_find(%struct.image_file_map* %0) #0 {
  %2 = alloca %struct.image_file_map*, align 8
  %3 = alloca %struct.image_section_map, align 8
  store %struct.image_file_map* %0, %struct.image_file_map** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %6 = icmp ne %struct.image_file_map* %5, null
  br i1 %6, label %7, label %28

7:                                                ; preds = %4
  %8 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %9 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %3, i32 0, i32 1
  store %struct.image_file_map* %8, %struct.image_file_map** %9, align 8
  %10 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %11 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %3, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = call i32 @elf_unmap_section(%struct.image_section_map* %3)
  %18 = load i32, i32* @IMAGE_NO_MAP, align 4
  %19 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %20 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 8
  %23 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %24 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.image_file_map*, %struct.image_file_map** %26, align 8
  store %struct.image_file_map* %27, %struct.image_file_map** %2, align 8
  br label %4

28:                                               ; preds = %4
  ret void
}

declare dso_local i32 @elf_unmap_section(%struct.image_section_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
