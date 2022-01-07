; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_enum_modules.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_enum_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32, i32 }
%struct.elf_info = type { i32, i64, i32 }
%struct.elf_enum_user = type { i8*, i32 }

@ELF_INFO_DEBUG_HEADER = common dso_local global i32 0, align 4
@ELF_INFO_NAME = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@elf_enum_modules_translate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_enum_modules(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.process, align 4
  %9 = alloca %struct.elf_info, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.elf_enum_user, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = call i32 @memset(%struct.process* %8, i32 0, i32 8)
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %struct.process, %struct.process* %8, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @ELF_INFO_DEBUG_HEADER, align 4
  %16 = load i32, i32* @ELF_INFO_NAME, align 4
  %17 = or i32 %15, %16
  %18 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %9, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = call i32 @elf_search_loader(%struct.process* %8, %struct.elf_info* %9)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %4, align 4
  br label %41

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %9, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.process, %struct.process* %8, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds %struct.elf_enum_user, %struct.elf_enum_user* %11, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds %struct.elf_enum_user, %struct.elf_enum_user* %11, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %9, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @elf_enum_modules_translate, align 4
  %34 = call i32 @elf_enum_modules_internal(%struct.process* %8, i64 %32, i32 %33, %struct.elf_enum_user* %11)
  store i32 %34, i32* %10, align 4
  %35 = call i32 (...) @GetProcessHeap()
  %36 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %9, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @HeapFree(i32 %35, i32 0, i8* %38)
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %23, %21
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.process*, i32, i32) #1

declare dso_local i32 @elf_search_loader(%struct.process*, %struct.elf_info*) #1

declare dso_local i32 @elf_enum_modules_internal(%struct.process*, i64, i32, %struct.elf_enum_user*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
