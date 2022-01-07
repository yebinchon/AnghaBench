; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_startScan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginget.c_startScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i64, %struct.TYPE_8__**, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@GinFuzzySearchLimit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @startScan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @startScan(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %3, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 4
  store i32* %13, i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %32, %1
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %24, i64 %25
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @startScanEntry(i32* %21, %struct.TYPE_8__* %27, i32 %30)
  br label %32

32:                                               ; preds = %20
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %14

35:                                               ; preds = %14
  %36 = load i32, i32* @GinFuzzySearchLimit, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %104

38:                                               ; preds = %35
  store i32 1, i32* %6, align 4
  store i64 0, i64* %5, align 8
  br label %39

39:                                               ; preds = %64, %38
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %39
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %48, i64 %49
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @GinFuzzySearchLimit, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %57, %59
  %61 = icmp ule i64 %54, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %67

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %5, align 8
  br label %39

67:                                               ; preds = %62, %39
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %103

70:                                               ; preds = %67
  store i64 0, i64* %5, align 8
  br label %71

71:                                               ; preds = %99, %70
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %71
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %82, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %83, i64 %84
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = udiv i64 %89, %80
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %93, align 8
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %94, i64 %95
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %77
  %100 = load i64, i64* %5, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %5, align 8
  br label %71

102:                                              ; preds = %71
  br label %103

103:                                              ; preds = %102, %67
  br label %104

104:                                              ; preds = %103, %35
  store i64 0, i64* %5, align 8
  br label %105

105:                                              ; preds = %120, %104
  %106 = load i64, i64* %5, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ult i64 %106, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %105
  %112 = load i32*, i32** %4, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %5, align 8
  %118 = add i64 %116, %117
  %119 = call i32 @startScanKey(i32* %112, %struct.TYPE_7__* %113, i64 %118)
  br label %120

120:                                              ; preds = %111
  %121 = load i64, i64* %5, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %5, align 8
  br label %105

123:                                              ; preds = %105
  ret void
}

declare dso_local i32 @startScanEntry(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @startScanKey(i32*, %struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
