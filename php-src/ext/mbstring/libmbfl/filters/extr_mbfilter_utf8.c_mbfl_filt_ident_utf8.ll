; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf8.c_mbfl_filt_ident_utf8.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf8.c_mbfl_filt_ident_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_ident_utf8(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = ashr i32 %8, 8
  %10 = and i32 %9, 255
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  br label %32

23:                                               ; preds = %17
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %31, %20
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %172

35:                                               ; preds = %2
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 192
  br i1 %37, label %38, label %114

38:                                               ; preds = %35
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %108 [
    i32 32, label %42
    i32 48, label %71
    i32 49, label %100
    i32 16, label %105
    i32 33, label %105
    i32 50, label %105
  ]

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = icmp sge i32 %46, 160
  br i1 %47, label %60, label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 13
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %52, 160
  br i1 %53, label %60, label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %5, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 13
  br i1 %59, label %60, label %65

60:                                               ; preds = %57, %51, %45
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %70

65:                                               ; preds = %57, %54
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %60
  br label %113

71:                                               ; preds = %38
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = icmp sge i32 %75, 144
  br i1 %76, label %89, label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %5, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 4
  br i1 %82, label %89, label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 4
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load i32, i32* %3, align 4
  %88 = icmp slt i32 %87, 144
  br i1 %88, label %89, label %94

89:                                               ; preds = %86, %80, %74
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %99

94:                                               ; preds = %86, %83
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %94, %89
  br label %113

100:                                              ; preds = %38
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %113

105:                                              ; preds = %38, %38, %38
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  store i32 0, i32* %107, align 4
  br label %113

108:                                              ; preds = %38
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %108, %105, %100, %99, %70
  br label %171

114:                                              ; preds = %35
  %115 = load i32, i32* %3, align 4
  %116 = icmp slt i32 %115, 194
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  store i32 0, i32* %121, align 4
  br label %170

122:                                              ; preds = %114
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  store i32 1, i32* %129, align 4
  br label %130

130:                                              ; preds = %127, %122
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  store i32 0, i32* %132, align 4
  %133 = load i32, i32* %3, align 4
  %134 = icmp slt i32 %133, 224
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store i32 16, i32* %137, align 4
  br label %169

138:                                              ; preds = %130
  %139 = load i32, i32* %3, align 4
  %140 = icmp slt i32 %139, 240
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  store i32 32, i32* %143, align 4
  %144 = load i32, i32* %3, align 4
  %145 = and i32 %144, 15
  %146 = shl i32 %145, 8
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %168

151:                                              ; preds = %138
  %152 = load i32, i32* %3, align 4
  %153 = icmp slt i32 %152, 245
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  store i32 48, i32* %156, align 4
  %157 = load i32, i32* %3, align 4
  %158 = and i32 %157, 7
  %159 = shl i32 %158, 8
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  br label %167

164:                                              ; preds = %151
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  store i32 1, i32* %166, align 4
  br label %167

167:                                              ; preds = %164, %154
  br label %168

168:                                              ; preds = %167, %141
  br label %169

169:                                              ; preds = %168, %135
  br label %170

170:                                              ; preds = %169, %117
  br label %171

171:                                              ; preds = %170, %113
  br label %172

172:                                              ; preds = %171, %32
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
