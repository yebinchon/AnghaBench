; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_load_debug_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_load_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i64, %struct.TYPE_4__, %struct.module_format** }
%struct.TYPE_4__ = type { i32 }
%struct.module_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pool = type { i32 }
%struct.hash_table = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@DMT_ELF = common dso_local global i64 0, align 8
@DFI_ELF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Bad elf module '%s'\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_load_debug_info(%struct.module* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.module*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pool, align 4
  %6 = alloca %struct.hash_table, align 4
  %7 = alloca %struct.module_format*, align 8
  store %struct.module* %0, %struct.module** %3, align 8
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.module*, %struct.module** %3, align 8
  %10 = getelementptr inbounds %struct.module, %struct.module* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DMT_ELF, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %28, label %14

14:                                               ; preds = %1
  %15 = load %struct.module*, %struct.module** %3, align 8
  %16 = getelementptr inbounds %struct.module, %struct.module* %15, i32 0, i32 2
  %17 = load %struct.module_format**, %struct.module_format*** %16, align 8
  %18 = load i64, i64* @DFI_ELF, align 8
  %19 = getelementptr inbounds %struct.module_format*, %struct.module_format** %17, i64 %18
  %20 = load %struct.module_format*, %struct.module_format** %19, align 8
  store %struct.module_format* %20, %struct.module_format** %7, align 8
  %21 = icmp ne %struct.module_format* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load %struct.module_format*, %struct.module_format** %7, align 8
  %24 = getelementptr inbounds %struct.module_format, %struct.module_format* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %22, %14, %1
  %29 = load %struct.module*, %struct.module** %3, align 8
  %30 = getelementptr inbounds %struct.module, %struct.module* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @debugstr_w(i32 %32)
  %34 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %2, align 4
  br label %48

36:                                               ; preds = %22
  %37 = call i32 @pool_init(%struct.pool* %5, i32 65536)
  %38 = call i32 @hash_table_init(%struct.pool* %5, %struct.hash_table* %6, i32 256)
  %39 = load %struct.module*, %struct.module** %3, align 8
  %40 = load %struct.module_format*, %struct.module_format** %7, align 8
  %41 = getelementptr inbounds %struct.module_format, %struct.module_format* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = call i32 @elf_load_debug_info_from_map(%struct.module* %39, i32* %44, %struct.pool* %5, %struct.hash_table* %6)
  store i32 %45, i32* %4, align 4
  %46 = call i32 @pool_destroy(%struct.pool* %5)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %36, %28
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @pool_init(%struct.pool*, i32) #1

declare dso_local i32 @hash_table_init(%struct.pool*, %struct.hash_table*, i32) #1

declare dso_local i32 @elf_load_debug_info_from_map(%struct.module*, i32*, %struct.pool*, %struct.hash_table*) #1

declare dso_local i32 @pool_destroy(%struct.pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
