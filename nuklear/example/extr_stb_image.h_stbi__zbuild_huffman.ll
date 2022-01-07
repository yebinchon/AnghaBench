; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__zbuild_huffman.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__zbuild_huffman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i64*, i8** }

@.str = private unnamed_addr constant [10 x i8] c"bad sizes\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Corrupt PNG\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"bad codelengths\00", align 1
@STBI__ZFAST_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64*, i32)* @stbi__zbuild_huffman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__zbuild_huffman(%struct.TYPE_3__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x i32], align 16
  %12 = alloca [17 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %17 = getelementptr inbounds [17 x i32], [17 x i32]* %12, i64 0, i64 0
  %18 = call i32 @memset(i32* %17, i32 0, i32 68)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @memset(i32* %21, i32 0, i32 8)
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %36, %3
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i64*, i64** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds [17 x i32], [17 x i32]* %12, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %23

39:                                               ; preds = %23
  %40 = getelementptr inbounds [17 x i32], [17 x i32]* %12, i64 0, i64 0
  store i32 0, i32* %40, align 16
  store i32 1, i32* %8, align 4
  br label %41

41:                                               ; preds = %55, %39
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 16
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [17 x i32], [17 x i32]* %12, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 1, %49
  %51 = icmp sgt i32 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = call i32 @stbi__err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %53, i32* %4, align 4
  br label %231

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %41

58:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  store i32 1, i32* %8, align 4
  br label %59

59:                                               ; preds = %126, %58
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 16
  br i1 %61, label %62, label %129

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %65
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = ptrtoint i8* %69 to i32
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %80, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [17 x i32], [17 x i32]* %12, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %87, %91
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [17 x i32], [17 x i32]* %12, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %62
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %99, 1
  %101 = load i32, i32* %8, align 4
  %102 = shl i32 1, %101
  %103 = icmp sge i32 %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 @stbi__err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 %105, i32* %4, align 4
  br label %231

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106, %62
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %8, align 4
  %110 = sub nsw i32 16, %109
  %111 = shl i32 %108, %110
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %111, i32* %117, align 4
  %118 = load i32, i32* %10, align 4
  %119 = shl i32 %118, 1
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [17 x i32], [17 x i32]* %12, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %107
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %59

129:                                              ; preds = %59
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 16
  store i32 65536, i32* %133, align 4
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %227, %129
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %230

138:                                              ; preds = %134
  %139 = load i64*, i64** %6, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %226

147:                                              ; preds = %138
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %151, %158
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %159, %166
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %13, align 4
  %169 = shl i32 %168, 9
  %170 = load i32, i32* %8, align 4
  %171 = or i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to i8*
  store i8* %173, i8** %15, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 4
  %178 = load i64*, i64** %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  store i64 %175, i64* %181, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = inttoptr i64 %183 to i8*
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 5
  %187 = load i8**, i8*** %186, align 8
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  store i8* %184, i8** %190, align 8
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* @STBI__ZFAST_BITS, align 4
  %193 = icmp sle i32 %191, %192
  br i1 %193, label %194, label %220

194:                                              ; preds = %147
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %13, align 4
  %200 = call i32 @stbi__bit_reverse(i32 %198, i32 %199)
  store i32 %200, i32* %16, align 4
  br label %201

201:                                              ; preds = %206, %194
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* @STBI__ZFAST_BITS, align 4
  %204 = shl i32 1, %203
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %206, label %219

206:                                              ; preds = %201
  %207 = load i8*, i8** %15, align 8
  %208 = ptrtoint i8* %207 to i32
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %16, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  store i32 %208, i32* %214, align 4
  %215 = load i32, i32* %13, align 4
  %216 = shl i32 1, %215
  %217 = load i32, i32* %16, align 4
  %218 = add nsw i32 %217, %216
  store i32 %218, i32* %16, align 4
  br label %201

219:                                              ; preds = %201
  br label %220

220:                                              ; preds = %219, %147
  %221 = load i32, i32* %13, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [16 x i32], [16 x i32]* %11, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %220, %138
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %8, align 4
  br label %134

230:                                              ; preds = %134
  store i32 1, i32* %4, align 4
  br label %231

231:                                              ; preds = %230, %104, %52
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @stbi__err(i8*, i8*) #1

declare dso_local i32 @stbi__bit_reverse(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
