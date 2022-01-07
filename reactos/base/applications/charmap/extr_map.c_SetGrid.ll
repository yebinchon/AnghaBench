; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/charmap/extr_map.c_SetGrid.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/charmap/extr_map.c_SetGrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__**, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@YCELLS = common dso_local global i64 0, align 8
@XCELLS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @SetGrid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetGrid(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %119, %1
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @YCELLS, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %122

10:                                               ; preds = %6
  store i64 0, i64* %4, align 8
  br label %11

11:                                               ; preds = %115, %10
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @XCELLS, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %118

15:                                               ; preds = %11
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = mul i64 %16, %20
  %22 = add i64 %21, 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %25, i64 %26
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i64 %22, i64* %32, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = mul i64 %33, %37
  %39 = add i64 %38, 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %42, i64 %43
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i64 %39, i64* %49, align 8
  %50 = load i64, i64* %4, align 8
  %51 = add i64 %50, 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = mul i64 %51, %55
  %57 = add i64 %56, 2
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %60, i64 %61
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  store i64 %57, i64* %67, align 8
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, 1
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = mul i64 %69, %73
  %75 = add i64 %74, 2
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %77, align 8
  %79 = load i64, i64* %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %78, i64 %79
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  store i64 %75, i64* %85, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %87, align 8
  %89 = load i64, i64* %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %88, i64 %89
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i64, i64* %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %97, i64 %98
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load i64, i64* %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = call i32 @CopyRect(i32* %94, %struct.TYPE_9__* %103)
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %106, align 8
  %108 = load i64, i64* %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %107, i64 %108
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = load i64, i64* %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = call i32 @InflateRect(i32* %113, i32 -1, i32 -1)
  br label %115

115:                                              ; preds = %15
  %116 = load i64, i64* %4, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %4, align 8
  br label %11

118:                                              ; preds = %11
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %5, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %5, align 8
  br label %6

122:                                              ; preds = %6
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @CopyRect(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @InflateRect(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
