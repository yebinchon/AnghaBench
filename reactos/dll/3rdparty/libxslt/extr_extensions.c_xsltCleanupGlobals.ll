; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltCleanupGlobals.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltCleanupGlobals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xsltExtMutex = common dso_local global i32* null, align 8
@xsltModuleHash = common dso_local global i32* null, align 8
@xsltHashScannerModuleFree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltCleanupGlobals() #0 {
  %1 = call i32 (...) @xsltUnregisterAllExtModules()
  %2 = call i32 (...) @xsltUnregisterAllExtModuleFunction()
  %3 = call i32 (...) @xsltUnregisterAllExtModuleElement()
  %4 = call i32 (...) @xsltUnregisterAllExtModuleTopLevel()
  %5 = load i32*, i32** @xsltExtMutex, align 8
  %6 = call i32 @xmlMutexLock(i32* %5)
  %7 = load i32*, i32** @xsltModuleHash, align 8
  %8 = icmp ne i32* null, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  %10 = load i32*, i32** @xsltModuleHash, align 8
  %11 = load i32, i32* @xsltHashScannerModuleFree, align 4
  %12 = call i32 @xmlHashScan(i32* %10, i32 %11, i32 0)
  %13 = load i32*, i32** @xsltModuleHash, align 8
  %14 = call i32 @xmlHashFree(i32* %13, i32* null)
  store i32* null, i32** @xsltModuleHash, align 8
  br label %15

15:                                               ; preds = %9, %0
  %16 = load i32*, i32** @xsltExtMutex, align 8
  %17 = call i32 @xmlMutexUnlock(i32* %16)
  %18 = load i32*, i32** @xsltExtMutex, align 8
  %19 = call i32 @xmlFreeMutex(i32* %18)
  store i32* null, i32** @xsltExtMutex, align 8
  %20 = call i32 (...) @xsltFreeLocales()
  %21 = call i32 (...) @xsltUninit()
  ret void
}

declare dso_local i32 @xsltUnregisterAllExtModules(...) #1

declare dso_local i32 @xsltUnregisterAllExtModuleFunction(...) #1

declare dso_local i32 @xsltUnregisterAllExtModuleElement(...) #1

declare dso_local i32 @xsltUnregisterAllExtModuleTopLevel(...) #1

declare dso_local i32 @xmlMutexLock(i32*) #1

declare dso_local i32 @xmlHashScan(i32*, i32, i32) #1

declare dso_local i32 @xmlHashFree(i32*, i32*) #1

declare dso_local i32 @xmlMutexUnlock(i32*) #1

declare dso_local i32 @xmlFreeMutex(i32*) #1

declare dso_local i32 @xsltFreeLocales(...) #1

declare dso_local i32 @xsltUninit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
