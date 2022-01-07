; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/simple/extr_x86.c_x86_code.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/lzma/liblzma/simple/extr_x86.c_x86_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@x86_code.MASK_TO_ALLOWED_STATUS = internal constant [8 x i32] [i32 1, i32 1, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0], align 16
@x86_code.MASK_TO_BIT_NUMBER = internal constant [8 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32, i32, i32*, i64)* @x86_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @x86_code(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i64, i64* %11, align 8
  %29 = icmp ult i64 %28, 5
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %227

31:                                               ; preds = %5
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %13, align 4
  %34 = sub nsw i32 %32, %33
  %35 = icmp sgt i32 %34, 5
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %37, 5
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i64, i64* %11, align 8
  %41 = sub i64 %40, 5
  store i64 %41, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %42

42:                                               ; preds = %218, %56, %39
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %14, align 8
  %45 = icmp ule i64 %43, %44
  br i1 %45, label %46, label %219

46:                                               ; preds = %42
  %47 = load i32*, i32** %10, align 8
  %48 = load i64, i64* %15, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 232
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32, i32* %16, align 4
  %55 = icmp ne i32 %54, 233
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, i64* %15, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %15, align 8
  br label %42

59:                                               ; preds = %53, %46
  %60 = load i32, i32* %8, align 4
  %61 = load i64, i64* %15, align 8
  %62 = trunc i64 %61 to i32
  %63 = add nsw i32 %60, %62
  %64 = load i32, i32* %13, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i64, i64* %15, align 8
  %68 = trunc i64 %67 to i32
  %69 = add nsw i32 %66, %68
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp sgt i32 %70, 5
  br i1 %71, label %72, label %73

72:                                               ; preds = %59
  store i32 0, i32* %12, align 4
  br label %87

73:                                               ; preds = %59
  store i32 0, i32* %18, align 4
  br label %74

74:                                               ; preds = %83, %73
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32, i32* %12, align 4
  %80 = and i32 %79, 119
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = shl i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %18, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %18, align 4
  br label %74

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %72
  %88 = load i32*, i32** %10, align 8
  %89 = load i64, i64* %15, align 8
  %90 = add i64 %89, 4
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = call i64 @Test86MSByte(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %206

96:                                               ; preds = %87
  %97 = load i32, i32* %12, align 4
  %98 = ashr i32 %97, 1
  %99 = and i32 %98, 7
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* @x86_code.MASK_TO_ALLOWED_STATUS, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %206

104:                                              ; preds = %96
  %105 = load i32, i32* %12, align 4
  %106 = ashr i32 %105, 1
  %107 = icmp slt i32 %106, 16
  br i1 %107, label %108, label %206

108:                                              ; preds = %104
  %109 = load i32, i32* %16, align 4
  %110 = shl i32 %109, 24
  %111 = load i32*, i32** %10, align 8
  %112 = load i64, i64* %15, align 8
  %113 = add i64 %112, 3
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 16
  %117 = or i32 %110, %116
  %118 = load i32*, i32** %10, align 8
  %119 = load i64, i64* %15, align 8
  %120 = add i64 %119, 2
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 8
  %124 = or i32 %117, %123
  %125 = load i32*, i32** %10, align 8
  %126 = load i64, i64* %15, align 8
  %127 = add i64 %126, 1
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %124, %129
  store i32 %130, i32* %19, align 4
  br label %131

131:                                              ; preds = %108, %169
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %131
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i64, i64* %15, align 8
  %138 = trunc i64 %137 to i32
  %139 = add nsw i32 %136, %138
  %140 = add nsw i32 %139, 5
  %141 = add nsw i32 %135, %140
  store i32 %141, i32* %20, align 4
  br label %150

142:                                              ; preds = %131
  %143 = load i32, i32* %19, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i64, i64* %15, align 8
  %146 = trunc i64 %145 to i32
  %147 = add nsw i32 %144, %146
  %148 = add nsw i32 %147, 5
  %149 = sub nsw i32 %143, %148
  store i32 %149, i32* %20, align 4
  br label %150

150:                                              ; preds = %142, %134
  %151 = load i32, i32* %12, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %177

154:                                              ; preds = %150
  %155 = load i32, i32* %12, align 4
  %156 = ashr i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [8 x i32], [8 x i32]* @x86_code.MASK_TO_BIT_NUMBER, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %21, align 4
  %160 = load i32, i32* %20, align 4
  %161 = load i32, i32* %21, align 4
  %162 = mul nsw i32 %161, 8
  %163 = sub nsw i32 24, %162
  %164 = ashr i32 %160, %163
  store i32 %164, i32* %16, align 4
  %165 = load i32, i32* %16, align 4
  %166 = call i64 @Test86MSByte(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %154
  br label %177

169:                                              ; preds = %154
  %170 = load i32, i32* %20, align 4
  %171 = load i32, i32* %21, align 4
  %172 = mul nsw i32 %171, 8
  %173 = sub nsw i32 32, %172
  %174 = shl i32 1, %173
  %175 = sub nsw i32 %174, 1
  %176 = xor i32 %170, %175
  store i32 %176, i32* %19, align 4
  br label %131

177:                                              ; preds = %168, %153
  %178 = load i32, i32* %20, align 4
  %179 = ashr i32 %178, 24
  %180 = and i32 %179, 1
  %181 = sub nsw i32 %180, 1
  %182 = xor i32 %181, -1
  %183 = load i32*, i32** %10, align 8
  %184 = load i64, i64* %15, align 8
  %185 = add i64 %184, 4
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %182, i32* %186, align 4
  %187 = load i32, i32* %20, align 4
  %188 = ashr i32 %187, 16
  %189 = load i32*, i32** %10, align 8
  %190 = load i64, i64* %15, align 8
  %191 = add i64 %190, 3
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %188, i32* %192, align 4
  %193 = load i32, i32* %20, align 4
  %194 = ashr i32 %193, 8
  %195 = load i32*, i32** %10, align 8
  %196 = load i64, i64* %15, align 8
  %197 = add i64 %196, 2
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %194, i32* %198, align 4
  %199 = load i32, i32* %20, align 4
  %200 = load i32*, i32** %10, align 8
  %201 = load i64, i64* %15, align 8
  %202 = add i64 %201, 1
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %199, i32* %203, align 4
  %204 = load i64, i64* %15, align 8
  %205 = add i64 %204, 5
  store i64 %205, i64* %15, align 8
  store i32 0, i32* %12, align 4
  br label %218

206:                                              ; preds = %104, %96, %87
  %207 = load i64, i64* %15, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %15, align 8
  %209 = load i32, i32* %12, align 4
  %210 = or i32 %209, 1
  store i32 %210, i32* %12, align 4
  %211 = load i32, i32* %16, align 4
  %212 = call i64 @Test86MSByte(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %206
  %215 = load i32, i32* %12, align 4
  %216 = or i32 %215, 16
  store i32 %216, i32* %12, align 4
  br label %217

217:                                              ; preds = %214, %206
  br label %218

218:                                              ; preds = %217, %177
  br label %42

219:                                              ; preds = %42
  %220 = load i32, i32* %12, align 4
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 4
  %223 = load i32, i32* %13, align 4
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  %226 = load i64, i64* %15, align 8
  store i64 %226, i64* %6, align 8
  br label %227

227:                                              ; preds = %219, %30
  %228 = load i64, i64* %6, align 8
  ret i64 %228
}

declare dso_local i64 @Test86MSByte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
