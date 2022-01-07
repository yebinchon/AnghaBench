; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_image_private.h_image_unmap_section.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_image_private.h_image_unmap_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_section_map = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.image_section_map*)* @image_unmap_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @image_unmap_section(%struct.image_section_map* %0) #0 {
  %2 = alloca %struct.image_section_map*, align 8
  store %struct.image_section_map* %0, %struct.image_section_map** %2, align 8
  %3 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %4 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %25

8:                                                ; preds = %1
  %9 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %10 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %23 [
    i32 130, label %14
    i32 129, label %17
    i32 128, label %20
  ]

14:                                               ; preds = %8
  %15 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %16 = call i32 @elf_unmap_section(%struct.image_section_map* %15)
  br label %25

17:                                               ; preds = %8
  %18 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %19 = call i32 @macho_unmap_section(%struct.image_section_map* %18)
  br label %25

20:                                               ; preds = %8
  %21 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %22 = call i32 @pe_unmap_section(%struct.image_section_map* %21)
  br label %25

23:                                               ; preds = %8
  %24 = call i32 @assert(i32 0)
  br label %25

25:                                               ; preds = %7, %23, %20, %17, %14
  ret void
}

declare dso_local i32 @elf_unmap_section(%struct.image_section_map*) #1

declare dso_local i32 @macho_unmap_section(%struct.image_section_map*) #1

declare dso_local i32 @pe_unmap_section(%struct.image_section_map*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
