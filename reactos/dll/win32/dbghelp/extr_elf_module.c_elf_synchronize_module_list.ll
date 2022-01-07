; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_synchronize_module_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_synchronize_module_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { %struct.module* }
%struct.module = type { i64, %struct.module*, %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.elf_module_info* }
%struct.elf_module_info = type { i32, i64 }
%struct.elf_load = type { i32*, i32, %struct.TYPE_4__, %struct.process* }
%struct.TYPE_4__ = type { i32 }

@DMT_ELF = common dso_local global i64 0, align 8
@DFI_ELF = common dso_local global i64 0, align 8
@ELF_INFO_MODULE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@elf_load_cb = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_synchronize_module_list(%struct.process* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.process*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.elf_load, align 8
  %6 = alloca %struct.elf_module_info*, align 8
  store %struct.process* %0, %struct.process** %3, align 8
  %7 = load %struct.process*, %struct.process** %3, align 8
  %8 = getelementptr inbounds %struct.process, %struct.process* %7, i32 0, i32 0
  %9 = load %struct.module*, %struct.module** %8, align 8
  store %struct.module* %9, %struct.module** %4, align 8
  br label %10

10:                                               ; preds = %36, %1
  %11 = load %struct.module*, %struct.module** %4, align 8
  %12 = icmp ne %struct.module* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load %struct.module*, %struct.module** %4, align 8
  %15 = getelementptr inbounds %struct.module, %struct.module* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @DMT_ELF, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.module*, %struct.module** %4, align 8
  %21 = getelementptr inbounds %struct.module, %struct.module* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = load %struct.module*, %struct.module** %4, align 8
  %26 = getelementptr inbounds %struct.module, %struct.module* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %26, align 8
  %28 = load i64, i64* @DFI_ELF, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %27, i64 %28
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.elf_module_info*, %struct.elf_module_info** %32, align 8
  %34 = getelementptr inbounds %struct.elf_module_info, %struct.elf_module_info* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %24, %19, %13
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.module*, %struct.module** %4, align 8
  %38 = getelementptr inbounds %struct.module, %struct.module* %37, i32 0, i32 1
  %39 = load %struct.module*, %struct.module** %38, align 8
  store %struct.module* %39, %struct.module** %4, align 8
  br label %10

40:                                               ; preds = %10
  %41 = load %struct.process*, %struct.process** %3, align 8
  %42 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %5, i32 0, i32 3
  store %struct.process* %41, %struct.process** %42, align 8
  %43 = load i32, i32* @ELF_INFO_MODULE, align 4
  %44 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %5, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @FALSE, align 4
  %47 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %5, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %5, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load %struct.process*, %struct.process** %3, align 8
  %50 = load i32, i32* @elf_load_cb, align 4
  %51 = call i32 @elf_enum_modules_internal(%struct.process* %49, i32* null, i32 %50, %struct.elf_load* %5)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %40
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %2, align 4
  br label %106

55:                                               ; preds = %40
  %56 = load %struct.process*, %struct.process** %3, align 8
  %57 = getelementptr inbounds %struct.process, %struct.process* %56, i32 0, i32 0
  %58 = load %struct.module*, %struct.module** %57, align 8
  store %struct.module* %58, %struct.module** %4, align 8
  br label %59

59:                                               ; preds = %100, %92, %55
  %60 = load %struct.module*, %struct.module** %4, align 8
  %61 = icmp ne %struct.module* %60, null
  br i1 %61, label %62, label %104

62:                                               ; preds = %59
  %63 = load %struct.module*, %struct.module** %4, align 8
  %64 = getelementptr inbounds %struct.module, %struct.module* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DMT_ELF, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %100

68:                                               ; preds = %62
  %69 = load %struct.module*, %struct.module** %4, align 8
  %70 = getelementptr inbounds %struct.module, %struct.module* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %100, label %73

73:                                               ; preds = %68
  %74 = load %struct.module*, %struct.module** %4, align 8
  %75 = getelementptr inbounds %struct.module, %struct.module* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %75, align 8
  %77 = load i64, i64* @DFI_ELF, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %76, i64 %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.elf_module_info*, %struct.elf_module_info** %81, align 8
  store %struct.elf_module_info* %82, %struct.elf_module_info** %6, align 8
  %83 = load %struct.elf_module_info*, %struct.elf_module_info** %6, align 8
  %84 = getelementptr inbounds %struct.elf_module_info, %struct.elf_module_info* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %73
  %88 = load %struct.elf_module_info*, %struct.elf_module_info** %6, align 8
  %89 = getelementptr inbounds %struct.elf_module_info, %struct.elf_module_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %87
  %93 = load %struct.process*, %struct.process** %3, align 8
  %94 = load %struct.module*, %struct.module** %4, align 8
  %95 = call i32 @module_remove(%struct.process* %93, %struct.module* %94)
  %96 = load %struct.process*, %struct.process** %3, align 8
  %97 = getelementptr inbounds %struct.process, %struct.process* %96, i32 0, i32 0
  %98 = load %struct.module*, %struct.module** %97, align 8
  store %struct.module* %98, %struct.module** %4, align 8
  br label %59

99:                                               ; preds = %87, %73
  br label %100

100:                                              ; preds = %99, %68, %62
  %101 = load %struct.module*, %struct.module** %4, align 8
  %102 = getelementptr inbounds %struct.module, %struct.module* %101, i32 0, i32 1
  %103 = load %struct.module*, %struct.module** %102, align 8
  store %struct.module* %103, %struct.module** %4, align 8
  br label %59

104:                                              ; preds = %59
  %105 = load i32, i32* @TRUE, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %53
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @elf_enum_modules_internal(%struct.process*, i32*, i32, %struct.elf_load*) #1

declare dso_local i32 @module_remove(%struct.process*, %struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
