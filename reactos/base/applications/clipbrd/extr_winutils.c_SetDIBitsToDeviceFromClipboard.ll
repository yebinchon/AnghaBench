; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_winutils.c_SetDIBitsToDeviceFromClipboard.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/clipbrd/extr_winutils.c_SetDIBitsToDeviceFromClipboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i64, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@BI_BITFIELDS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetDIBitsToDeviceFromClipboard(i32 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 %1, i32* %16, align 4
  %17 = bitcast %struct.TYPE_8__* %6 to i64*
  store i64 %2, i64* %17, align 4
  store i32 %0, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @GetClipboardData(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  br label %167

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.TYPE_10__* @GlobalLock(i32 %24)
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %10, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %167

29:                                               ; preds = %23
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %33, 4
  br i1 %34, label %35, label %68

35:                                               ; preds = %29
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %37 = bitcast %struct.TYPE_10__* %36 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %37, %struct.TYPE_11__** %15, align 8
  store i32 0, i32* %14, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sle i32 %40, 8
  br i1 %41, label %42, label %61

42:                                               ; preds = %35
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 1, %45
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @DIB_RGB_COLORS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %14, align 4
  br label %60

55:                                               ; preds = %42
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %55, %50
  br label %61

61:                                               ; preds = %60, %35
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %12, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %13, align 4
  br label %138

68:                                               ; preds = %29
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = icmp eq i64 %72, 4
  br i1 %73, label %86, label %74

74:                                               ; preds = %68
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = icmp eq i64 %78, 4
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = icmp eq i64 %84, 4
  br i1 %85, label %86, label %134

86:                                               ; preds = %80, %74, %68
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %86
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp sle i32 %95, 8
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = shl i32 1, %100
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %97, %92, %86
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @DIB_RGB_COLORS, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %14, align 4
  br label %116

111:                                              ; preds = %102
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %111, %106
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @BI_BITFIELDS, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %116
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = add i64 %124, 12
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %122, %116
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %12, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %13, align 4
  br label %137

134:                                              ; preds = %80
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @GlobalUnlock(i32 %135)
  br label %167

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %61
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %140 = ptrtoint %struct.TYPE_10__* %139 to i64
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %140, %144
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %145, %147
  store i64 %148, i64* %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 0, %152
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 0, %155
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load i64, i64* %11, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %162 = ptrtoint %struct.TYPE_10__* %161 to i32
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @SetDIBitsToDevice(i32 %150, i32 %153, i32 %156, i32 %157, i32 %158, i32 0, i32 0, i32 0, i32 %159, i64 %160, i32 %162, i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @GlobalUnlock(i32 %165)
  br label %167

167:                                              ; preds = %138, %134, %28, %22
  ret void
}

declare dso_local i32 @GetClipboardData(i32) #1

declare dso_local %struct.TYPE_10__* @GlobalLock(i32) #1

declare dso_local i32 @GlobalUnlock(i32) #1

declare dso_local i32 @SetDIBitsToDevice(i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
