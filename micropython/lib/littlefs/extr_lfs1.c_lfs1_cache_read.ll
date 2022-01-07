; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_cache_read.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_cache_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i64, i32 (%struct.TYPE_10__*, i64, i64, i32*, i64)* }
%struct.TYPE_9__ = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_9__*, i64, i64, i8*, i64)* @lfs1_cache_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs1_cache_read(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, %struct.TYPE_9__* %2, i64 %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %16, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %24, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @LFS1_ASSERT(i32 %31)
  br label %33

33:                                               ; preds = %253, %201, %122, %63, %7
  %34 = load i64, i64* %15, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %254

36:                                               ; preds = %33
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %98

39:                                               ; preds = %36
  %40 = load i64, i64* %12, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %98

45:                                               ; preds = %39
  %46 = load i64, i64* %13, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %46, %49
  br i1 %50, label %51, label %98

51:                                               ; preds = %45
  %52 = load i64, i64* %13, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %55, %60
  %62 = icmp slt i64 %52, %61
  br i1 %62, label %63, label %98

63:                                               ; preds = %51
  %64 = load i64, i64* %15, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = sub nsw i64 %69, %74
  %76 = call i64 @lfs1_min(i64 %64, i64 %75)
  store i64 %76, i64* %17, align 8
  %77 = load i32*, i32** %16, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = getelementptr inbounds i32, i32* %80, i64 %85
  %87 = load i64, i64* %17, align 8
  %88 = call i32 @memcpy(i32* %77, i32* %86, i64 %87)
  %89 = load i64, i64* %17, align 8
  %90 = load i32*, i32** %16, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 %89
  store i32* %91, i32** %16, align 8
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %13, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %13, align 8
  %95 = load i64, i64* %17, align 8
  %96 = load i64, i64* %15, align 8
  %97 = sub nsw i64 %96, %95
  store i64 %97, i64* %15, align 8
  br label %33

98:                                               ; preds = %51, %45, %39, %36
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %157

104:                                              ; preds = %98
  %105 = load i64, i64* %13, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp sge i64 %105, %108
  br i1 %109, label %110, label %157

110:                                              ; preds = %104
  %111 = load i64, i64* %13, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %114, %119
  %121 = icmp slt i64 %111, %120
  br i1 %121, label %122, label %157

122:                                              ; preds = %110
  %123 = load i64, i64* %15, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %13, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = sub nsw i64 %129, %132
  %134 = sub nsw i64 %128, %133
  %135 = call i64 @lfs1_min(i64 %123, i64 %134)
  store i64 %135, i64* %18, align 8
  %136 = load i32*, i32** %16, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* %13, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %140, %143
  %145 = getelementptr inbounds i32, i32* %139, i64 %144
  %146 = load i64, i64* %18, align 8
  %147 = call i32 @memcpy(i32* %136, i32* %145, i64 %146)
  %148 = load i64, i64* %18, align 8
  %149 = load i32*, i32** %16, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 %148
  store i32* %150, i32** %16, align 8
  %151 = load i64, i64* %18, align 8
  %152 = load i64, i64* %13, align 8
  %153 = add nsw i64 %152, %151
  store i64 %153, i64* %13, align 8
  %154 = load i64, i64* %18, align 8
  %155 = load i64, i64* %15, align 8
  %156 = sub nsw i64 %155, %154
  store i64 %156, i64* %15, align 8
  br label %33

157:                                              ; preds = %110, %104, %98
  %158 = load i64, i64* %13, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = srem i64 %158, %163
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %211

166:                                              ; preds = %157
  %167 = load i64, i64* %15, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp sge i64 %167, %172
  br i1 %173, label %174, label %211

174:                                              ; preds = %166
  %175 = load i64, i64* %15, align 8
  %176 = load i64, i64* %15, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = srem i64 %176, %181
  %183 = sub nsw i64 %175, %182
  store i64 %183, i64* %19, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 3
  %188 = load i32 (%struct.TYPE_10__*, i64, i64, i32*, i64)*, i32 (%struct.TYPE_10__*, i64, i64, i32*, i64)** %187, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = load i64, i64* %12, align 8
  %193 = load i64, i64* %13, align 8
  %194 = load i32*, i32** %16, align 8
  %195 = load i64, i64* %19, align 8
  %196 = call i32 %188(%struct.TYPE_10__* %191, i64 %192, i64 %193, i32* %194, i64 %195)
  store i32 %196, i32* %20, align 4
  %197 = load i32, i32* %20, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %174
  %200 = load i32, i32* %20, align 4
  store i32 %200, i32* %8, align 4
  br label %255

201:                                              ; preds = %174
  %202 = load i64, i64* %19, align 8
  %203 = load i32*, i32** %16, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 %202
  store i32* %204, i32** %16, align 8
  %205 = load i64, i64* %19, align 8
  %206 = load i64, i64* %13, align 8
  %207 = add nsw i64 %206, %205
  store i64 %207, i64* %13, align 8
  %208 = load i64, i64* %19, align 8
  %209 = load i64, i64* %15, align 8
  %210 = sub nsw i64 %209, %208
  store i64 %210, i64* %15, align 8
  br label %33

211:                                              ; preds = %166, %157
  %212 = load i64, i64* %12, align 8
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  store i64 %212, i64* %214, align 8
  %215 = load i64, i64* %13, align 8
  %216 = load i64, i64* %13, align 8
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = srem i64 %216, %221
  %223 = sub nsw i64 %215, %222
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 1
  store i64 %223, i64* %225, align 8
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 3
  %230 = load i32 (%struct.TYPE_10__*, i64, i64, i32*, i64)*, i32 (%struct.TYPE_10__*, i64, i64, i32*, i64)** %229, align 8
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = call i32 %230(%struct.TYPE_10__* %233, i64 %236, i64 %239, i32* %242, i64 %247)
  store i32 %248, i32* %21, align 4
  %249 = load i32, i32* %21, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %211
  %252 = load i32, i32* %21, align 4
  store i32 %252, i32* %8, align 4
  br label %255

253:                                              ; preds = %211
  br label %33

254:                                              ; preds = %33
  store i32 0, i32* %8, align 4
  br label %255

255:                                              ; preds = %254, %251, %199
  %256 = load i32, i32* %8, align 4
  ret i32 %256
}

declare dso_local i32 @LFS1_ASSERT(i32) #1

declare dso_local i64 @lfs1_min(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
