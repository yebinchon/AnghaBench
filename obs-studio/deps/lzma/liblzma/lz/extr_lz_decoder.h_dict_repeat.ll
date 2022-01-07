; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lz/extr_lz_decoder.h_dict_repeat.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/lz/extr_lz_decoder.h_dict_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i64*)* @dict_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dict_repeat(%struct.TYPE_4__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub i64 %13, %16
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @my_min(i64 %18, i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %24, %22
  store i64 %25, i64* %23, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %45, %29
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @dict_get(%struct.TYPE_4__* %31, i64 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  store i32 %33, i32* %40, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %30
  %46 = load i64, i64* %8, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %8, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %30, label %49

49:                                               ; preds = %45
  br label %174

50:                                               ; preds = %3
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %50
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i64, i64* %5, align 8
  %72 = sub i64 0, %71
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = getelementptr inbounds i32, i32* %73, i64 -1
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @memcpy(i32* %63, i32* %74, i64 %75)
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, %77
  store i64 %81, i64* %79, align 8
  br label %173

82:                                               ; preds = %50
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %85, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %5, align 8
  %96 = sub i64 %94, %95
  %97 = sub i64 %96, 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 %97, %101
  store i64 %102, i64* %9, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %9, align 8
  %108 = sub nsw i64 %106, %107
  store i64 %108, i64* %10, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* %8, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %152

112:                                              ; preds = %82
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %9, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @memmove(i32* %119, i32* %124, i64 %125)
  %127 = load i64, i64* %10, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, %127
  store i64 %131, i64* %129, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* %10, align 8
  %134 = sub nsw i64 %132, %133
  store i64 %134, i64* %10, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 4
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* %10, align 8
  %146 = call i32 @memcpy(i32* %141, i32* %144, i64 %145)
  %147 = load i64, i64* %10, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, %147
  store i64 %151, i64* %149, align 8
  br label %172

152:                                              ; preds = %82
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 4
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* %9, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i64, i64* %8, align 8
  %166 = call i32 @memmove(i32* %159, i32* %164, i64 %165)
  %167 = load i64, i64* %8, align 8
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = add i64 %170, %167
  store i64 %171, i64* %169, align 8
  br label %172

172:                                              ; preds = %152, %112
  br label %173

173:                                              ; preds = %172, %56
  br label %174

174:                                              ; preds = %173, %49
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ult i64 %178, %181
  br i1 %182, label %183, label %190

183:                                              ; preds = %174
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i32
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  br label %190

190:                                              ; preds = %183, %174
  %191 = load i64*, i64** %6, align 8
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  %194 = zext i1 %193 to i32
  %195 = call i32 @unlikely(i32 %194)
  ret i32 %195
}

declare dso_local i64 @my_min(i64, i64) #1

declare dso_local i32 @dict_get(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
