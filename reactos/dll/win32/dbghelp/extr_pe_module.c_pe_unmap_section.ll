; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_unmap_section.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_unmap_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_section_map = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@IMAGE_NO_MAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pe_unmap_section(%struct.image_section_map* %0) #0 {
  %2 = alloca %struct.image_section_map*, align 8
  store %struct.image_section_map* %0, %struct.image_section_map** %2, align 8
  %3 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %4 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp uge i64 %5, 0
  br i1 %6, label %7, label %55

7:                                                ; preds = %1
  %8 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %9 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %12 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %11, i32 0, i32 1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %10, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %7
  %22 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %23 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %22, i32 0, i32 1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %30 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IMAGE_NO_MAP, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %21
  %38 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %39 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %38, i32 0, i32 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = call i32 @pe_unmap_full(%struct.TYPE_12__* %40)
  %42 = load i64, i64* @IMAGE_NO_MAP, align 8
  %43 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %44 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %43, i32 0, i32 1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %51 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i64 %42, i64* %54, align 8
  br label %55

55:                                               ; preds = %37, %21, %7, %1
  ret void
}

declare dso_local i32 @pe_unmap_full(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
