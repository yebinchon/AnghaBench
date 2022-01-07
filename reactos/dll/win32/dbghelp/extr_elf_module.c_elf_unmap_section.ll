; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_unmap_section.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_unmap_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_section_map = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.elf_file_map }
%struct.elf_file_map = type { %struct.TYPE_10__*, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64 }

@IMAGE_NO_MAP = common dso_local global i64 0, align 8
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Couldn't unmap the section\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elf_unmap_section(%struct.image_section_map* %0) #0 {
  %2 = alloca %struct.image_section_map*, align 8
  %3 = alloca %struct.elf_file_map*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.image_section_map* %0, %struct.image_section_map** %2, align 8
  %7 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %8 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.elf_file_map* %11, %struct.elf_file_map** %3, align 8
  %12 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %13 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %14, 0
  br i1 %15, label %16, label %114

16:                                               ; preds = %1
  %17 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %18 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.elf_file_map*, %struct.elf_file_map** %3, align 8
  %21 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %19, %23
  br i1 %24, label %25, label %114

25:                                               ; preds = %16
  %26 = load %struct.elf_file_map*, %struct.elf_file_map** %3, align 8
  %27 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %114, label %30

30:                                               ; preds = %25
  %31 = load %struct.elf_file_map*, %struct.elf_file_map** %3, align 8
  %32 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %35 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IMAGE_NO_MAP, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %114

42:                                               ; preds = %30
  %43 = load i32, i32* @_SC_PAGESIZE, align 4
  %44 = call i64 @sysconf(i32 %43)
  store i64 %44, i64* %4, align 8
  %45 = load %struct.elf_file_map*, %struct.elf_file_map** %3, align 8
  %46 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %49 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %4, align 8
  %56 = sub i64 %55, 1
  %57 = xor i64 %56, -1
  %58 = and i64 %54, %57
  store i64 %58, i64* %5, align 8
  %59 = load %struct.elf_file_map*, %struct.elf_file_map** %3, align 8
  %60 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %63 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.elf_file_map*, %struct.elf_file_map** %3, align 8
  %70 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %73 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %68, %78
  %80 = load i64, i64* %4, align 8
  %81 = add i64 %79, %80
  %82 = sub i64 %81, 1
  %83 = load i64, i64* %4, align 8
  %84 = sub i64 %83, 1
  %85 = xor i64 %84, -1
  %86 = and i64 %82, %85
  %87 = load i64, i64* %5, align 8
  %88 = sub i64 %86, %87
  store i64 %88, i64* %6, align 8
  %89 = load %struct.elf_file_map*, %struct.elf_file_map** %3, align 8
  %90 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %93 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = load i64, i64* %6, align 8
  %100 = call i64 @munmap(i8* %98, i64 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %42
  %103 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %42
  %105 = load i64, i64* @IMAGE_NO_MAP, align 8
  %106 = load %struct.elf_file_map*, %struct.elf_file_map** %3, align 8
  %107 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %106, i32 0, i32 0
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = load %struct.image_section_map*, %struct.image_section_map** %2, align 8
  %110 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  store i64 %105, i64* %113, align 8
  br label %114

114:                                              ; preds = %104, %30, %25, %16, %1
  ret void
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i64 @munmap(i8*, i64) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
