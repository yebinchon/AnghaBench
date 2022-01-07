; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_CollectSheetInfoA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_propsheet.c_PROPSHEET_CollectSheetInfoA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32, i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }

@PSH_USECALLBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [118 x i8] c"\0A** PROPSHEETHEADER **\0AdwSize\09\09%d\0AdwFlags\09\09%08x\0AhwndParent\09%p\0AhInstance\09%p\0ApszCaption\09'%s'\0AnPages\09\09%d\0ApfnCallback\09%p\0A\00", align 1
@INTRNL_ANY_WIZARD = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@PSH_USEPSTARTPAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"PSH_USEPSTARTPAGE is on\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*)* @PROPSHEET_CollectSheetInfoA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PROPSHEET_CollectSheetInfoA(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @min(i32 %11, i32 4)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PSH_USECALLBACK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %2
  %26 = phi i1 [ false, %2 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @memcpy(%struct.TYPE_12__* %31, %struct.TYPE_11__* %32, i32 %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @debugstr_a(i32 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %43, i32 %46, i32 %50, i32 %53, i64 %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @INTRNL_ANY_WIZARD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %25
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %97

68:                                               ; preds = %25
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @IS_INTRESOURCE(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %96, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @CP_ACP, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @MultiByteToWideChar(i32 %75, i32 0, i32 %78, i32 -1, i32* null, i32 0)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = call i32* @Alloc(i32 %83)
  store i32* %84, i32** %8, align 8
  %85 = load i32, i32* @CP_ACP, align 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @MultiByteToWideChar(i32 %85, i32 0, i32 %88, i32 -1, i32* %89, i32 %90)
  %92 = load i32*, i32** %8, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  store i32* %92, i32** %95, align 8
  br label %96

96:                                               ; preds = %74, %68
  br label %97

97:                                               ; preds = %96, %64
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @PSH_USEPSTARTPAGE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  br label %118

111:                                              ; preds = %97
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %111, %107
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @PROPSHEET_CollectSheetInfoCommon(%struct.TYPE_10__* %119, i32 %120)
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_a(i32) #1

declare dso_local i32 @IS_INTRESOURCE(i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32* @Alloc(i32) #1

declare dso_local i32 @PROPSHEET_CollectSheetInfoCommon(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
