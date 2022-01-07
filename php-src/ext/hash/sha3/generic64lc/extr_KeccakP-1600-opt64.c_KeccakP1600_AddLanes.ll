; ModuleID = '/home/carl/AnghaBench/php-src/ext/hash/sha3/generic64lc/extr_KeccakP-1600-opt64.c_KeccakP1600_AddLanes.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/hash/sha3/generic64lc/extr_KeccakP-1600-opt64.c_KeccakP1600_AddLanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @KeccakP1600_AddLanes(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %134, %3
  %9 = load i32, i32* %7, align 4
  %10 = add i32 %9, 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ule i32 %10, %11
  br i1 %12, label %13, label %137

13:                                               ; preds = %8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = load i32, i32* %7, align 4
  %17 = add i32 %16, 0
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, 0
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %27, %20
  store i32 %28, i32* %26, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %7, align 4
  %32 = add i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, 1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %42, %35
  store i32 %43, i32* %41, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, 2
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %4, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, 2
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %57, %50
  store i32 %58, i32* %56, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = bitcast i8* %59 to i32*
  %61 = load i32, i32* %7, align 4
  %62 = add i32 %61, 3
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %4, align 8
  %67 = bitcast i8* %66 to i32*
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 3
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %72, %65
  store i32 %73, i32* %71, align 4
  %74 = load i8*, i8** %5, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %4, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = load i32, i32* %7, align 4
  %84 = add i32 %83, 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = xor i32 %87, %80
  store i32 %88, i32* %86, align 4
  %89 = load i8*, i8** %5, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load i32, i32* %7, align 4
  %92 = add i32 %91, 5
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i8*, i8** %4, align 8
  %97 = bitcast i8* %96 to i32*
  %98 = load i32, i32* %7, align 4
  %99 = add i32 %98, 5
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = xor i32 %102, %95
  store i32 %103, i32* %101, align 4
  %104 = load i8*, i8** %5, align 8
  %105 = bitcast i8* %104 to i32*
  %106 = load i32, i32* %7, align 4
  %107 = add i32 %106, 6
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %4, align 8
  %112 = bitcast i8* %111 to i32*
  %113 = load i32, i32* %7, align 4
  %114 = add i32 %113, 6
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = xor i32 %117, %110
  store i32 %118, i32* %116, align 4
  %119 = load i8*, i8** %5, align 8
  %120 = bitcast i8* %119 to i32*
  %121 = load i32, i32* %7, align 4
  %122 = add i32 %121, 7
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i8*, i8** %4, align 8
  %127 = bitcast i8* %126 to i32*
  %128 = load i32, i32* %7, align 4
  %129 = add i32 %128, 7
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = xor i32 %132, %125
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %13
  %135 = load i32, i32* %7, align 4
  %136 = add i32 %135, 8
  store i32 %136, i32* %7, align 4
  br label %8

137:                                              ; preds = %8
  br label %138

138:                                              ; preds = %204, %137
  %139 = load i32, i32* %7, align 4
  %140 = add i32 %139, 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ule i32 %140, %141
  br i1 %142, label %143, label %207

143:                                              ; preds = %138
  %144 = load i8*, i8** %5, align 8
  %145 = bitcast i8* %144 to i32*
  %146 = load i32, i32* %7, align 4
  %147 = add i32 %146, 0
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i8*, i8** %4, align 8
  %152 = bitcast i8* %151 to i32*
  %153 = load i32, i32* %7, align 4
  %154 = add i32 %153, 0
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = xor i32 %157, %150
  store i32 %158, i32* %156, align 4
  %159 = load i8*, i8** %5, align 8
  %160 = bitcast i8* %159 to i32*
  %161 = load i32, i32* %7, align 4
  %162 = add i32 %161, 1
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i8*, i8** %4, align 8
  %167 = bitcast i8* %166 to i32*
  %168 = load i32, i32* %7, align 4
  %169 = add i32 %168, 1
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = xor i32 %172, %165
  store i32 %173, i32* %171, align 4
  %174 = load i8*, i8** %5, align 8
  %175 = bitcast i8* %174 to i32*
  %176 = load i32, i32* %7, align 4
  %177 = add i32 %176, 2
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i8*, i8** %4, align 8
  %182 = bitcast i8* %181 to i32*
  %183 = load i32, i32* %7, align 4
  %184 = add i32 %183, 2
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = xor i32 %187, %180
  store i32 %188, i32* %186, align 4
  %189 = load i8*, i8** %5, align 8
  %190 = bitcast i8* %189 to i32*
  %191 = load i32, i32* %7, align 4
  %192 = add i32 %191, 3
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i8*, i8** %4, align 8
  %197 = bitcast i8* %196 to i32*
  %198 = load i32, i32* %7, align 4
  %199 = add i32 %198, 3
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = xor i32 %202, %195
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %143
  %205 = load i32, i32* %7, align 4
  %206 = add i32 %205, 4
  store i32 %206, i32* %7, align 4
  br label %138

207:                                              ; preds = %138
  br label %208

208:                                              ; preds = %244, %207
  %209 = load i32, i32* %7, align 4
  %210 = add i32 %209, 2
  %211 = load i32, i32* %6, align 4
  %212 = icmp ule i32 %210, %211
  br i1 %212, label %213, label %247

213:                                              ; preds = %208
  %214 = load i8*, i8** %5, align 8
  %215 = bitcast i8* %214 to i32*
  %216 = load i32, i32* %7, align 4
  %217 = add i32 %216, 0
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i8*, i8** %4, align 8
  %222 = bitcast i8* %221 to i32*
  %223 = load i32, i32* %7, align 4
  %224 = add i32 %223, 0
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = xor i32 %227, %220
  store i32 %228, i32* %226, align 4
  %229 = load i8*, i8** %5, align 8
  %230 = bitcast i8* %229 to i32*
  %231 = load i32, i32* %7, align 4
  %232 = add i32 %231, 1
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = load i8*, i8** %4, align 8
  %237 = bitcast i8* %236 to i32*
  %238 = load i32, i32* %7, align 4
  %239 = add i32 %238, 1
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = xor i32 %242, %235
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %213
  %245 = load i32, i32* %7, align 4
  %246 = add i32 %245, 2
  store i32 %246, i32* %7, align 4
  br label %208

247:                                              ; preds = %208
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* %6, align 4
  %250 = icmp ult i32 %248, %249
  br i1 %250, label %251, label %267

251:                                              ; preds = %247
  %252 = load i8*, i8** %5, align 8
  %253 = bitcast i8* %252 to i32*
  %254 = load i32, i32* %7, align 4
  %255 = add i32 %254, 0
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %253, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i8*, i8** %4, align 8
  %260 = bitcast i8* %259 to i32*
  %261 = load i32, i32* %7, align 4
  %262 = add i32 %261, 0
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %260, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = xor i32 %265, %258
  store i32 %266, i32* %264, align 4
  br label %267

267:                                              ; preds = %251, %247
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
