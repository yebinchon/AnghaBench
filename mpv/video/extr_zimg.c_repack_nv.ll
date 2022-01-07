; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_zimg.c_repack_nv.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_zimg.c_repack_nv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_zimg_repack = type { i32*, i32*, i32 (i32*, i8**, i32, i32)*, %struct.TYPE_6__*, %struct.TYPE_5__*, i64, i64* }
%struct.TYPE_6__ = type { i32*, i8** }
%struct.TYPE_5__ = type { i32*, i8**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @repack_nv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @repack_nv(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mp_zimg_repack*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca [2 x i8*], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.mp_zimg_repack*
  store %struct.mp_zimg_repack* %23, %struct.mp_zimg_repack** %9, align 8
  %24 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %25 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %24, i32 0, i32 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %31 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %30, i32 0, i32 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %37 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %36, i32 0, i32 6
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %138

42:                                               ; preds = %4
  %43 = load i32, i32* %11, align 4
  %44 = shl i32 1, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %134, %42
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %12, align 4
  %50 = add i32 %48, %49
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %137

52:                                               ; preds = %46
  %53 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %54 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %53, i32 0, i32 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %14, align 4
  %61 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %62 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %61, i32 0, i32 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %69 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %68, i32 0, i32 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %13, align 4
  %76 = mul i32 %74, %75
  %77 = zext i32 %76 to i64
  %78 = getelementptr i8, i8* %67, i64 %77
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %7, align 4
  %81 = mul i32 %79, %80
  %82 = zext i32 %81 to i64
  %83 = getelementptr i8, i8* %78, i64 %82
  store i8* %83, i8** %15, align 8
  %84 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %85 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %84, i32 0, i32 3
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %92 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %91, i32 0, i32 3
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %100 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %98, %103
  %105 = mul i32 %97, %104
  %106 = zext i32 %105 to i64
  %107 = getelementptr i8, i8* %90, i64 %106
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %7, align 4
  %110 = mul i32 %108, %109
  %111 = zext i32 %110 to i64
  %112 = getelementptr i8, i8* %107, i64 %111
  store i8* %112, i8** %16, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %7, align 4
  %115 = sub i32 %113, %114
  %116 = load i32, i32* %14, align 4
  %117 = mul i32 %115, %116
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %17, align 8
  %119 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %120 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %52
  %124 = load i8*, i8** %15, align 8
  %125 = load i8*, i8** %16, align 8
  %126 = load i64, i64* %17, align 8
  %127 = call i32 @memcpy(i8* %124, i8* %125, i64 %126)
  br label %133

128:                                              ; preds = %52
  %129 = load i8*, i8** %16, align 8
  %130 = load i8*, i8** %15, align 8
  %131 = load i64, i64* %17, align 8
  %132 = call i32 @memcpy(i8* %129, i8* %130, i64 %131)
  br label %133

133:                                              ; preds = %128, %123
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  br label %46

137:                                              ; preds = %46
  br label %138

138:                                              ; preds = %137, %4
  %139 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %140 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %139, i32 0, i32 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i8**, i8*** %142, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 1
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %147 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %146, i32 0, i32 4
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %11, align 4
  %155 = lshr i32 %153, %154
  %156 = mul i32 %152, %155
  %157 = zext i32 %156 to i64
  %158 = getelementptr i8, i8* %145, i64 %157
  %159 = bitcast i8* %158 to i32*
  store i32* %159, i32** %18, align 8
  store i32 0, i32* %20, align 4
  br label %160

160:                                              ; preds = %206, %138
  %161 = load i32, i32* %20, align 4
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %163, label %209

163:                                              ; preds = %160
  %164 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %165 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %20, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %21, align 4
  %171 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %172 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %171, i32 0, i32 3
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i8**, i8*** %174, align 8
  %176 = load i32, i32* %21, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %181 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %180, i32 0, i32 3
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %21, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %11, align 4
  %191 = lshr i32 %189, %190
  %192 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %193 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %21, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %191, %198
  %200 = mul i32 %188, %199
  %201 = zext i32 %200 to i64
  %202 = getelementptr i8, i8* %179, i64 %201
  %203 = load i32, i32* %20, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 %204
  store i8* %202, i8** %205, align 8
  br label %206

206:                                              ; preds = %163
  %207 = load i32, i32* %20, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %20, align 4
  br label %160

209:                                              ; preds = %160
  %210 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %211 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %210, i32 0, i32 2
  %212 = load i32 (i32*, i8**, i32, i32)*, i32 (i32*, i8**, i32, i32)** %211, align 8
  %213 = load i32*, i32** %18, align 8
  %214 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 0
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* %10, align 4
  %217 = lshr i32 %215, %216
  %218 = load i32, i32* %8, align 4
  %219 = load i32, i32* %10, align 4
  %220 = lshr i32 %218, %219
  %221 = call i32 %212(i32* %213, i8** %214, i32 %217, i32 %220)
  ret i32 0
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
