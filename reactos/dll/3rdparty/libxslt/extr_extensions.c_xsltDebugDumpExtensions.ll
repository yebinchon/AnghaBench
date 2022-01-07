; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltDebugDumpExtensions.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_extensions.c_xsltDebugDumpExtensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [55 x i8] c"Registered XSLT Extensions\0A--------------------------\0A\00", align 1
@xsltFunctionsHash = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"No registered extension functions\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Registered Extension Functions:\0A\00", align 1
@xsltExtMutex = common dso_local global i32 0, align 4
@xsltDebugDumpExtensionsCallback = common dso_local global i32 0, align 4
@xsltElementsHash = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"\0ANo registered extension elements\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\0ARegistered Extension Elements:\0A\00", align 1
@xsltExtensionsHash = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"\0ANo registered extension modules\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\0ARegistered Extension Modules:\0A\00", align 1
@xsltDebugDumpExtModulesCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltDebugDumpExtensions(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i32*, i32** @stdout, align 8
  store i32* %6, i32** %2, align 8
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @fprintf(i32* %8, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @xsltFunctionsHash, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @fprintf(i32* %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %26

15:                                               ; preds = %7
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @fprintf(i32* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* @xsltExtMutex, align 4
  %19 = call i32 @xmlMutexLock(i32 %18)
  %20 = load i32, i32* @xsltFunctionsHash, align 4
  %21 = load i32, i32* @xsltDebugDumpExtensionsCallback, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @xmlHashScanFull(i32 %20, i32 %21, i32* %22)
  %24 = load i32, i32* @xsltExtMutex, align 4
  %25 = call i32 @xmlMutexUnlock(i32 %24)
  br label %26

26:                                               ; preds = %15, %12
  %27 = load i32, i32* @xsltElementsHash, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @fprintf(i32* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %43

32:                                               ; preds = %26
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @fprintf(i32* %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %35 = load i32, i32* @xsltExtMutex, align 4
  %36 = call i32 @xmlMutexLock(i32 %35)
  %37 = load i32, i32* @xsltElementsHash, align 4
  %38 = load i32, i32* @xsltDebugDumpExtensionsCallback, align 4
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @xmlHashScanFull(i32 %37, i32 %38, i32* %39)
  %41 = load i32, i32* @xsltExtMutex, align 4
  %42 = call i32 @xmlMutexUnlock(i32 %41)
  br label %43

43:                                               ; preds = %32, %29
  %44 = load i32, i32* @xsltExtensionsHash, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @fprintf(i32* %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %60

49:                                               ; preds = %43
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @fprintf(i32* %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %52 = load i32, i32* @xsltExtMutex, align 4
  %53 = call i32 @xmlMutexLock(i32 %52)
  %54 = load i32, i32* @xsltExtensionsHash, align 4
  %55 = load i32, i32* @xsltDebugDumpExtModulesCallback, align 4
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @xmlHashScanFull(i32 %54, i32 %55, i32* %56)
  %58 = load i32, i32* @xsltExtMutex, align 4
  %59 = call i32 @xmlMutexUnlock(i32 %58)
  br label %60

60:                                               ; preds = %49, %46
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @xmlMutexLock(i32) #1

declare dso_local i32 @xmlHashScanFull(i32, i32, i32*) #1

declare dso_local i32 @xmlMutexUnlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
