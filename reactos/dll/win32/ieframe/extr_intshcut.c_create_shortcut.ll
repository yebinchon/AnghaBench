; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_intshcut.c_create_shortcut.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_intshcut.c_create_shortcut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@uniformResourceLocatorAVtbl = common dso_local global i32 0, align 4
@uniformResourceLocatorWVtbl = common dso_local global i32 0, align 4
@persistFileVtbl = common dso_local global i32 0, align 4
@propertySetStorageVtbl = common dso_local global i32 0, align 4
@STGM_CREATE = common dso_local global i32 0, align 4
@STGM_READWRITE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@STGM_DELETEONRELEASE = common dso_local global i32 0, align 4
@STGFMT_STORAGE = common dso_local global i32 0, align 4
@IID_IPropertySetStorage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Failed to create the storage object needed for the shortcut.\0A\00", align 1
@FMTID_Intshcut = common dso_local global i32 0, align 4
@PROPSETFLAG_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Failed to create the property object needed for the shortcut.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* ()* @create_shortcut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @create_shortcut() #0 {
  %1 = alloca %struct.TYPE_13__*, align 8
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = call i32 (...) @GetProcessHeap()
  %6 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %7 = call %struct.TYPE_13__* @HeapAlloc(i32 %5, i32 %6, i32 40)
  store %struct.TYPE_13__* %7, %struct.TYPE_13__** %2, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = icmp ne %struct.TYPE_13__* %8, null
  br i1 %9, label %10, label %69

10:                                               ; preds = %0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 5
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i32* @uniformResourceLocatorAVtbl, i32** %13, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i32* @uniformResourceLocatorWVtbl, i32** %16, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i32* @persistFileVtbl, i32** %19, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  store i32* @propertySetStorageVtbl, i32** %22, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @STGM_CREATE, align 4
  %26 = load i32, i32* @STGM_READWRITE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @STGM_DELETEONRELEASE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @STGFMT_STORAGE, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = bitcast i32* %34 to i8**
  %36 = call i32 @StgCreateStorageEx(i32* null, i32 %31, i32 %32, i32 0, i32* null, i32* null, i32* @IID_IPropertySetStorage, i8** %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @FAILED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %10
  %41 = call i32 @TRACE(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = call i32 @heap_free(%struct.TYPE_13__* %42)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %1, align 8
  br label %71

44:                                               ; preds = %10
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PROPSETFLAG_DEFAULT, align 4
  %49 = load i32, i32* @STGM_CREATE, align 4
  %50 = load i32, i32* @STGM_READWRITE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @IPropertySetStorage_Create(i32 %47, i32* @FMTID_Intshcut, i32* null, i32 %48, i32 %53, i32** %4)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i64 @FAILED(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %44
  %59 = call i32 @TRACE(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @IPropertySetStorage_Release(i32 %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = call i32 @heap_free(%struct.TYPE_13__* %64)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %1, align 8
  br label %71

66:                                               ; preds = %44
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @IPropertyStorage_Release(i32* %67)
  br label %69

69:                                               ; preds = %66, %0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %1, align 8
  br label %71

71:                                               ; preds = %69, %58, %40
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  ret %struct.TYPE_13__* %72
}

declare dso_local %struct.TYPE_13__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @StgCreateStorageEx(i32*, i32, i32, i32, i32*, i32*, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @heap_free(%struct.TYPE_13__*) #1

declare dso_local i32 @IPropertySetStorage_Create(i32, i32*, i32*, i32, i32, i32**) #1

declare dso_local i32 @IPropertySetStorage_Release(i32) #1

declare dso_local i32 @IPropertyStorage_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
