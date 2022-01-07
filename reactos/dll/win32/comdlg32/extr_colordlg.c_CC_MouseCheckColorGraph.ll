; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_MouseCheckColorGraph.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_colordlg.c_CC_MouseCheckColorGraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@MAXHORI = common dso_local global i64 0, align 8
@MAXVERT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32)* @CC_MouseCheckColorGraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CC_MouseCheckColorGraph(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca %struct.TYPE_10__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @CONV_LPARAMTOPOINT(i32 %17, %struct.TYPE_11__* %13)
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ClientToScreen(i32 %19, %struct.TYPE_11__* %13)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @GetDlgItem(i32 %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @GetWindowRect(i32 %24, %struct.TYPE_10__* %14)
  %26 = bitcast %struct.TYPE_11__* %13 to { i64, i64 }*
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @PtInRect(%struct.TYPE_10__* %14, i64 %28, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %5
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %6, align 4
  br label %94

35:                                               ; preds = %5
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @GetClientRect(i32 %36, %struct.TYPE_10__* %14)
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @ScreenToClient(i32 %38, %struct.TYPE_11__* %13)
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MAXHORI, align 8
  %43 = mul nsw i64 %41, %42
  store i64 %43, i64* %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %15, align 8
  %47 = sdiv i64 %46, %45
  store i64 %47, i64* %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %49, %51
  %53 = load i64, i64* @MAXVERT, align 8
  %54 = mul nsw i64 %52, %53
  store i64 %54, i64* %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %16, align 8
  %58 = sdiv i64 %57, %56
  store i64 %58, i64* %16, align 8
  %59 = load i64, i64* %15, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %35
  store i64 0, i64* %15, align 8
  br label %62

62:                                               ; preds = %61, %35
  %63 = load i64, i64* %16, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i64 0, i64* %16, align 8
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* @MAXHORI, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* @MAXHORI, align 8
  store i64 %71, i64* %15, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* @MAXVERT, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i64, i64* @MAXVERT, align 8
  store i64 %77, i64* %16, align 8
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i32*, i32** %9, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i64, i64* %15, align 8
  %83 = trunc i64 %82 to i32
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32*, i32** %10, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i64, i64* %16, align 8
  %90 = trunc i64 %89 to i32
  %91 = load i32*, i32** %10, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i32, i32* @TRUE, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %33
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @CONV_LPARAMTOPOINT(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ClientToScreen(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @PtInRect(%struct.TYPE_10__*, i64, i64) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ScreenToClient(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
