; ModuleID = '/home/carl/AnghaBench/radare2/libr/hash/extr_sha1.c_shaHashBlock.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/hash/extr_sha1.c_shaHashBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @shaHashBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shaHashBlock(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 16, i32* %3, align 4
  br label %10

10:                                               ; preds = %56, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp sle i32 %11, 79
  br i1 %12, label %13, label %59

13:                                               ; preds = %10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sub nsw i32 %17, 3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sub nsw i32 %25, 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %21, %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sub nsw i32 %34, 14
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %30, %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sub nsw i32 %43, 16
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %39, %47
  %49 = call i32 @SHA_ROT(i32 %48, i32 1)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %13
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %10

59:                                               ; preds = %10
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %4, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %5, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %6, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %7, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %8, align 4
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %116, %59
  %86 = load i32, i32* %3, align 4
  %87 = icmp sle i32 %86, 19
  br i1 %87, label %88, label %119

88:                                               ; preds = %85
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @SHA_ROT(i32 %89, i32 5)
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = xor i32 %91, %92
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* %7, align 4
  %97 = xor i32 %95, %96
  %98 = add i32 %90, %97
  %99 = load i32, i32* %8, align 4
  %100 = add i32 %98, %99
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add i32 %100, %107
  %109 = add i32 %108, 1518500249
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @SHA_ROT(i32 %112, i32 30)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %4, align 4
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %88
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %3, align 4
  br label %85

119:                                              ; preds = %85
  store i32 20, i32* %3, align 4
  br label %120

120:                                              ; preds = %149, %119
  %121 = load i32, i32* %3, align 4
  %122 = icmp sle i32 %121, 39
  br i1 %122, label %123, label %152

123:                                              ; preds = %120
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @SHA_ROT(i32 %124, i32 5)
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %6, align 4
  %128 = xor i32 %126, %127
  %129 = load i32, i32* %7, align 4
  %130 = xor i32 %128, %129
  %131 = add i32 %125, %130
  %132 = load i32, i32* %8, align 4
  %133 = add i32 %131, %132
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %3, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = add i32 %133, %140
  %142 = add i32 %141, 1859775393
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @SHA_ROT(i32 %145, i32 30)
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %4, align 4
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %123
  %150 = load i32, i32* %3, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %3, align 4
  br label %120

152:                                              ; preds = %120
  store i32 40, i32* %3, align 4
  br label %153

153:                                              ; preds = %186, %152
  %154 = load i32, i32* %3, align 4
  %155 = icmp sle i32 %154, 59
  br i1 %155, label %156, label %189

156:                                              ; preds = %153
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @SHA_ROT(i32 %157, i32 5)
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %6, align 4
  %161 = and i32 %159, %160
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %6, align 4
  %165 = or i32 %163, %164
  %166 = and i32 %162, %165
  %167 = or i32 %161, %166
  %168 = add i32 %158, %167
  %169 = load i32, i32* %8, align 4
  %170 = add i32 %168, %169
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %3, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = add i32 %170, %177
  %179 = add i32 %178, -1894007588
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %7, align 4
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %6, align 4
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @SHA_ROT(i32 %182, i32 30)
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %4, align 4
  store i32 %184, i32* %5, align 4
  %185 = load i32, i32* %9, align 4
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %156
  %187 = load i32, i32* %3, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %3, align 4
  br label %153

189:                                              ; preds = %153
  store i32 60, i32* %3, align 4
  br label %190

190:                                              ; preds = %219, %189
  %191 = load i32, i32* %3, align 4
  %192 = icmp sle i32 %191, 79
  br i1 %192, label %193, label %222

193:                                              ; preds = %190
  %194 = load i32, i32* %4, align 4
  %195 = call i32 @SHA_ROT(i32 %194, i32 5)
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* %6, align 4
  %198 = xor i32 %196, %197
  %199 = load i32, i32* %7, align 4
  %200 = xor i32 %198, %199
  %201 = add i32 %195, %200
  %202 = load i32, i32* %8, align 4
  %203 = add i32 %201, %202
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %3, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = add i32 %203, %210
  %212 = add i32 %211, -899497514
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %7, align 4
  store i32 %213, i32* %8, align 4
  %214 = load i32, i32* %6, align 4
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %5, align 4
  %216 = call i32 @SHA_ROT(i32 %215, i32 30)
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %4, align 4
  store i32 %217, i32* %5, align 4
  %218 = load i32, i32* %9, align 4
  store i32 %218, i32* %4, align 4
  br label %219

219:                                              ; preds = %193
  %220 = load i32, i32* %3, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %3, align 4
  br label %190

222:                                              ; preds = %190
  %223 = load i32, i32* %4, align 4
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = add i32 %228, %223
  store i32 %229, i32* %227, align 4
  %230 = load i32, i32* %5, align 4
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  %235 = load i32, i32* %234, align 4
  %236 = add i32 %235, %230
  store i32 %236, i32* %234, align 4
  %237 = load i32, i32* %6, align 4
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 2
  %242 = load i32, i32* %241, align 4
  %243 = add i32 %242, %237
  store i32 %243, i32* %241, align 4
  %244 = load i32, i32* %7, align 4
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 3
  %249 = load i32, i32* %248, align 4
  %250 = add i32 %249, %244
  store i32 %250, i32* %248, align 4
  %251 = load i32, i32* %8, align 4
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 4
  %256 = load i32, i32* %255, align 4
  %257 = add i32 %256, %251
  store i32 %257, i32* %255, align 4
  ret void
}

declare dso_local i32 @SHA_ROT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
