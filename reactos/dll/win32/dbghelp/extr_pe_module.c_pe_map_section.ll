; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_map_section.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_map_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_section_map = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.pe_file_map }
%struct.pe_file_map = type { %struct.TYPE_13__*, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@IMAGE_NO_MAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"Section %ld: virtual (0x%x) > raw (0x%x) size - not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pe_map_section(%struct.image_section_map* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.image_section_map*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pe_file_map*, align 8
  %6 = alloca i32*, align 8
  store %struct.image_section_map* %0, %struct.image_section_map** %3, align 8
  %7 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %8 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %7, i32 0, i32 1
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store %struct.pe_file_map* %11, %struct.pe_file_map** %5, align 8
  %12 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %13 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %14, 0
  br i1 %15, label %16, label %128

16:                                               ; preds = %1
  %17 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %18 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.pe_file_map*, %struct.pe_file_map** %5, align 8
  %21 = getelementptr inbounds %struct.pe_file_map, %struct.pe_file_map* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %19, %24
  br i1 %25, label %26, label %128

26:                                               ; preds = %16
  %27 = load %struct.pe_file_map*, %struct.pe_file_map** %5, align 8
  %28 = getelementptr inbounds %struct.pe_file_map, %struct.pe_file_map* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %31 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IMAGE_NO_MAP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %128

38:                                               ; preds = %26
  %39 = load %struct.pe_file_map*, %struct.pe_file_map** %5, align 8
  %40 = getelementptr inbounds %struct.pe_file_map, %struct.pe_file_map* %39, i32 0, i32 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %43 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.pe_file_map*, %struct.pe_file_map** %5, align 8
  %51 = getelementptr inbounds %struct.pe_file_map, %struct.pe_file_map* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %54 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %49, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %38
  %62 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %63 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.pe_file_map*, %struct.pe_file_map** %5, align 8
  %66 = getelementptr inbounds %struct.pe_file_map, %struct.pe_file_map* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %69 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.pe_file_map*, %struct.pe_file_map** %5, align 8
  %77 = getelementptr inbounds %struct.pe_file_map, %struct.pe_file_map* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %80 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @FIXME(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %64, i64 %75, i64 %85)
  %87 = load i64, i64* @IMAGE_NO_MAP, align 8
  %88 = inttoptr i64 %87 to i8*
  store i8* %88, i8** %2, align 8
  br label %131

89:                                               ; preds = %38
  %90 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %91 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %90, i32 0, i32 1
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = call i8* @pe_map_full(%struct.TYPE_14__* %92, i32** %6)
  store i8* %93, i8** %4, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %127

95:                                               ; preds = %89
  %96 = load i32*, i32** %6, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = load %struct.pe_file_map*, %struct.pe_file_map** %5, align 8
  %99 = getelementptr inbounds %struct.pe_file_map, %struct.pe_file_map* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %102 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @RtlImageRvaToVa(i32* %96, i8* %97, i32 %107, i32* null)
  %109 = load %struct.pe_file_map*, %struct.pe_file_map** %5, align 8
  %110 = getelementptr inbounds %struct.pe_file_map, %struct.pe_file_map* %109, i32 0, i32 0
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %113 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  store i64 %108, i64* %116, align 8
  %117 = load %struct.pe_file_map*, %struct.pe_file_map** %5, align 8
  %118 = getelementptr inbounds %struct.pe_file_map, %struct.pe_file_map* %117, i32 0, i32 0
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = load %struct.image_section_map*, %struct.image_section_map** %3, align 8
  %121 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i8*
  store i8* %126, i8** %2, align 8
  br label %131

127:                                              ; preds = %89
  br label %128

128:                                              ; preds = %127, %26, %16, %1
  %129 = load i64, i64* @IMAGE_NO_MAP, align 8
  %130 = inttoptr i64 %129 to i8*
  store i8* %130, i8** %2, align 8
  br label %131

131:                                              ; preds = %128, %95, %61
  %132 = load i8*, i8** %2, align 8
  ret i8* %132
}

declare dso_local i32 @FIXME(i8*, i64, i64, i64) #1

declare dso_local i8* @pe_map_full(%struct.TYPE_14__*, i32**) #1

declare dso_local i64 @RtlImageRvaToVa(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
