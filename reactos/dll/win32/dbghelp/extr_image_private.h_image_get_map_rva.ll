; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_image_private.h_image_get_map_rva.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_image_private.h_image_get_map_rva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_section_map = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_section_map*)* @image_get_map_rva to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @image_get_map_rva(%struct.image_section_map* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.image_section_map*, align 8
  store %struct.image_section_map* %0, %struct.image_section_map** %3, align 8
  %4 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %5 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %11 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %24 [
    i32 130, label %15
    i32 129, label %18
    i32 128, label %21
  ]

15:                                               ; preds = %9
  %16 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %17 = call i32 @elf_get_map_rva(%struct.image_section_map* %16)
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %9
  %19 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %20 = call i32 @macho_get_map_rva(%struct.image_section_map* %19)
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %9
  %22 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %23 = call i32 @pe_get_map_rva(%struct.image_section_map* %22)
  store i32 %23, i32* %2, align 4
  br label %26

24:                                               ; preds = %9
  %25 = call i32 @assert(i32 0)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %21, %18, %15, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @elf_get_map_rva(%struct.image_section_map*) #1

declare dso_local i32 @macho_get_map_rva(%struct.image_section_map*) #1

declare dso_local i32 @pe_get_map_rva(%struct.image_section_map*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
