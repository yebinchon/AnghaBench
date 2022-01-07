; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_check_alternate.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_check_alternate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_file_map = type { i32 }
%struct.module = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.image_section_map = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c".note.gnu.build-id\00", align 1
@SHT_NULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@IMAGE_NO_MAP = common dso_local global i32* null, align 8
@NT_GNU_BUILD_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c".gnu_debuglink\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Couldn't load linked debug file for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.image_file_map*, %struct.module*)* @elf_check_alternate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf_check_alternate(%struct.image_file_map* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.image_file_map*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.image_section_map, align 4
  %8 = alloca %struct.image_section_map, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.image_file_map* %0, %struct.image_file_map** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.image_file_map*, %struct.image_file_map** %3, align 8
  %15 = load i32, i32* @SHT_NULL, align 4
  %16 = call i64 @elf_find_section(%struct.image_file_map* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15, %struct.image_section_map* %7)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %2
  %19 = load i64, i64* @TRUE, align 8
  store i64 %19, i64* %6, align 8
  %20 = call i64 @image_map_section(%struct.image_section_map* %7)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** @IMAGE_NO_MAP, align 8
  %24 = icmp ne i32* %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %18
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NT_GNU_BUILD_ID, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.image_file_map*, %struct.image_file_map** %3, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 3
  %39 = ashr i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %34, i64 %40
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @elf_locate_build_id_target(%struct.image_file_map* %32, i32* %41, i32 %44)
  store i64 %45, i64* %5, align 8
  br label %46

46:                                               ; preds = %31, %25
  br label %47

47:                                               ; preds = %46, %18
  %48 = call i32 @image_unmap_section(%struct.image_section_map* %7)
  br label %49

49:                                               ; preds = %47, %2
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %96, label %52

52:                                               ; preds = %49
  %53 = load %struct.image_file_map*, %struct.image_file_map** %3, align 8
  %54 = load i32, i32* @SHT_NULL, align 4
  %55 = call i64 @elf_find_section(%struct.image_file_map* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %54, %struct.image_section_map* %8)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %96

57:                                               ; preds = %52
  %58 = load i64, i64* @TRUE, align 8
  store i64 %58, i64* %6, align 8
  %59 = call i64 @image_map_section(%struct.image_section_map* %8)
  %60 = inttoptr i64 %59 to i8*
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i32*, i32** @IMAGE_NO_MAP, align 8
  %63 = bitcast i32* %62 to i8*
  %64 = icmp ne i8* %61, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %57
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = add nsw i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = and i32 %70, -4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %66, i64 %72
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  %76 = load %struct.image_file_map*, %struct.image_file_map** %3, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load %struct.module*, %struct.module** %4, align 8
  %79 = getelementptr inbounds %struct.module, %struct.module* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i64 @elf_locate_debug_link(%struct.image_file_map* %76, i8* %77, i32 %81, i32 %82)
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %5, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %65
  %87 = load %struct.module*, %struct.module** %4, align 8
  %88 = getelementptr inbounds %struct.module, %struct.module* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @debugstr_w(i32 %90)
  %92 = call i32 @WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %86, %65
  br label %94

94:                                               ; preds = %93, %57
  %95 = call i32 @image_unmap_section(%struct.image_section_map* %8)
  br label %96

96:                                               ; preds = %94, %52, %49
  %97 = load i64, i64* %6, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i64, i64* %5, align 8
  br label %103

101:                                              ; preds = %96
  %102 = load i64, i64* @TRUE, align 8
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i64 [ %100, %99 ], [ %102, %101 ]
  ret i64 %104
}

declare dso_local i64 @elf_find_section(%struct.image_file_map*, i8*, i32, %struct.image_section_map*) #1

declare dso_local i64 @image_map_section(%struct.image_section_map*) #1

declare dso_local i64 @elf_locate_build_id_target(%struct.image_file_map*, i32*, i32) #1

declare dso_local i32 @image_unmap_section(%struct.image_section_map*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @elf_locate_debug_link(%struct.image_file_map*, i8*, i32, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
