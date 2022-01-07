; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_BigInt_DivideWithRemainder_MaxQuotient9.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_dragon4.c_BigInt_DivideWithRemainder_MaxQuotient9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_6__*)* @BigInt_DivideWithRemainder_MaxQuotient9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BigInt_DivideWithRemainder_MaxQuotient9(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %37, 8
  br i1 %38, label %39, label %60

39:                                               ; preds = %27
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %42, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bitmask_u64(i32 32)
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %39
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sle i32 %55, %58
  br label %60

60:                                               ; preds = %52, %39, %27, %2
  %61 = phi i1 [ false, %39 ], [ false, %27 ], [ false, %2 ], [ %59, %52 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @DEBUG_ASSERT(i32 %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %6, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %226

75:                                               ; preds = %60
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = getelementptr inbounds i32, i32* %81, i64 -1
  store i32* %82, i32** %8, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = getelementptr inbounds i32, i32* %88, i64 -1
  store i32* %89, i32** %9, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  %95 = sdiv i32 %91, %94
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp sle i32 %96, 9
  %98 = zext i1 %97 to i32
  %99 = call i32 @DEBUG_ASSERT(i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %164

102:                                              ; preds = %75
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %10, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  store i32* %108, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %109

109:                                              ; preds = %137, %102
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %7, align 4
  %113 = mul nsw i32 %111, %112
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %113, %114
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = ashr i32 %116, 32
  store i32 %117, i32* %13, align 4
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @bitmask_u64(i32 32)
  %122 = and i32 %120, %121
  %123 = sub nsw i32 %119, %122
  %124 = load i32, i32* %12, align 4
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = ashr i32 %126, 32
  %128 = and i32 %127, 1
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @bitmask_u64(i32 32)
  %131 = and i32 %129, %130
  %132 = load i32*, i32** %11, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32*, i32** %10, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %10, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %11, align 8
  br label %137

137:                                              ; preds = %109
  %138 = load i32*, i32** %10, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = icmp ule i32* %138, %139
  br i1 %140, label %109, label %141

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %157, %141
  %143 = load i32, i32* %6, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 0
  br label %155

155:                                              ; preds = %145, %142
  %156 = phi i1 [ false, %142 ], [ %154, %145 ]
  br i1 %156, label %157, label %160

157:                                              ; preds = %155
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %6, align 4
  br label %142

160:                                              ; preds = %155
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %160, %75
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %167 = call i64 @BigInt_Compare(%struct.TYPE_6__* %165, %struct.TYPE_6__* %166)
  %168 = icmp sge i64 %167, 0
  br i1 %168, label %169, label %224

169:                                              ; preds = %164
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  store i32* %172, i32** %16, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  store i32* %175, i32** %17, align 8
  store i32 0, i32* %18, align 4
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %197, %169
  %179 = load i32*, i32** %17, align 8
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %16, align 8
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 %180, %182
  %184 = load i32, i32* %18, align 4
  %185 = sub nsw i32 %183, %184
  store i32 %185, i32* %19, align 4
  %186 = load i32, i32* %19, align 4
  %187 = ashr i32 %186, 32
  %188 = and i32 %187, 1
  store i32 %188, i32* %18, align 4
  %189 = load i32, i32* %19, align 4
  %190 = call i32 @bitmask_u64(i32 32)
  %191 = and i32 %189, %190
  %192 = load i32*, i32** %17, align 8
  store i32 %191, i32* %192, align 4
  %193 = load i32*, i32** %16, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %16, align 8
  %195 = load i32*, i32** %17, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %17, align 8
  br label %197

197:                                              ; preds = %178
  %198 = load i32*, i32** %16, align 8
  %199 = load i32*, i32** %8, align 8
  %200 = icmp ule i32* %198, %199
  br i1 %200, label %178, label %201

201:                                              ; preds = %197
  br label %202

202:                                              ; preds = %217, %201
  %203 = load i32, i32* %6, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %202
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %6, align 4
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 0
  br label %215

215:                                              ; preds = %205, %202
  %216 = phi i1 [ false, %202 ], [ %214, %205 ]
  br i1 %216, label %217, label %220

217:                                              ; preds = %215
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %6, align 4
  br label %202

220:                                              ; preds = %215
  %221 = load i32, i32* %6, align 4
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  store i32 %221, i32* %223, align 8
  br label %224

224:                                              ; preds = %220, %164
  %225 = load i32, i32* %7, align 4
  store i32 %225, i32* %3, align 4
  br label %226

226:                                              ; preds = %224, %74
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i32 @DEBUG_ASSERT(i32) #1

declare dso_local i32 @bitmask_u64(i32) #1

declare dso_local i64 @BigInt_Compare(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
