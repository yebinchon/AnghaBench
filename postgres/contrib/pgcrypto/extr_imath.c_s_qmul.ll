; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_qmul.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_qmul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@MP_DIGIT_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @s_qmul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_qmul(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %146

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = call i32 @MP_USED(%struct.TYPE_7__* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MP_DIGIT_BIT, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MP_DIGIT_BIT, align 4
  %27 = srem i32 %25, %26
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %19
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = call i32* @MP_DIGITS(%struct.TYPE_7__* %31)
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = getelementptr inbounds i32, i32* %35, i64 -1
  store i32* %36, i32** %14, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MP_DIGIT_BIT, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %39, %40
  %42 = ashr i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %44, %30
  br label %46

46:                                               ; preds = %45, %19
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %50, %51
  %53 = call i32 @s_pad(%struct.TYPE_7__* %47, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %146

56:                                               ; preds = %46
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %91

59:                                               ; preds = %56
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = call i32* @MP_DIGITS(%struct.TYPE_7__* %60)
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = getelementptr inbounds i32, i32* %64, i64 -1
  store i32* %65, i32** %11, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32* %69, i32** %12, align 8
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %80, %59
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i32*, i32** %11, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 -1
  store i32* %76, i32** %11, align 8
  %77 = load i32, i32* %75, align 4
  %78 = load i32*, i32** %12, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 -1
  store i32* %79, i32** %12, align 8
  store i32 %77, i32* %78, align 4
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %70

83:                                               ; preds = %70
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = call i32* @MP_DIGITS(%struct.TYPE_7__* %84)
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @ZERO(i32* %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %83, %56
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %140

94:                                               ; preds = %91
  store i32 0, i32* %13, align 4
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %10, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %97 = call i32* @MP_DIGITS(%struct.TYPE_7__* %96)
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32* %100, i32** %11, align 8
  br label %101

101:                                              ; preds = %120, %94
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %101
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %15, align 4
  %108 = load i32*, i32** %11, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = shl i32 %109, %110
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @MP_DIGIT_BIT, align 4
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %113, %114
  %116 = ashr i32 %112, %115
  %117 = or i32 %111, %116
  %118 = load i32*, i32** %11, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %105
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  %123 = load i32*, i32** %11, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %11, align 8
  br label %101

125:                                              ; preds = %101
  %126 = load i32, i32* @MP_DIGIT_BIT, align 4
  %127 = load i32, i32* %8, align 4
  %128 = sub nsw i32 %126, %127
  %129 = load i32, i32* %13, align 4
  %130 = ashr i32 %129, %128
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %125
  %134 = load i32, i32* %13, align 4
  %135 = load i32*, i32** %11, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %133, %125
  br label %140

140:                                              ; preds = %139, %91
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = call i32 @CLAMP(%struct.TYPE_7__* %144)
  store i32 1, i32* %3, align 4
  br label %146

146:                                              ; preds = %140, %55, %18
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @MP_USED(%struct.TYPE_7__*) #1

declare dso_local i32* @MP_DIGITS(%struct.TYPE_7__*) #1

declare dso_local i32 @s_pad(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ZERO(i32*, i32) #1

declare dso_local i32 @CLAMP(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
