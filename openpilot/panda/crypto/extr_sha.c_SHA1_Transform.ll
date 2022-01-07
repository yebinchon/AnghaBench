; ModuleID = '/home/carl/AnghaBench/openpilot/panda/crypto/extr_sha.c_SHA1_Transform.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/crypto/extr_sha.c_SHA1_Transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @SHA1_Transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SHA1_Transform(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [80 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %45, %1
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 16
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %9, align 8
  %22 = load i32, i32* %20, align 4
  %23 = shl i32 %22, 24
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %9, align 8
  %26 = load i32, i32* %24, align 4
  %27 = shl i32 %26, 16
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %9, align 8
  %32 = load i32, i32* %30, align 4
  %33 = shl i32 %32, 8
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %9, align 8
  %38 = load i32, i32* %36, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 %43
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %19
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %16

48:                                               ; preds = %16
  br label %49

49:                                               ; preds = %80, %48
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 80
  br i1 %51, label %52, label %83

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %58, 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %57, %62
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 %64, 14
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %63, %68
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %70, 16
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = xor i32 %69, %74
  %76 = call i32 @rol(i32 1, i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 %78
  store i32 %76, i32* %79, align 4
  br label %80

80:                                               ; preds = %52
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %49

83:                                               ; preds = %49
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %4, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %5, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %6, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %7, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %181, %83
  %110 = load i32, i32* %10, align 4
  %111 = icmp slt i32 %110, 80
  br i1 %111, label %112, label %184

112:                                              ; preds = %109
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @rol(i32 5, i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %116, %120
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp slt i32 %122, 20
  br i1 %123, label %124, label %135

124:                                              ; preds = %112
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = xor i32 %127, %128
  %130 = and i32 %126, %129
  %131 = xor i32 %125, %130
  %132 = add nsw i32 %131, 1518500249
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %12, align 4
  br label %174

135:                                              ; preds = %112
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %136, 40
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %6, align 4
  %141 = xor i32 %139, %140
  %142 = load i32, i32* %7, align 4
  %143 = xor i32 %141, %142
  %144 = add nsw i32 %143, 1859775393
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %12, align 4
  br label %173

147:                                              ; preds = %135
  %148 = load i32, i32* %10, align 4
  %149 = icmp slt i32 %148, 60
  br i1 %149, label %150, label %163

150:                                              ; preds = %147
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* %6, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* %6, align 4
  %157 = or i32 %155, %156
  %158 = and i32 %154, %157
  %159 = or i32 %153, %158
  %160 = add i32 %159, -1894007588
  %161 = load i32, i32* %12, align 4
  %162 = add i32 %161, %160
  store i32 %162, i32* %12, align 4
  br label %172

163:                                              ; preds = %147
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* %6, align 4
  %166 = xor i32 %164, %165
  %167 = load i32, i32* %7, align 4
  %168 = xor i32 %166, %167
  %169 = add i32 %168, -899497514
  %170 = load i32, i32* %12, align 4
  %171 = add i32 %170, %169
  store i32 %171, i32* %12, align 4
  br label %172

172:                                              ; preds = %163, %150
  br label %173

173:                                              ; preds = %172, %138
  br label %174

174:                                              ; preds = %173, %124
  %175 = load i32, i32* %7, align 4
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @rol(i32 30, i32 %177)
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* %4, align 4
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* %12, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %174
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %109

184:                                              ; preds = %109
  %185 = load i32, i32* %4, align 4
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, %185
  store i32 %191, i32* %189, align 4
  %192 = load i32, i32* %5, align 4
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, %192
  store i32 %198, i32* %196, align 4
  %199 = load i32, i32* %6, align 4
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 2
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, %199
  store i32 %205, i32* %203, align 4
  %206 = load i32, i32* %7, align 4
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 3
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, %206
  store i32 %212, i32* %210, align 4
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 4
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, %213
  store i32 %219, i32* %217, align 4
  ret void
}

declare dso_local i32 @rol(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
