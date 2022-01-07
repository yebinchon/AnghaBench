; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/reactos/extr_treelist.c_CallbackExtra.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/reactos/extr_treelist.c_CallbackExtra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i64*, i8*, i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@TVIF_HANDLE = common dso_local global i32 0, align 4
@TVIF_PARAM = common dso_local global i32 0, align 4
@TVIF_STATE = common dso_local global i32 0, align 4
@TVIF_SUBITEM = common dso_local global i32 0, align 4
@TVIS_BASEFLAGS = common dso_local global i32 0, align 4
@I_IMAGECALLBACK = common dso_local global i8* null, align 8
@TVIF_TEXT = common dso_local global i32 0, align 4
@GWL_ID = common dso_local global i32 0, align 4
@TVN_GETDISPINFO = common dso_local global i32 0, align 4
@WM_NOTIFY = common dso_local global i32 0, align 4
@TVIF_IMAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32, i32, i32*, i32*, i64**)* @CallbackExtra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CallbackExtra(%struct.TYPE_14__* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i64** %8) #0 {
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64**, align 8
  %19 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i64** %8, i64*** %18, align 8
  %20 = load i32, i32* @TVIF_HANDLE, align 4
  %21 = load i32, i32* @TVIF_PARAM, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @TVIF_STATE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @TVIF_SUBITEM, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %15, align 4
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %13, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 8
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TVIS_BASEFLAGS, align 4
  %49 = and i32 %47, %48
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  store i32 -1, i32* %55, align 8
  %56 = load i8*, i8** @I_IMAGECALLBACK, align 8
  %57 = ptrtoint i8* %56 to i32
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i8*, i8** @I_IMAGECALLBACK, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 7
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %14, align 4
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* @TVIF_TEXT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %9
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 6
  store i64* %81, i64** %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 5
  store i32 1, i32* %85, align 4
  br label %91

86:                                               ; preds = %9
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 6
  store i64* null, i64** %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 5
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %70
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @GWL_ID, align 4
  %101 = call i32 @GetWindowLong(i32 %99, i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @TVN_GETDISPINFO, align 4
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %108 = call i32 @UNLOCK(%struct.TYPE_14__* %107)
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @GetParent(i32 %111)
  %113 = load i32, i32* @WM_NOTIFY, align 4
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = ptrtoint %struct.TYPE_15__* %19 to i32
  %118 = call i32 @SendMessage(i32 %112, i32 %113, i32 %116, i32 %117)
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %120 = call i32 @LOCK(%struct.TYPE_14__* %119)
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* @TVIF_IMAGE, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %91
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %16, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %91
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @TVIF_TEXT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 6
  %138 = load i64*, i64** %137, align 8
  %139 = load i64**, i64*** %18, align 8
  store i64* %138, i64** %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 6
  %142 = load i64*, i64** %141, align 8
  %143 = call i32 @str_len(i64* %142)
  %144 = load i32*, i32** %17, align 8
  store i32 %143, i32* %144, align 4
  br label %145

145:                                              ; preds = %135, %130
  ret void
}

declare dso_local i32 @GetWindowLong(i32, i32) #1

declare dso_local i32 @UNLOCK(%struct.TYPE_14__*) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @GetParent(i32) #1

declare dso_local i32 @LOCK(%struct.TYPE_14__*) #1

declare dso_local i32 @str_len(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
