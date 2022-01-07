; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_query.c_GetServiceDescription.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_query.c_GetServiceDescription.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@SC_MANAGER_ENUMERATE_SERVICE = common dso_local global i32 0, align 4
@SERVICE_QUERY_CONFIG = common dso_local global i32 0, align 4
@SERVICE_CONFIG_DESCRIPTION = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@ProcessHeap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetServiceDescription(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @SC_MANAGER_ENUMERATE_SERVICE, align 4
  %11 = call i32* @OpenSCManagerW(i32* null, i32* null, i32 %10)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (...) @GetError()
  store i32* null, i32** %2, align 8
  br label %101

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @SERVICE_QUERY_CONFIG, align 4
  %20 = call i32* @OpenServiceW(i32* %17, i32* %18, i32 %19)
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %79

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @SERVICE_CONFIG_DESCRIPTION, align 4
  %26 = call i64 @QueryServiceConfig2W(i32* %24, i32 %25, i32* null, i32 0, i32* %8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %78, label %28

28:                                               ; preds = %23
  %29 = call i64 (...) @GetLastError()
  %30 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %77

32:                                               ; preds = %28
  %33 = load i32, i32* @ProcessHeap, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32* @HeapAlloc(i32 %33, i32 0, i32 %34)
  %36 = bitcast i32* %35 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %6, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = icmp eq %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %80

40:                                               ; preds = %32
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @SERVICE_CONFIG_DESCRIPTION, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = bitcast %struct.TYPE_4__* %43 to i32*
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @QueryServiceConfig2W(i32* %41, i32 %42, i32* %44, i32 %45, i32* %8)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %40
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %48
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @wcslen(i64 %56)
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @ProcessHeap, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32* @HeapAlloc(i32 %59, i32 0, i32 %63)
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %53
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @StringCchCopyW(i32* %68, i32 %69, i64 %72)
  br label %74

74:                                               ; preds = %67, %53
  br label %75

75:                                               ; preds = %74, %48
  br label %76

76:                                               ; preds = %75, %40
  br label %77

77:                                               ; preds = %76, %28
  br label %78

78:                                               ; preds = %77, %23
  br label %79

79:                                               ; preds = %78, %16
  br label %80

80:                                               ; preds = %79, %39
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %82 = icmp ne %struct.TYPE_4__* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* @ProcessHeap, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %86 = call i32 @HeapFree(i32 %84, i32 0, %struct.TYPE_4__* %85)
  br label %87

87:                                               ; preds = %83, %80
  %88 = load i32*, i32** %4, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @CloseServiceHandle(i32* %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32*, i32** %5, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @CloseServiceHandle(i32* %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i32*, i32** %7, align 8
  store i32* %100, i32** %2, align 8
  br label %101

101:                                              ; preds = %99, %14
  %102 = load i32*, i32** %2, align 8
  ret i32* %102
}

declare dso_local i32* @OpenSCManagerW(i32*, i32*, i32) #1

declare dso_local i32 @GetError(...) #1

declare dso_local i32* @OpenServiceW(i32*, i32*, i32) #1

declare dso_local i64 @QueryServiceConfig2W(i32*, i32, i32*, i32, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @wcslen(i64) #1

declare dso_local i32 @StringCchCopyW(i32*, i32, i64) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @CloseServiceHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
