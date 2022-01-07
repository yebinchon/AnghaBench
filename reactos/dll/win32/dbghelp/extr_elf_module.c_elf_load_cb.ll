; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_load_cb.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_load_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_load = type { i64, %struct.TYPE_19__, %struct.TYPE_18__*, i32 }
%struct.TYPE_19__ = type { %struct.module* }
%struct.module = type { %struct.TYPE_15__, %struct.TYPE_14__** }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.elf_map_file_data = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i32 }
%struct.image_file_map = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@DFI_ELF = common dso_local global i64 0, align 8
@from_process = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64, i64, i8*)* @elf_load_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf_load_cb(i32* %0, i64 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.elf_load*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.module*, align 8
  %16 = alloca %struct.elf_map_file_data, align 8
  %17 = alloca %struct.image_file_map, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = bitcast i8* %18 to %struct.elf_load*
  store %struct.elf_load* %19, %struct.elf_load** %12, align 8
  %20 = load i64, i64* @TRUE, align 8
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %83

23:                                               ; preds = %5
  %24 = load %struct.elf_load*, %struct.elf_load** %12, align 8
  %25 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %24, i32 0, i32 2
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call %struct.module* @module_is_already_loaded(%struct.TYPE_18__* %26, i32* %27)
  store %struct.module* %28, %struct.module** %15, align 8
  %29 = icmp ne %struct.module* %28, null
  br i1 %29, label %30, label %52

30:                                               ; preds = %23
  %31 = load %struct.module*, %struct.module** %15, align 8
  %32 = load %struct.elf_load*, %struct.elf_load** %12, align 8
  %33 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  store %struct.module* %31, %struct.module** %34, align 8
  %35 = load %struct.elf_load*, %struct.elf_load** %12, align 8
  %36 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load %struct.module*, %struct.module** %37, align 8
  %39 = getelementptr inbounds %struct.module, %struct.module* %38, i32 0, i32 1
  %40 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %39, align 8
  %41 = load i64, i64* @DFI_ELF, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %40, i64 %41
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.module*, %struct.module** %15, align 8
  %49 = getelementptr inbounds %struct.module, %struct.module* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %6, align 8
  br label %137

52:                                               ; preds = %23
  %53 = load i32, i32* @from_process, align 4
  %54 = getelementptr inbounds %struct.elf_map_file_data, %struct.elf_map_file_data* %16, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = load %struct.elf_load*, %struct.elf_load** %12, align 8
  %56 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %55, i32 0, i32 2
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.elf_map_file_data, %struct.elf_map_file_data* %16, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  %63 = load i64, i64* %8, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = getelementptr inbounds %struct.elf_map_file_data, %struct.elf_map_file_data* %16, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  %68 = call i64 @elf_map_file(%struct.elf_map_file_data* %16, %struct.image_file_map* %17)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %52
  %71 = load %struct.elf_load*, %struct.elf_load** %12, align 8
  %72 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %71, i32 0, i32 2
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.elf_load*, %struct.elf_load** %12, align 8
  %77 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %76, i32 0, i32 1
  %78 = call i32 @elf_load_file_from_fmap(%struct.TYPE_18__* %73, i32* %74, %struct.image_file_map* %17, i64 %75, i32 0, %struct.TYPE_19__* %77)
  %79 = load %struct.elf_load*, %struct.elf_load** %12, align 8
  %80 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %70, %52
  %82 = load i64, i64* @TRUE, align 8
  store i64 %82, i64* %6, align 8
  br label %137

83:                                               ; preds = %5
  %84 = load %struct.elf_load*, %struct.elf_load** %12, align 8
  %85 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load i32*, i32** %7, align 8
  %90 = call i32* @strrchrW(i32* %89, i8 signext 47)
  store i32* %90, i32** %14, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %14, align 8
  %93 = icmp ne i32* %91, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = load i32*, i32** %7, align 8
  store i32* %95, i32** %14, align 8
  br label %96

96:                                               ; preds = %94, %88
  br label %97

97:                                               ; preds = %96, %83
  %98 = load %struct.elf_load*, %struct.elf_load** %12, align 8
  %99 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %97
  %103 = load i32*, i32** %14, align 8
  %104 = load %struct.elf_load*, %struct.elf_load** %12, align 8
  %105 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.elf_load*, %struct.elf_load** %12, align 8
  %108 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @lstrlenW(i64 %109)
  %111 = sext i32 %110 to i64
  %112 = mul i64 %111, 4
  %113 = trunc i64 %112 to i32
  %114 = call i32 @memcmp(i32* %103, i64 %106, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %135, label %116

116:                                              ; preds = %102, %97
  %117 = load %struct.elf_load*, %struct.elf_load** %12, align 8
  %118 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %117, i32 0, i32 2
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %9, align 8
  %123 = load %struct.elf_load*, %struct.elf_load** %12, align 8
  %124 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %123, i32 0, i32 1
  %125 = call i32 @elf_search_and_load_file(%struct.TYPE_18__* %119, i32* %120, i64 %121, i64 %122, %struct.TYPE_19__* %124)
  %126 = load %struct.elf_load*, %struct.elf_load** %12, align 8
  %127 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  %128 = load %struct.elf_load*, %struct.elf_load** %12, align 8
  %129 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %116
  %133 = load i64, i64* @FALSE, align 8
  store i64 %133, i64* %13, align 8
  br label %134

134:                                              ; preds = %132, %116
  br label %135

135:                                              ; preds = %134, %102
  %136 = load i64, i64* %13, align 8
  store i64 %136, i64* %6, align 8
  br label %137

137:                                              ; preds = %135, %81, %30
  %138 = load i64, i64* %6, align 8
  ret i64 %138
}

declare dso_local %struct.module* @module_is_already_loaded(%struct.TYPE_18__*, i32*) #1

declare dso_local i64 @elf_map_file(%struct.elf_map_file_data*, %struct.image_file_map*) #1

declare dso_local i32 @elf_load_file_from_fmap(%struct.TYPE_18__*, i32*, %struct.image_file_map*, i64, i32, %struct.TYPE_19__*) #1

declare dso_local i32* @strrchrW(i32*, i8 signext) #1

declare dso_local i32 @memcmp(i32*, i64, i32) #1

declare dso_local i32 @lstrlenW(i64) #1

declare dso_local i32 @elf_search_and_load_file(%struct.TYPE_18__*, i32*, i64, i64, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
