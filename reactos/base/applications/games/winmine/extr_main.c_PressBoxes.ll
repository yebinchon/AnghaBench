; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_PressBoxes.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/games/winmine/extr_main.c_PressBoxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__** }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32)* @PressBoxes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PressBoxes(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  br label %9

9:                                                ; preds = %45, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp sle i32 %10, 1
  br i1 %11, label %12, label %48

12:                                               ; preds = %9
  store i32 -1, i32* %8, align 4
  br label %13

13:                                               ; preds = %41, %12
  %14 = load i32, i32* %8, align 4
  %15 = icmp sle i32 %14, 1
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = load i64, i64* @TRUE, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add i32 %21, %22
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %20, i64 %24
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i64 %17, i64* %32, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %37, %38
  %40 = call i32 @PressBox(%struct.TYPE_9__* %33, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %16
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %13

44:                                               ; preds = %13
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %9

48:                                               ; preds = %9
  store i32 -1, i32* %7, align 4
  br label %49

49:                                               ; preds = %100, %48
  %50 = load i32, i32* %7, align 4
  %51 = icmp sle i32 %50, 1
  br i1 %51, label %52, label %103

52:                                               ; preds = %49
  store i32 -1, i32* %8, align 4
  br label %53

53:                                               ; preds = %96, %52
  %54 = load i32, i32* %8, align 4
  %55 = icmp sle i32 %54, 1
  br i1 %55, label %56, label %99

56:                                               ; preds = %53
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %59, i64 %66
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %56
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %85, %86
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %91, %92
  %94 = call i32 @UnpressBox(%struct.TYPE_9__* %81, i32 %87, i32 %93)
  br label %95

95:                                               ; preds = %80, %56
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %53

99:                                               ; preds = %53
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %49

103:                                              ; preds = %49
  store i32 -1, i32* %7, align 4
  br label %104

104:                                              ; preds = %140, %103
  %105 = load i32, i32* %7, align 4
  %106 = icmp sle i32 %105, 1
  br i1 %106, label %107, label %143

107:                                              ; preds = %104
  store i32 -1, i32* %8, align 4
  br label %108

108:                                              ; preds = %136, %107
  %109 = load i32, i32* %8, align 4
  %110 = icmp sle i32 %109, 1
  br i1 %110, label %111, label %139

111:                                              ; preds = %108
  %112 = load i64, i64* @FALSE, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %7, align 4
  %118 = add i32 %116, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %115, i64 %119
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %8, align 4
  %124 = add i32 %122, %123
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  store i64 %112, i64* %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* %7, align 4
  %131 = add i32 %129, %130
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %8, align 4
  %134 = add i32 %132, %133
  %135 = call i32 @PressBox(%struct.TYPE_9__* %128, i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %111
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %8, align 4
  br label %108

139:                                              ; preds = %108
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %7, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  br label %104

143:                                              ; preds = %104
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 8
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  ret void
}

declare dso_local i32 @PressBox(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @UnpressBox(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
