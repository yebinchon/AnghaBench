; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/HID/Src/extr_usbh_hid_parser.c_HID_ReadItem.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/HID/Src/extr_usbh_hid_parser.c_HID_ReadItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i64, i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HID_ReadItem(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %9, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp sle i64 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %148

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %31, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = sdiv i32 %39, 8
  %41 = load i32*, i32** %9, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %9, align 8
  %44 = load i32, i32* %8, align 4
  %45 = srem i32 %44, 8
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %30, %2
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %74, %46
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 7
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = sdiv i32 %57, 8
  %59 = add nsw i32 %58, 1
  br label %65

60:                                               ; preds = %47
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = sdiv i32 %63, 8
  br label %65

65:                                               ; preds = %60, %54
  %66 = phi i32 [ %59, %54 ], [ %64, %60 ]
  %67 = icmp slt i32 %48, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %71, 8
  %73 = shl i32 %70, %72
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %47

77:                                               ; preds = %65
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %10, align 4
  %80 = ashr i32 %78, %79
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = shl i32 1, %83
  %85 = sub nsw i32 %84, 1
  %86 = and i32 %80, %85
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %77
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = icmp sgt i32 %93, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92, %77
  store i32 0, i32* %3, align 4
  br label %148

99:                                               ; preds = %92
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 7
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %135

104:                                              ; preds = %99
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 1
  %110 = shl i32 1, %109
  %111 = and i32 %105, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %104
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = shl i32 1, %116
  %118 = sub nsw i32 %117, 1
  %119 = xor i32 %118, -1
  %120 = and i32 -1, %119
  %121 = load i32, i32* %6, align 4
  %122 = or i32 %120, %121
  store i32 %122, i32* %11, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %129

127:                                              ; preds = %113
  %128 = load i32, i32* %11, align 4
  store i32 %128, i32* %3, align 4
  br label %148

129:                                              ; preds = %113
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %130, %133
  store i32 %134, i32* %3, align 4
  br label %148

135:                                              ; preds = %104, %99
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %3, align 4
  br label %148

142:                                              ; preds = %135
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = mul nsw i32 %143, %146
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %142, %140, %129, %127, %98, %29
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
