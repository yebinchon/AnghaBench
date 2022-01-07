; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltFreeStackElem.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltFreeStackElem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_15__*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i64, i64 }

@XSLT_RVT_LOCAL = common dso_local global i64 0, align 8
@XSLT_RVT_FUNC_RESULT = common dso_local global i64 0, align 8
@xmlGenericErrorContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"xsltFreeStackElem: Unexpected RVT flag %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @xsltFreeStackElem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltFreeStackElem(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %6 = icmp eq %struct.TYPE_14__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %118

8:                                                ; preds = %1
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @xmlXPathFreeObject(i32* %16)
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = icmp ne %struct.TYPE_13__* %21, null
  br i1 %22, label %23, label %74

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %72, %23
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = icmp ne %struct.TYPE_15__* %27, null
  br i1 %28, label %29, label %73

29:                                               ; preds = %24
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %3, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.TYPE_15__*
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @XSLT_RVT_LOCAL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %29
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %49 = call i32 @xsltReleaseRVT(%struct.TYPE_13__* %47, %struct.TYPE_15__* %48)
  br label %72

50:                                               ; preds = %29
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @XSLT_RVT_FUNC_RESULT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = call i32 @xsltRegisterLocalRVT(%struct.TYPE_13__* %59, %struct.TYPE_15__* %60)
  %62 = load i64, i64* @XSLT_RVT_FUNC_RESULT, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %71

65:                                               ; preds = %50
  %66 = load i32, i32* @xmlGenericErrorContext, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @xmlGenericError(i32 %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %65, %56
  br label %72

72:                                               ; preds = %71, %44
  br label %24

73:                                               ; preds = %24
  br label %74

74:                                               ; preds = %73, %18
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %76, align 8
  %78 = icmp ne %struct.TYPE_13__* %77, null
  br i1 %78, label %79, label %115

79:                                               ; preds = %74
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %86, 50
  br i1 %87, label %88, label %115

88:                                               ; preds = %79
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  store %struct.TYPE_13__* %91, %struct.TYPE_13__** %4, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %93 = call i32 @memset(%struct.TYPE_14__* %92, i32 0, i32 4)
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  store %struct.TYPE_13__* %94, %struct.TYPE_13__** %96, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %103, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  store %struct.TYPE_14__* %104, %struct.TYPE_14__** %108, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  br label %118

115:                                              ; preds = %79, %74
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %117 = call i32 @xmlFree(%struct.TYPE_14__* %116)
  br label %118

118:                                              ; preds = %115, %88, %7
  ret void
}

declare dso_local i32 @xmlXPathFreeObject(i32*) #1

declare dso_local i32 @xsltReleaseRVT(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @xsltRegisterLocalRVT(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @xmlGenericError(i32, i8*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @xmlFree(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
