; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass64.c_regsluop.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass64.c_regsluop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@UT32_MAX = common dso_local global i32 0, align 4
@ARM_REG32 = common dso_local global i32 0, align 4
@ARM_GPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @regsluop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regsluop(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @UT32_MAX, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ARM_REG32, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %147

20:                                               ; preds = %2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ARM_REG32, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 64
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %20
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ARM_GPR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %147

45:                                               ; preds = %33
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp sgt i32 %52, 255
  br i1 %53, label %57, label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, -256
  br i1 %56, label %57, label %59

57:                                               ; preds = %54, %45
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %147

59:                                               ; preds = %54
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 24
  %68 = or i32 %60, %67
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 29
  %76 = or i32 %68, %75
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 56
  %84 = shl i32 %83, 13
  %85 = or i32 %76, %84
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %59
  %89 = load i32, i32* %7, align 4
  %90 = mul nsw i32 %89, -1
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sub nsw i32 15, %92
  %94 = and i32 15, %93
  %95 = shl i32 %94, 20
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @countTrailingZeros(i32 %98)
  %100 = icmp sgt i32 %99, 3
  br i1 %100, label %101, label %109

101:                                              ; preds = %88
  %102 = load i32, i32* %7, align 4
  %103 = ashr i32 %102, 4
  %104 = sub nsw i32 %103, 1
  %105 = sub nsw i32 31, %104
  %106 = shl i32 %105, 8
  %107 = load i32, i32* %6, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %6, align 4
  br label %116

109:                                              ; preds = %88
  %110 = load i32, i32* %7, align 4
  %111 = ashr i32 %110, 4
  %112 = sub nsw i32 31, %111
  %113 = shl i32 %112, 8
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %109, %101
  br label %145

117:                                              ; preds = %59
  %118 = load i32, i32* %7, align 4
  %119 = and i32 %118, 63
  %120 = and i32 15, %119
  %121 = shl i32 %120, 20
  %122 = load i32, i32* %6, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @countTrailingZeros(i32 %124)
  %126 = icmp slt i32 %125, 4
  br i1 %126, label %127, label %133

127:                                              ; preds = %117
  %128 = load i32, i32* %7, align 4
  %129 = ashr i32 %128, 4
  %130 = shl i32 %129, 8
  %131 = load i32, i32* %6, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %6, align 4
  br label %139

133:                                              ; preds = %117
  %134 = load i32, i32* %7, align 4
  %135 = and i32 255, %134
  %136 = shl i32 %135, 4
  %137 = load i32, i32* %6, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %133, %127
  %140 = load i32, i32* %7, align 4
  %141 = ashr i32 %140, 8
  %142 = shl i32 %141, 8
  %143 = load i32, i32* %6, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %139, %116
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %57, %43, %18
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @countTrailingZeros(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
