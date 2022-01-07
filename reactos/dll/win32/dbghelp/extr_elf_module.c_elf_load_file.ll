; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_load_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32 }
%struct.elf_info = type { i32 }
%struct.image_file_map = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.elf_map_file_data = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Processing elf file '%s' at %08lx\0A\00", align 1
@from_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Relocatable ELF %s, but no load address. Loading at 0x0000000\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.process*, i32*, i64, i64, %struct.elf_info*)* @elf_load_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_load_file(%struct.process* %0, i32* %1, i64 %2, i64 %3, %struct.elf_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.process*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.elf_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.image_file_map, align 4
  %14 = alloca %struct.elf_map_file_data, align 8
  store %struct.process* %0, %struct.process** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.elf_info* %4, %struct.elf_info** %11, align 8
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @debugstr_w(i32* %16)
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %18)
  %20 = load i32, i32* @from_file, align 4
  %21 = getelementptr inbounds %struct.elf_map_file_data, %struct.elf_map_file_data* %14, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds %struct.elf_map_file_data, %struct.elf_map_file_data* %14, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32* %22, i32** %25, align 8
  %26 = call i32 @elf_map_file(%struct.elf_map_file_data* %14, %struct.image_file_map* %13)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  br label %52

30:                                               ; preds = %5
  %31 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %13, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @debugstr_w(i32* %40)
  %42 = call i32 @ERR(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %36, %30
  %44 = load %struct.process*, %struct.process** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.elf_info*, %struct.elf_info** %11, align 8
  %49 = call i32 @elf_load_file_from_fmap(%struct.process* %44, i32* %45, %struct.image_file_map* %13, i64 %46, i64 %47, %struct.elf_info* %48)
  store i32 %49, i32* %12, align 4
  %50 = call i32 @elf_unmap_file(%struct.image_file_map* %13)
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %43, %28
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @TRACE(i8*, i32, i64) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @elf_map_file(%struct.elf_map_file_data*, %struct.image_file_map*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @elf_load_file_from_fmap(%struct.process*, i32*, %struct.image_file_map*, i64, i64, %struct.elf_info*) #1

declare dso_local i32 @elf_unmap_file(%struct.image_file_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
