; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_module.c_module_is_container_loaded.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_module.c_module_is_container_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { %struct.module* }
%struct.module = type { i64, %struct.TYPE_2__, %struct.module* }
%struct.TYPE_2__ = type { i64, i64, i32* }

@FALSE = common dso_local global i32 0, align 4
@DMT_ELF = common dso_local global i64 0, align 8
@DMT_MACHO = common dso_local global i64 0, align 8
@S_DotSoW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Couldn't find container for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.process*, i32*, i64)* @module_is_container_loaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @module_is_container_loaded(%struct.process* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.process*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.module*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.process* %0, %struct.process** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %4, align 4
  br label %89

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @get_filename(i32* %17, i32* null)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call i64 @strlenW(i64 %19)
  store i64 %20, i64* %8, align 8
  %21 = load %struct.process*, %struct.process** %5, align 8
  %22 = getelementptr inbounds %struct.process, %struct.process* %21, i32 0, i32 0
  %23 = load %struct.module*, %struct.module** %22, align 8
  store %struct.module* %23, %struct.module** %9, align 8
  br label %24

24:                                               ; preds = %80, %16
  %25 = load %struct.module*, %struct.module** %9, align 8
  %26 = icmp ne %struct.module* %25, null
  br i1 %26, label %27, label %84

27:                                               ; preds = %24
  %28 = load %struct.module*, %struct.module** %9, align 8
  %29 = getelementptr inbounds %struct.module, %struct.module* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DMT_ELF, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.module*, %struct.module** %9, align 8
  %35 = getelementptr inbounds %struct.module, %struct.module* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DMT_MACHO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %33, %27
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.module*, %struct.module** %9, align 8
  %42 = getelementptr inbounds %struct.module, %struct.module* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %40, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %39
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.module*, %struct.module** %9, align 8
  %49 = getelementptr inbounds %struct.module, %struct.module* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.module*, %struct.module** %9, align 8
  %53 = getelementptr inbounds %struct.module, %struct.module* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %51, %55
  %57 = icmp slt i64 %47, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %46
  %59 = load %struct.module*, %struct.module** %9, align 8
  %60 = getelementptr inbounds %struct.module, %struct.module* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = call i64 @get_filename(i32* %62, i32* null)
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @strncmpiW(i64 %64, i64 %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %58
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %70, %71
  %73 = load i32, i32* @S_DotSoW, align 4
  %74 = call i32 @memcmp(i64 %72, i32 %73, i32 12)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %4, align 4
  br label %89

78:                                               ; preds = %69, %58
  br label %79

79:                                               ; preds = %78, %46, %39, %33
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.module*, %struct.module** %9, align 8
  %82 = getelementptr inbounds %struct.module, %struct.module* %81, i32 0, i32 2
  %83 = load %struct.module*, %struct.module** %82, align 8
  store %struct.module* %83, %struct.module** %9, align 8
  br label %24

84:                                               ; preds = %24
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @debugstr_w(i32* %85)
  %87 = call i32 @WARN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @FALSE, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %84, %76, %14
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i64 @get_filename(i32*, i32*) #1

declare dso_local i64 @strlenW(i64) #1

declare dso_local i32 @strncmpiW(i64, i64, i64) #1

declare dso_local i32 @memcmp(i64, i32, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
