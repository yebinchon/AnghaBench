; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_read_wine_loader_dbg_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_read_wine_loader_dbg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32 }
%struct.elf_info = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ELF_INFO_DEBUG_HEADER = common dso_local global i32 0, align 4
@ELF_INFO_MODULE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DFI_ELF = common dso_local global i64 0, align 8
@S_WineLoaderW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_read_wine_loader_dbg_info(%struct.process* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.process*, align 8
  %4 = alloca %struct.elf_info, align 8
  store %struct.process* %0, %struct.process** %3, align 8
  %5 = load i32, i32* @ELF_INFO_DEBUG_HEADER, align 4
  %6 = load i32, i32* @ELF_INFO_MODULE, align 4
  %7 = or i32 %5, %6
  %8 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %4, i32 0, i32 0
  store i32 %7, i32* %8, align 8
  %9 = load %struct.process*, %struct.process** %3, align 8
  %10 = call i32 @elf_search_loader(%struct.process* %9, %struct.elf_info* %4)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %2, align 4
  br label %36

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %4, i32 0, i32 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %17, align 8
  %19 = load i64, i64* @DFI_ELF, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %18, i64 %19
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %4, i32 0, i32 2
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = load i32, i32* @S_WineLoaderW, align 4
  %29 = call i32 @module_set_module(%struct.TYPE_8__* %27, i32 %28)
  %30 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %4, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.process*, %struct.process** %3, align 8
  %33 = getelementptr inbounds %struct.process, %struct.process* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = icmp ne i32 %31, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %14, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @elf_search_loader(%struct.process*, %struct.elf_info*) #1

declare dso_local i32 @module_set_module(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
