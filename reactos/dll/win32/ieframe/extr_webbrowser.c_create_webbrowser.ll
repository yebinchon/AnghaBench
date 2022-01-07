; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_webbrowser.c_create_webbrowser.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_webbrowser.c_create_webbrowser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__, i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_11__ = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"(%p %s %p) version=%d\0A\00", align 1
@WebBrowser2Vtbl = common dso_local global i32 0, align 4
@ServiceProviderVtbl = common dso_local global i32 0, align 4
@DocHostContainerVtbl = common dso_local global i32 0, align 4
@VARIANT_TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i8**)* @create_webbrowser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_webbrowser(i32 %0, i32* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @debugstr_guid(i32 %12)
  %14 = load i8**, i8*** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %11, i32 %13, i8** %14, i32 %15)
  %17 = call %struct.TYPE_12__* @heap_alloc_zero(i32 72)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %9, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32* @WebBrowser2Vtbl, i32** %20, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 10
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  store i32* @ServiceProviderVtbl, i32** %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  %33 = call i32 @DocHost_Init(i32* %30, %struct.TYPE_13__* %32, i32* @DocHostContainerVtbl)
  %34 = load i8*, i8** @VARIANT_TRUE, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 9
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @VARIANT_TRUE, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 8
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @VARIANT_TRUE, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 7
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @VARIANT_TRUE, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 6
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @VARIANT_TRUE, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %50 = call i32 @WebBrowser_OleObject_Init(%struct.TYPE_12__* %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = call i32 @WebBrowser_ViewObject_Init(%struct.TYPE_12__* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = call i32 @WebBrowser_Persist_Init(%struct.TYPE_12__* %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = call i32 @WebBrowser_ClassInfo_Init(%struct.TYPE_12__* %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = bitcast %struct.TYPE_13__* %60 to i32*
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  %64 = call i32 @HlinkFrame_Init(i32* %58, i32* %61, i32* %63)
  %65 = call i32 (...) @lock_module()
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load i32, i32* %7, align 4
  %69 = load i8**, i8*** %8, align 8
  %70 = call i32 @IWebBrowser2_QueryInterface(%struct.TYPE_13__* %67, i32 %68, i8** %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  %73 = call i32 @IWebBrowser2_Release(%struct.TYPE_13__* %72)
  %74 = load i32, i32* %10, align 4
  ret i32 %74
}

declare dso_local i32 @TRACE(i8*, i32*, i32, i8**, i32) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local %struct.TYPE_12__* @heap_alloc_zero(i32) #1

declare dso_local i32 @DocHost_Init(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @WebBrowser_OleObject_Init(%struct.TYPE_12__*) #1

declare dso_local i32 @WebBrowser_ViewObject_Init(%struct.TYPE_12__*) #1

declare dso_local i32 @WebBrowser_Persist_Init(%struct.TYPE_12__*) #1

declare dso_local i32 @WebBrowser_ClassInfo_Init(%struct.TYPE_12__*) #1

declare dso_local i32 @HlinkFrame_Init(i32*, i32*, i32*) #1

declare dso_local i32 @lock_module(...) #1

declare dso_local i32 @IWebBrowser2_QueryInterface(%struct.TYPE_13__*, i32, i8**) #1

declare dso_local i32 @IWebBrowser2_Release(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
