; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_HlinkFrame_QI.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_navigate.c_HlinkFrame_QI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@IID_IHlinkFrame = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"(%p)->(IID_IHlinkFrame %p)\0A\00", align 1
@IID_ITargetFrame = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"(%p)->(IID_ITargetFrame %p)\0A\00", align 1
@IID_ITargetFrame2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"(%p)->(IID_ITargetFrame2 %p)\0A\00", align 1
@IID_ITargetFramePriv = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"(%p)->(IID_ITargetFramePriv %p)\0A\00", align 1
@IID_ITargetFramePriv2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"(%p)->(IID_ITargetFramePriv2 %p)\0A\00", align 1
@IID_IWebBrowserPriv2IE9 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"(%p)->(IID_IWebBrowserPriv2IE9 %p)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HlinkFrame_QI(%struct.TYPE_4__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = call i64 @IsEqualGUID(i32* @IID_IHlinkFrame, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %12, i8** %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  %17 = bitcast i32* %16 to i8*
  %18 = load i8**, i8*** %7, align 8
  store i8* %17, i8** %18, align 8
  br label %86

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @IsEqualGUID(i32* @IID_ITargetFrame, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %24, i8** %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = bitcast i32* %28 to i8*
  %30 = load i8**, i8*** %7, align 8
  store i8* %29, i8** %30, align 8
  br label %85

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @IsEqualGUID(i32* @IID_ITargetFrame2, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = load i8**, i8*** %7, align 8
  %38 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_4__* %36, i8** %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = bitcast i32* %40 to i8*
  %42 = load i8**, i8*** %7, align 8
  store i8* %41, i8** %42, align 8
  br label %84

43:                                               ; preds = %31
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @IsEqualGUID(i32* @IID_ITargetFramePriv, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = load i8**, i8*** %7, align 8
  %50 = call i32 @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_4__* %48, i8** %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = bitcast i32* %52 to i8*
  %54 = load i8**, i8*** %7, align 8
  store i8* %53, i8** %54, align 8
  br label %83

55:                                               ; preds = %43
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @IsEqualGUID(i32* @IID_ITargetFramePriv2, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = load i8**, i8*** %7, align 8
  %62 = call i32 @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_4__* %60, i8** %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = bitcast i32* %64 to i8*
  %66 = load i8**, i8*** %7, align 8
  store i8* %65, i8** %66, align 8
  br label %82

67:                                               ; preds = %55
  %68 = load i32, i32* %6, align 4
  %69 = call i64 @IsEqualGUID(i32* @IID_IWebBrowserPriv2IE9, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = load i8**, i8*** %7, align 8
  %74 = call i32 @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_4__* %72, i8** %73)
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = bitcast i32* %76 to i8*
  %78 = load i8**, i8*** %7, align 8
  store i8* %77, i8** %78, align 8
  br label %81

79:                                               ; preds = %67
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %4, align 4
  br label %92

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %59
  br label %83

83:                                               ; preds = %82, %47
  br label %84

84:                                               ; preds = %83, %35
  br label %85

85:                                               ; preds = %84, %23
  br label %86

86:                                               ; preds = %85, %11
  %87 = load i8**, i8*** %7, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = bitcast i8* %88 to i32*
  %90 = call i32 @IUnknown_AddRef(i32* %89)
  %91 = load i32, i32* @TRUE, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %86, %79
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @IsEqualGUID(i32*, i32) #1

declare dso_local i32 @TRACE(i8*, %struct.TYPE_4__*, i8**) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
