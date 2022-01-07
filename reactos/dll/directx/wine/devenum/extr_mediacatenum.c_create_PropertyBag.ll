; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/devenum/extr_mediacatenum.c_create_PropertyBag.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/devenum/extr_mediacatenum.c_create_PropertyBag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_9__, i64, i32 }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@IPropertyBag_Vtbl = common dso_local global i32 0, align 4
@DEVICE_DMO = common dso_local global i64 0, align 8
@DEVICE_FILTER = common dso_local global i64 0, align 8
@clsidW = common dso_local global i32 0, align 4
@backslashW = common dso_local global i32 0, align 4
@CHARS_IN_GUID = common dso_local global i32 0, align 4
@instanceW = common dso_local global i32 0, align 4
@DEVICE_CODEC = common dso_local global i64 0, align 8
@wszActiveMovieKey = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__**)* @create_PropertyBag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_PropertyBag(%struct.TYPE_8__* %0, %struct.TYPE_9__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %5, align 8
  %7 = call %struct.TYPE_7__* @CoTaskMemAlloc(i32 40)
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %11, i32* %3, align 4
  br label %136

12:                                               ; preds = %2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i32* @IPropertyBag_Vtbl, i32** %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DEVICE_DMO, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %12
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  br label %130

34:                                               ; preds = %12
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DEVICE_FILTER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %86

40:                                               ; preds = %34
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @clsidW, align 4
  %45 = call i32 @lstrcpyW(i64 %43, i32 %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @backslashW, align 4
  %50 = call i32 @lstrcatW(i64 %48, i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %40
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @lstrlenW(i64 %63)
  %65 = add nsw i64 %60, %64
  %66 = load i32, i32* @CHARS_IN_GUID, align 4
  %67 = call i32 @StringFromGUID2(i32* %57, i64 %65, i32 %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @instanceW, align 4
  %72 = call i32 @lstrcatW(i64 %70, i32 %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @backslashW, align 4
  %77 = call i32 @lstrcatW(i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %55, %40
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @lstrcatW(i64 %81, i32 %84)
  br label %129

86:                                               ; preds = %34
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DEVICE_CODEC, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %128

92:                                               ; preds = %86
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @wszActiveMovieKey, align 4
  %97 = call i32 @lstrcpyW(i64 %95, i32 %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %92
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @lstrlenW(i64 %110)
  %112 = add nsw i64 %107, %111
  %113 = load i32, i32* @CHARS_IN_GUID, align 4
  %114 = call i32 @StringFromGUID2(i32* %104, i64 %112, i32 %113)
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @backslashW, align 4
  %119 = call i32 @lstrcatW(i64 %117, i32 %118)
  br label %120

120:                                              ; preds = %102, %92
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @lstrcatW(i64 %123, i32 %126)
  br label %128

128:                                              ; preds = %120, %86
  br label %129

129:                                              ; preds = %128, %78
  br label %130

130:                                              ; preds = %129, %28
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__* %132, %struct.TYPE_9__** %133, align 8
  %134 = call i32 (...) @DEVENUM_LockModule()
  %135 = load i32, i32* @S_OK, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %130, %10
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.TYPE_7__* @CoTaskMemAlloc(i32) #1

declare dso_local i32 @lstrcpyW(i64, i32) #1

declare dso_local i32 @lstrcatW(i64, i32) #1

declare dso_local i32 @StringFromGUID2(i32*, i64, i32) #1

declare dso_local i64 @lstrlenW(i64) #1

declare dso_local i32 @DEVENUM_LockModule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
