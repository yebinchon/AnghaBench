; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_find_section.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_find_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_file_map = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.elf_file_map }
%struct.elf_file_map = type { i64, %struct.image_file_map*, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.image_section_map = type { i32, %struct.image_file_map*, i32, %struct.image_file_map* }

@IMAGE_NO_MAP = common dso_local global i64 0, align 8
@SHT_NULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_find_section(%struct.image_file_map* %0, i8* %1, i32 %2, %struct.image_section_map* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.image_file_map*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.image_section_map*, align 8
  %10 = alloca %struct.elf_file_map*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.image_section_map, align 8
  store %struct.image_file_map* %0, %struct.image_file_map** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.image_section_map* %3, %struct.image_section_map** %9, align 8
  br label %13

13:                                               ; preds = %98, %4
  %14 = load %struct.image_file_map*, %struct.image_file_map** %6, align 8
  %15 = icmp ne %struct.image_file_map* %14, null
  br i1 %15, label %16, label %102

16:                                               ; preds = %13
  %17 = load %struct.image_file_map*, %struct.image_file_map** %6, align 8
  %18 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.elf_file_map* %19, %struct.elf_file_map** %10, align 8
  %20 = load %struct.elf_file_map*, %struct.elf_file_map** %10, align 8
  %21 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IMAGE_NO_MAP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %45

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %12, i32 0, i32 0
  %27 = load %struct.image_file_map*, %struct.image_file_map** %6, align 8
  %28 = ptrtoint %struct.image_file_map* %27 to i32
  store i32 %28, i32* %26, align 8
  %29 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %12, i32 0, i32 1
  %30 = load %struct.elf_file_map*, %struct.elf_file_map** %10, align 8
  %31 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.image_file_map*
  store %struct.image_file_map* %35, %struct.image_file_map** %29, align 8
  %36 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %12, i32 0, i32 2
  store i32 0, i32* %36, align 8
  %37 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %12, i32 0, i32 3
  store %struct.image_file_map* null, %struct.image_file_map** %37, align 8
  %38 = call i64 @elf_map_section(%struct.image_section_map* %12)
  %39 = load %struct.elf_file_map*, %struct.elf_file_map** %10, align 8
  %40 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i64, i64* @IMAGE_NO_MAP, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %25
  br label %102

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44, %16
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %95, %45
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.elf_file_map*, %struct.elf_file_map** %10, align 8
  %49 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %47, %51
  br i1 %52, label %53, label %98

53:                                               ; preds = %46
  %54 = load %struct.elf_file_map*, %struct.elf_file_map** %10, align 8
  %55 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.elf_file_map*, %struct.elf_file_map** %10, align 8
  %58 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %57, i32 0, i32 2
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %56, %65
  %67 = load i8*, i8** %7, align 8
  %68 = call i64 @strcmp(i64 %66, i8* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %53
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @SHT_NULL, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.elf_file_map*, %struct.elf_file_map** %10, align 8
  %77 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %76, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %75, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %74, %70
  %87 = load %struct.image_file_map*, %struct.image_file_map** %6, align 8
  %88 = load %struct.image_section_map*, %struct.image_section_map** %9, align 8
  %89 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %88, i32 0, i32 1
  store %struct.image_file_map* %87, %struct.image_file_map** %89, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.image_section_map*, %struct.image_section_map** %9, align 8
  %92 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @TRUE, align 4
  store i32 %93, i32* %5, align 4
  br label %108

94:                                               ; preds = %74, %53
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %11, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %46

98:                                               ; preds = %46
  %99 = load %struct.elf_file_map*, %struct.elf_file_map** %10, align 8
  %100 = getelementptr inbounds %struct.elf_file_map, %struct.elf_file_map* %99, i32 0, i32 1
  %101 = load %struct.image_file_map*, %struct.image_file_map** %100, align 8
  store %struct.image_file_map* %101, %struct.image_file_map** %6, align 8
  br label %13

102:                                              ; preds = %43, %13
  %103 = load %struct.image_section_map*, %struct.image_section_map** %9, align 8
  %104 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %103, i32 0, i32 1
  store %struct.image_file_map* null, %struct.image_file_map** %104, align 8
  %105 = load %struct.image_section_map*, %struct.image_section_map** %9, align 8
  %106 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %105, i32 0, i32 0
  store i32 -1, i32* %106, align 8
  %107 = load i32, i32* @FALSE, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %102, %86
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i64 @elf_map_section(%struct.image_section_map*) #1

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
