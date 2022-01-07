; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_search_and_load_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_search_and_load_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32 }
%struct.elf_info = type { %struct.module* }
%struct.module = type { %struct.TYPE_8__, %struct.TYPE_7__** }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@elf_search_and_load_file.S_libstdcPPW = internal constant [10 x i8] c"libstdc++\00", align 1
@DFI_ELF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"LD_LIBRARY_PATH\00", align 1
@BINDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.process*, i8*, i64, i64, %struct.elf_info*)* @elf_search_and_load_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @elf_search_and_load_file(%struct.process* %0, i8* %1, i64 %2, i64 %3, %struct.elf_info* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.process*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.elf_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.module*, align 8
  store %struct.process* %0, %struct.process** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.elf_info* %4, %struct.elf_info** %11, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %12, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %5
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %6, align 8
  br label %110

24:                                               ; preds = %17
  %25 = load %struct.process*, %struct.process** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call %struct.module* @module_is_already_loaded(%struct.process* %25, i8* %26)
  store %struct.module* %27, %struct.module** %13, align 8
  %28 = icmp ne %struct.module* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = load %struct.module*, %struct.module** %13, align 8
  %31 = load %struct.elf_info*, %struct.elf_info** %11, align 8
  %32 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %31, i32 0, i32 0
  store %struct.module* %30, %struct.module** %32, align 8
  %33 = load %struct.elf_info*, %struct.elf_info** %11, align 8
  %34 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %33, i32 0, i32 0
  %35 = load %struct.module*, %struct.module** %34, align 8
  %36 = getelementptr inbounds %struct.module, %struct.module* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %36, align 8
  %38 = load i64, i64* @DFI_ELF, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %37, i64 %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.module*, %struct.module** %13, align 8
  %46 = getelementptr inbounds %struct.module, %struct.module* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %6, align 8
  br label %110

49:                                               ; preds = %24
  %50 = load i8*, i8** %8, align 8
  %51 = call i64 @strstrW(i8* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @elf_search_and_load_file.S_libstdcPPW, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* @FALSE, align 8
  store i64 %54, i64* %6, align 8
  br label %110

55:                                               ; preds = %49
  %56 = load %struct.process*, %struct.process** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.elf_info*, %struct.elf_info** %11, align 8
  %61 = call i64 @elf_load_file(%struct.process* %56, i8* %57, i64 %58, i64 %59, %struct.elf_info* %60)
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %108, label %64

64:                                               ; preds = %55
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @strchrW(i8* %65, i8 signext 47)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %108, label %68

68:                                               ; preds = %64
  %69 = load %struct.process*, %struct.process** %7, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.elf_info*, %struct.elf_info** %11, align 8
  %75 = call i64 @elf_load_file_from_path(%struct.process* %69, i8* %70, i64 %71, i64 %72, i32 %73, %struct.elf_info* %74)
  store i64 %75, i64* %12, align 8
  %76 = load i64, i64* %12, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %68
  %79 = load %struct.process*, %struct.process** %7, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.elf_info*, %struct.elf_info** %11, align 8
  %85 = call i64 @elf_load_file_from_path(%struct.process* %79, i8* %80, i64 %81, i64 %82, i32 %83, %struct.elf_info* %84)
  store i64 %85, i64* %12, align 8
  br label %86

86:                                               ; preds = %78, %68
  %87 = load i64, i64* %12, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %86
  %90 = load %struct.process*, %struct.process** %7, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i32, i32* @BINDIR, align 4
  %95 = load %struct.elf_info*, %struct.elf_info** %11, align 8
  %96 = call i64 @elf_load_file_from_path(%struct.process* %90, i8* %91, i64 %92, i64 %93, i32 %94, %struct.elf_info* %95)
  store i64 %96, i64* %12, align 8
  br label %97

97:                                               ; preds = %89, %86
  %98 = load i64, i64* %12, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = load %struct.process*, %struct.process** %7, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load %struct.elf_info*, %struct.elf_info** %11, align 8
  %106 = call i64 @elf_load_file_from_dll_path(%struct.process* %101, i8* %102, i64 %103, i64 %104, %struct.elf_info* %105)
  store i64 %106, i64* %12, align 8
  br label %107

107:                                              ; preds = %100, %97
  br label %108

108:                                              ; preds = %107, %64, %55
  %109 = load i64, i64* %12, align 8
  store i64 %109, i64* %6, align 8
  br label %110

110:                                              ; preds = %108, %53, %29, %22
  %111 = load i64, i64* %6, align 8
  ret i64 %111
}

declare dso_local %struct.module* @module_is_already_loaded(%struct.process*, i8*) #1

declare dso_local i64 @strstrW(i8*, i8*) #1

declare dso_local i64 @elf_load_file(%struct.process*, i8*, i64, i64, %struct.elf_info*) #1

declare dso_local i32 @strchrW(i8*, i8 signext) #1

declare dso_local i64 @elf_load_file_from_path(%struct.process*, i8*, i64, i64, i32, %struct.elf_info*) #1

declare dso_local i32 @getenv(i8*) #1

declare dso_local i64 @elf_load_file_from_dll_path(%struct.process*, i8*, i64, i64, %struct.elf_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
