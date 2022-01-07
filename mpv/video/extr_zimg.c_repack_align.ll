; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_zimg.c_repack_align.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_zimg.c_repack_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_zimg_repack = type { i32*, i64, %struct.TYPE_6__*, %struct.TYPE_5__*, i32* }
%struct.TYPE_6__ = type { i32*, i8** }
%struct.TYPE_5__ = type { i32*, i8**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @repack_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @repack_align(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.mp_zimg_repack*
  store %struct.mp_zimg_repack* %20, %struct.mp_zimg_repack** %9, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %187, %4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %24 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %23, i32 0, i32 3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %22, %28
  br i1 %29, label %30, label %190

30:                                               ; preds = %21
  %31 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %32 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %187

40:                                               ; preds = %30
  %41 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %42 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %41, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %52 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %51, i32 0, i32 3
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %12, align 4
  %61 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %62 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %61, i32 0, i32 3
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %13, align 4
  %71 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %72 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %71, i32 0, i32 3
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = shl i32 1, %76
  %78 = load i32, i32* %13, align 4
  %79 = shl i32 1, %78
  %80 = sub nsw i32 %77, %79
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %183, %40
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %14, align 4
  %87 = add i32 %85, %86
  %88 = icmp ult i32 %84, %87
  br i1 %88, label %89, label %186

89:                                               ; preds = %83
  %90 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %91 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %90, i32 0, i32 3
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i8**, i8*** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %100 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %99, i32 0, i32 3
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %13, align 4
  %110 = ashr i32 %108, %109
  %111 = mul nsw i32 %107, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr i8, i8* %98, i64 %112
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %12, align 4
  %117 = lshr i32 %115, %116
  %118 = mul i32 %114, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr i8, i8* %113, i64 %119
  store i8* %120, i8** %16, align 8
  %121 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %122 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %121, i32 0, i32 2
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i8**, i8*** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %131 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %130, i32 0, i32 2
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %13, align 4
  %141 = ashr i32 %139, %140
  %142 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %143 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %141, %148
  %150 = mul nsw i32 %138, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr i8, i8* %129, i64 %151
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %12, align 4
  %156 = lshr i32 %154, %155
  %157 = mul i32 %153, %156
  %158 = zext i32 %157 to i64
  %159 = getelementptr i8, i8* %152, i64 %158
  store i8* %159, i8** %17, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %7, align 4
  %162 = sub i32 %160, %161
  %163 = load i32, i32* %12, align 4
  %164 = lshr i32 %162, %163
  %165 = load i32, i32* %11, align 4
  %166 = mul i32 %164, %165
  %167 = zext i32 %166 to i64
  store i64 %167, i64* %18, align 8
  %168 = load %struct.mp_zimg_repack*, %struct.mp_zimg_repack** %9, align 8
  %169 = getelementptr inbounds %struct.mp_zimg_repack, %struct.mp_zimg_repack* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %89
  %173 = load i8*, i8** %16, align 8
  %174 = load i8*, i8** %17, align 8
  %175 = load i64, i64* %18, align 8
  %176 = call i32 @memcpy(i8* %173, i8* %174, i64 %175)
  br label %182

177:                                              ; preds = %89
  %178 = load i8*, i8** %17, align 8
  %179 = load i8*, i8** %16, align 8
  %180 = load i64, i64* %18, align 8
  %181 = call i32 @memcpy(i8* %178, i8* %179, i64 %180)
  br label %182

182:                                              ; preds = %177, %172
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %15, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %15, align 4
  br label %83

186:                                              ; preds = %83
  br label %187

187:                                              ; preds = %186, %39
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %10, align 4
  br label %21

190:                                              ; preds = %21
  ret i32 0
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
