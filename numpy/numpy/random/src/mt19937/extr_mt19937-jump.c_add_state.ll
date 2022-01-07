; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/mt19937/extr_mt19937-jump.c_add_state.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/mt19937/extr_mt19937-jump.c_add_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@N = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_state(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %14, %15
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %113

18:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %45, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @N, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %21, %22
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %43, %34
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %25
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %19

48:                                               ; preds = %19
  br label %49

49:                                               ; preds = %77, %48
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @N, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %51, %52
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %49
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @N, align 4
  %62 = sub nsw i32 %60, %61
  %63 = add nsw i32 %59, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %58, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %75, %66
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %55
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %49

80:                                               ; preds = %49
  br label %81

81:                                               ; preds = %109, %80
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @N, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %112

85:                                               ; preds = %81
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @N, align 4
  %92 = sub nsw i32 %90, %91
  %93 = add nsw i32 %89, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %88, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @N, align 4
  %103 = sub nsw i32 %101, %102
  %104 = add nsw i32 %100, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %99, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = xor i32 %107, %96
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %85
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %81

112:                                              ; preds = %81
  br label %208

113:                                              ; preds = %2
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %140, %113
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @N, align 4
  %117 = load i32, i32* %6, align 4
  %118 = sub nsw i32 %116, %117
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %143

120:                                              ; preds = %114
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = xor i32 %138, %129
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %120
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %114

143:                                              ; preds = %114
  br label %144

144:                                              ; preds = %172, %143
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @N, align 4
  %147 = load i32, i32* %7, align 4
  %148 = sub nsw i32 %146, %147
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %175

150:                                              ; preds = %144
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @N, align 4
  %166 = sub nsw i32 %164, %165
  %167 = add nsw i32 %163, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %162, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = xor i32 %170, %159
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %150
  %173 = load i32, i32* %5, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %5, align 4
  br label %144

175:                                              ; preds = %144
  br label %176

176:                                              ; preds = %204, %175
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* @N, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %207

180:                                              ; preds = %176
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @N, align 4
  %187 = sub nsw i32 %185, %186
  %188 = add nsw i32 %184, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %183, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @N, align 4
  %198 = sub nsw i32 %196, %197
  %199 = add nsw i32 %195, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %194, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = xor i32 %202, %191
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %180
  %205 = load i32, i32* %5, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %5, align 4
  br label %176

207:                                              ; preds = %176
  br label %208

208:                                              ; preds = %207, %112
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
