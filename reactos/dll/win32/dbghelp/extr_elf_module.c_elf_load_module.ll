; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_load_module.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_load_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.process = type { i64 }
%struct.elf_load = type { %struct.TYPE_2__, i8*, i32*, %struct.process* }
%struct.TYPE_2__ = type { %struct.module*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"(%p %s %08lx)\0A\00", align 1
@ELF_INFO_MODULE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@elf_load_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.module* @elf_load_module(%struct.process* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.process*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.elf_load, align 8
  store %struct.process* %0, %struct.process** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.process*, %struct.process** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @debugstr_w(i32* %10)
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.process* %9, i32 %11, i64 %12)
  %14 = load i32, i32* @ELF_INFO_MODULE, align 4
  %15 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %8, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load i8*, i8** @FALSE, align 8
  %18 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %8, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load %struct.process*, %struct.process** %5, align 8
  %20 = getelementptr inbounds %struct.process, %struct.process* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %3
  %24 = load %struct.process*, %struct.process** %5, align 8
  %25 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %8, i32 0, i32 3
  store %struct.process* %24, %struct.process** %25, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i32* @strrchrW(i32* %26, i8 signext 47)
  %28 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %8, i32 0, i32 2
  store i32* %27, i32** %28, align 8
  %29 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %8, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %29, align 8
  %32 = icmp ne i32* %30, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %8, i32 0, i32 2
  store i32* %34, i32** %35, align 8
  br label %36

36:                                               ; preds = %33, %23
  %37 = load i8*, i8** @FALSE, align 8
  %38 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %8, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load %struct.process*, %struct.process** %5, align 8
  %40 = load i32, i32* @elf_load_cb, align 4
  %41 = call i32 @elf_enum_modules_internal(%struct.process* %39, i32* null, i32 %40, %struct.elf_load* %8)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  store %struct.module* null, %struct.module** %4, align 8
  br label %72

44:                                               ; preds = %36
  br label %59

45:                                               ; preds = %3
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %8, i32 0, i32 2
  store i32* %49, i32** %50, align 8
  %51 = load %struct.process*, %struct.process** %5, align 8
  %52 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %8, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %8, i32 0, i32 0
  %56 = call i8* @elf_search_and_load_file(%struct.process* %51, i32* %53, i64 %54, i32 0, %struct.TYPE_2__* %55)
  %57 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %8, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  br label %58

58:                                               ; preds = %48, %45
  br label %59

59:                                               ; preds = %58, %44
  %60 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %8, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  store %struct.module* null, %struct.module** %4, align 8
  br label %72

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %8, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.module*, %struct.module** %66, align 8
  %68 = call i32 @assert(%struct.module* %67)
  %69 = getelementptr inbounds %struct.elf_load, %struct.elf_load* %8, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.module*, %struct.module** %70, align 8
  store %struct.module* %71, %struct.module** %4, align 8
  br label %72

72:                                               ; preds = %64, %63, %43
  %73 = load %struct.module*, %struct.module** %4, align 8
  ret %struct.module* %73
}

declare dso_local i32 @TRACE(i8*, %struct.process*, i32, i64) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32* @strrchrW(i32*, i8 signext) #1

declare dso_local i32 @elf_enum_modules_internal(%struct.process*, i32*, i32, %struct.elf_load*) #1

declare dso_local i8* @elf_search_and_load_file(%struct.process*, i32*, i64, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @assert(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
