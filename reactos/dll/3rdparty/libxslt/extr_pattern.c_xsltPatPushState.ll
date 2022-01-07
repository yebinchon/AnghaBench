; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltPatPushState.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_pattern.c_xsltPatPushState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }

@xsltGenericErrorContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"xsltPatPushState: memory re-allocation failure.\0A\00", align 1
@XSLT_STATE_STOPPED = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i32, %struct.TYPE_14__*)* @xsltPatPushState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsltPatPushState(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32 %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = icmp eq %struct.TYPE_13__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15, %4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  store i32 4, i32* %22, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = call %struct.TYPE_13__* @xmlMalloc(i32 64)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %27, align 8
  br label %66

28:                                               ; preds = %15
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %31, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %28
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 2, %42
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 16
  %46 = trunc i64 %45 to i32
  %47 = call i64 @xmlRealloc(%struct.TYPE_13__* %39, i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %10, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %50 = icmp eq %struct.TYPE_13__* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %36
  %52 = load i32, i32* @xsltGenericErrorContext, align 4
  %53 = call i32 @xsltGenericError(i32 %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @XSLT_STATE_STOPPED, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 -1, i32* %5, align 4
  br label %88

57:                                               ; preds = %36
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %63, 2
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %57, %28
  br label %66

66:                                               ; preds = %65, %20
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store i32 %67, i32* %76, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  store %struct.TYPE_14__* %77, %struct.TYPE_14__** %87, align 8
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %66, %51
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_13__* @xmlMalloc(i32) #1

declare dso_local i64 @xmlRealloc(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @xsltGenericError(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
