; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/appwiz/extr_createlink.c_CreateShortcut.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/appwiz/extr_createlink.c_CreateShortcut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 (%struct.TYPE_16__*, i32, i32)*, i64 (%struct.TYPE_16__*, i32, i32)*, i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32*)* }

@MAX_PATH = common dso_local global i32 0, align 4
@CLSID_ShellLink = common dso_local global i32 0, align 4
@CLSCTX_ALL = common dso_local global i32 0, align 4
@IID_IShellLinkW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IID_IPersistFile = common dso_local global i32 0, align 4
@STGM_READ = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateShortcut(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @PathFindExtensionW(i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @IsExtensionAShortcut(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %77

23:                                               ; preds = %1
  %24 = load i32, i32* @CLSCTX_ALL, align 4
  %25 = bitcast %struct.TYPE_16__** %5 to i8**
  %26 = call i64 @CoCreateInstance(i32* @CLSID_ShellLink, i32* null, i32 %24, i32* @IID_IShellLinkW, i8** %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @FAILED(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %150

32:                                               ; preds = %23
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = bitcast %struct.TYPE_16__** %6 to i8**
  %35 = call i64 @IUnknown_QueryInterface(%struct.TYPE_16__* %33, i32* @IID_IPersistFile, i8** %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @FAILED(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = call i32 @IUnknown_Release(%struct.TYPE_16__* %40)
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %150

43:                                               ; preds = %32
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64 (%struct.TYPE_16__*, i32, i32)*, i64 (%struct.TYPE_16__*, i32, i32)** %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @STGM_READ, align 4
  %55 = call i64 %48(%struct.TYPE_16__* %49, i32 %53, i32 %54)
  store i64 %55, i64* %7, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = call i32 @IUnknown_Release(%struct.TYPE_16__* %56)
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @FAILED(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %43
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %63 = call i32 @IUnknown_Release(%struct.TYPE_16__* %62)
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %150

65:                                               ; preds = %43
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = call i32 @_countof(i32* %15)
  %68 = call i64 @IShellLinkW_GetPath(%struct.TYPE_16__* %66, i32* %15, i32 %67, i32* null, i32 0)
  store i64 %68, i64* %7, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %70 = call i32 @IUnknown_Release(%struct.TYPE_16__* %69)
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @FAILED(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %150

76:                                               ; preds = %65
  br label %83

77:                                               ; preds = %1
  %78 = call i32 @_countof(i32* %15)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @StringCchCopyW(i32* %15, i32 %78, i64 %81)
  br label %83

83:                                               ; preds = %77, %76
  %84 = load i32, i32* @CLSCTX_ALL, align 4
  %85 = bitcast %struct.TYPE_16__** %4 to i8**
  %86 = call i64 @CoCreateInstance(i32* @CLSID_ShellLink, i32* null, i32 %84, i32* @IID_IShellLinkW, i8** %85)
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* @S_OK, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %150

92:                                               ; preds = %83
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 4
  %97 = load i32 (%struct.TYPE_16__*, i32*)*, i32 (%struct.TYPE_16__*, i32*)** %96, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = call i32 %97(%struct.TYPE_16__* %98, i32* %15)
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 3
  %104 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %103, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 %104(%struct.TYPE_16__* %105, i32 %108)
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  %114 = load i32 (%struct.TYPE_16__*, i32)*, i32 (%struct.TYPE_16__*, i32)** %113, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 %114(%struct.TYPE_16__* %115, i32 %118)
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %121 = bitcast %struct.TYPE_16__** %6 to i8**
  %122 = call i64 @IUnknown_QueryInterface(%struct.TYPE_16__* %120, i32* @IID_IPersistFile, i8** %121)
  store i64 %122, i64* %7, align 8
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* @S_OK, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %92
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %128 = call i32 @IUnknown_Release(%struct.TYPE_16__* %127)
  %129 = load i32, i32* @FALSE, align 4
  store i32 %129, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %150

130:                                              ; preds = %92
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i64 (%struct.TYPE_16__*, i32, i32)*, i64 (%struct.TYPE_16__*, i32, i32)** %134, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @TRUE, align 4
  %141 = call i64 %135(%struct.TYPE_16__* %136, i32 %139, i32 %140)
  store i64 %141, i64* %7, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %143 = call i32 @IUnknown_Release(%struct.TYPE_16__* %142)
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %145 = call i32 @IUnknown_Release(%struct.TYPE_16__* %144)
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* @S_OK, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  store i32 %149, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %150

150:                                              ; preds = %130, %126, %90, %74, %61, %39, %30
  %151 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PathFindExtensionW(i64) #2

declare dso_local i64 @IsExtensionAShortcut(i32) #2

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #2

declare dso_local i64 @FAILED(i64) #2

declare dso_local i64 @IUnknown_QueryInterface(%struct.TYPE_16__*, i32*, i8**) #2

declare dso_local i32 @IUnknown_Release(%struct.TYPE_16__*) #2

declare dso_local i64 @IShellLinkW_GetPath(%struct.TYPE_16__*, i32*, i32, i32*, i32) #2

declare dso_local i32 @_countof(i32*) #2

declare dso_local i32 @StringCchCopyW(i32*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
