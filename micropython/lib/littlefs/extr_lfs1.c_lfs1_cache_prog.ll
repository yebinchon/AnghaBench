; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_cache_prog.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs1.c_lfs1_cache_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64, i32 (%struct.TYPE_14__*, i32, i64, i32*, i32)* }
%struct.TYPE_13__ = type { i32, i64, i32* }

@LFS1_ERR_CORRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32, i64, i8*, i32)* @lfs1_cache_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs1_cache_prog(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2, i32 %3, i64 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i8*, i8** %14, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %16, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %24, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @LFS1_ASSERT(i32 %31)
  br label %33

33:                                               ; preds = %203, %191, %115, %7
  %34 = load i32, i32* %15, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %218

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %116

42:                                               ; preds = %36
  %43 = load i64, i64* %13, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp uge i64 %43, %46
  br i1 %47, label %48, label %116

48:                                               ; preds = %42
  %49 = load i64, i64* %13, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %52, %57
  %59 = icmp ult i64 %49, %58
  br i1 %59, label %60, label %116

60:                                               ; preds = %48
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %13, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = sub i64 %67, %70
  %72 = sub i64 %66, %71
  %73 = call i32 @lfs1_min(i32 %61, i64 %72)
  store i32 %73, i32* %17, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sub i64 %77, %80
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  %83 = load i32*, i32** %16, align 8
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @memcpy(i32* %82, i32* %83, i32 %84)
  %86 = load i32, i32* %17, align 4
  %87 = load i32*, i32** %16, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %16, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = load i64, i64* %13, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %13, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %15, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %15, align 4
  %97 = load i64, i64* %13, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = urem i64 %97, %102
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %60
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %109 = call i32 @lfs1_cache_flush(%struct.TYPE_12__* %106, %struct.TYPE_13__* %107, %struct.TYPE_13__* %108)
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %18, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* %18, align 4
  store i32 %113, i32* %8, align 4
  br label %219

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114, %60
  br label %33

116:                                              ; preds = %48, %42, %36
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %119, -1
  %121 = zext i1 %120 to i32
  %122 = call i32 @LFS1_ASSERT(i32 %121)
  %123 = load i64, i64* %13, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = urem i64 %123, %128
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %203

131:                                              ; preds = %116
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp uge i64 %133, %138
  br i1 %139, label %140, label %203

140:                                              ; preds = %131
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = urem i64 %144, %149
  %151 = sub i64 %142, %150
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %19, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 2
  %157 = load i32 (%struct.TYPE_14__*, i32, i64, i32*, i32)*, i32 (%struct.TYPE_14__*, i32, i64, i32*, i32)** %156, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = load i64, i64* %13, align 8
  %163 = load i32*, i32** %16, align 8
  %164 = load i32, i32* %19, align 4
  %165 = call i32 %157(%struct.TYPE_14__* %160, i32 %161, i64 %162, i32* %163, i32 %164)
  store i32 %165, i32* %20, align 4
  %166 = load i32, i32* %20, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %140
  %169 = load i32, i32* %20, align 4
  store i32 %169, i32* %8, align 4
  br label %219

170:                                              ; preds = %140
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %172 = icmp ne %struct.TYPE_13__* %171, null
  br i1 %172, label %173, label %191

173:                                              ; preds = %170
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %176 = load i32, i32* %12, align 4
  %177 = load i64, i64* %13, align 8
  %178 = load i32*, i32** %16, align 8
  %179 = load i32, i32* %19, align 4
  %180 = call i32 @lfs1_cache_cmp(%struct.TYPE_12__* %174, %struct.TYPE_13__* %175, i32* null, i32 %176, i64 %177, i32* %178, i32 %179)
  store i32 %180, i32* %21, align 4
  %181 = load i32, i32* %21, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %173
  %184 = load i32, i32* %21, align 4
  store i32 %184, i32* %8, align 4
  br label %219

185:                                              ; preds = %173
  %186 = load i32, i32* %21, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* @LFS1_ERR_CORRUPT, align 4
  store i32 %189, i32* %8, align 4
  br label %219

190:                                              ; preds = %185
  br label %191

191:                                              ; preds = %190, %170
  %192 = load i32, i32* %19, align 4
  %193 = load i32*, i32** %16, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32* %195, i32** %16, align 8
  %196 = load i32, i32* %19, align 4
  %197 = sext i32 %196 to i64
  %198 = load i64, i64* %13, align 8
  %199 = add i64 %198, %197
  store i64 %199, i64* %13, align 8
  %200 = load i32, i32* %19, align 4
  %201 = load i32, i32* %15, align 4
  %202 = sub nsw i32 %201, %200
  store i32 %202, i32* %15, align 4
  br label %33

203:                                              ; preds = %131, %116
  %204 = load i32, i32* %12, align 4
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load i64, i64* %13, align 8
  %208 = load i64, i64* %13, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = urem i64 %208, %213
  %215 = sub i64 %207, %214
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  store i64 %215, i64* %217, align 8
  br label %33

218:                                              ; preds = %33
  store i32 0, i32* %8, align 4
  br label %219

219:                                              ; preds = %218, %188, %183, %168, %112
  %220 = load i32, i32* %8, align 4
  ret i32 %220
}

declare dso_local i32 @LFS1_ASSERT(i32) #1

declare dso_local i32 @lfs1_min(i32, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lfs1_cache_flush(%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @lfs1_cache_cmp(%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
