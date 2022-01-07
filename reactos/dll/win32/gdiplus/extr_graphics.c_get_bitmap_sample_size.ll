; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_get_bitmap_sample_size.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_get_bitmap_sample_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@WrapModeClamp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, %struct.TYPE_6__*, i64, i64, i64, i64, %struct.TYPE_5__*)* @get_bitmap_sample_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_bitmap_sample_size(i32 %0, i64 %1, %struct.TYPE_6__* %2, i64 %3, i64 %4, i64 %5, i64 %6, %struct.TYPE_5__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i64 %1, i64* %10, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %16, align 8
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %40 [
    i32 129, label %22
    i32 130, label %22
    i32 132, label %22
    i32 131, label %22
    i32 128, label %39
  ]

22:                                               ; preds = %8, %8, %8, %8
  %23 = load i64, i64* %12, align 8
  %24 = call i32 @floorf(i64 %23)
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %17, align 8
  %26 = load i64, i64* %13, align 8
  %27 = call i32 @floorf(i64 %26)
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %18, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %14, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @ceilf(i64 %31)
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %19, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %15, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @ceilf(i64 %36)
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %20, align 8
  br label %53

39:                                               ; preds = %8
  br label %40

40:                                               ; preds = %8, %39
  %41 = load i64, i64* %12, align 8
  %42 = call i64 @gdip_round(i64 %41)
  store i64 %42, i64* %17, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i64 @gdip_round(i64 %43)
  store i64 %44, i64* %18, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %14, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i64 @gdip_round(i64 %47)
  store i64 %48, i64* %19, align 8
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %15, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i64 @gdip_round(i64 %51)
  store i64 %52, i64* %20, align 8
  br label %53

53:                                               ; preds = %40, %22
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @WrapModeClamp, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %97

57:                                               ; preds = %53
  %58 = load i64, i64* %17, align 8
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i64 0, i64* %17, align 8
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i64, i64* %18, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i64 0, i64* %18, align 8
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i64, i64* %19, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %66, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %74, 1
  store i64 %75, i64* %19, align 8
  br label %76

76:                                               ; preds = %71, %65
  %77 = load i64, i64* %20, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %77, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, 1
  store i64 %86, i64* %20, align 8
  br label %87

87:                                               ; preds = %82, %76
  %88 = load i64, i64* %20, align 8
  %89 = load i64, i64* %18, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %19, align 8
  %93 = load i64, i64* %17, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91, %87
  store i64 0, i64* %20, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  br label %96

96:                                               ; preds = %95, %91
  br label %126

97:                                               ; preds = %53
  %98 = load i64, i64* %17, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* %19, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp sge i64 %101, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100, %97
  store i64 0, i64* %17, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, 1
  store i64 %110, i64* %19, align 8
  br label %111

111:                                              ; preds = %106, %100
  %112 = load i64, i64* %18, align 8
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = load i64, i64* %20, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp sge i64 %115, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %114, %111
  store i64 0, i64* %18, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = sub nsw i64 %123, 1
  store i64 %124, i64* %20, align 8
  br label %125

125:                                              ; preds = %120, %114
  br label %126

126:                                              ; preds = %125, %96
  %127 = load i64, i64* %17, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  store i64 %127, i64* %129, align 8
  %130 = load i64, i64* %18, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  store i64 %130, i64* %132, align 8
  %133 = load i64, i64* %19, align 8
  %134 = load i64, i64* %17, align 8
  %135 = sub nsw i64 %133, %134
  %136 = add nsw i64 %135, 1
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load i64, i64* %20, align 8
  %140 = load i64, i64* %18, align 8
  %141 = sub nsw i64 %139, %140
  %142 = add nsw i64 %141, 1
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  ret void
}

declare dso_local i32 @floorf(i64) #1

declare dso_local i32 @ceilf(i64) #1

declare dso_local i64 @gdip_round(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
