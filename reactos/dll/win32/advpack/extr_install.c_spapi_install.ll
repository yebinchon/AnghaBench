; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_spapi_install.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advpack/extr_install.c_spapi_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@SPINST_FILES = common dso_local global i32 0, align 4
@SP_COPY_NEWER = common dso_local global i32 0, align 4
@SetupDefaultQueueCallbackW = common dso_local global i32* null, align 8
@SPINST_INIFILES = common dso_local global i32 0, align 4
@SPINST_REGISTRY = common dso_local global i32 0, align 4
@SPINST_REGSVR = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32* null, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @spapi_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spapi_install(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %8 = call i32* @SetupInitDefaultQueueCallbackEx(i32* null, i32 %7, i32 0, i32 0, i32* null)
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = call i32 (...) @GetLastError()
  %13 = call i32 @ADV_HRESULT(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %60

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SPINST_FILES, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @SP_COPY_NEWER, align 4
  %26 = load i32*, i32** @SetupDefaultQueueCallbackW, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @SetupInstallFromInfSectionW(i32* null, i32 %17, i32 %20, i32 %21, i32* null, i32* %24, i32 %25, i32* %26, i32* %27, i32* null, i32* null)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %14
  %32 = call i32 (...) @GetLastError()
  %33 = call i32 @ADV_HRESULT(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @SetupTermDefaultQueueCallback(i32* %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %60

37:                                               ; preds = %14
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @SetupTermDefaultQueueCallback(i32* %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SPINST_INIFILES, align 4
  %47 = load i32, i32* @SPINST_REGISTRY, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SPINST_REGSVR, align 4
  %50 = or i32 %48, %49
  %51 = load i32*, i32** @HKEY_LOCAL_MACHINE, align 8
  %52 = call i32 @SetupInstallFromInfSectionW(i32* null, i32 %42, i32 %45, i32 %50, i32* %51, i32* null, i32 0, i32* null, i32* null, i32* null, i32* null)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %37
  %56 = call i32 (...) @GetLastError()
  %57 = call i32 @ADV_HRESULT(i32 %56)
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %37
  %59 = load i32, i32* @S_OK, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %55, %31, %11
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32* @SetupInitDefaultQueueCallbackEx(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @ADV_HRESULT(i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SetupInstallFromInfSectionW(i32*, i32, i32, i32, i32*, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SetupTermDefaultQueueCallback(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
