; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__CompareUTF8toUTF16_bigendian_prefix.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__CompareUTF8toUTF16_bigendian_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i32*, i64)* @stbtt__CompareUTF8toUTF16_bigendian_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stbtt__CompareUTF8toUTF16_bigendian_prefix(i32* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %204, %4
  %15 = load i64, i64* %9, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %209

17:                                               ; preds = %14
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 256
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 128
  br i1 %27, label %28, label %43

28:                                               ; preds = %17
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i64 -1, i64* %5, align 8
  br label %211

33:                                               ; preds = %28
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %10, align 8
  %37 = getelementptr inbounds i32, i32* %34, i64 %35
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i64 -1, i64* %5, align 8
  br label %211

42:                                               ; preds = %33
  br label %204

43:                                               ; preds = %17
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 2048
  br i1 %45, label %46, label %75

46:                                               ; preds = %43
  %47 = load i64, i64* %10, align 8
  %48 = add nsw i64 %47, 1
  %49 = load i64, i64* %7, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i64 -1, i64* %5, align 8
  br label %211

52:                                               ; preds = %46
  %53 = load i32*, i32** %6, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %10, align 8
  %56 = getelementptr inbounds i32, i32* %53, i64 %54
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = ashr i32 %58, 6
  %60 = add nsw i32 192, %59
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i64 -1, i64* %5, align 8
  br label %211

63:                                               ; preds = %52
  %64 = load i32*, i32** %6, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %10, align 8
  %67 = getelementptr inbounds i32, i32* %64, i64 %65
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, 63
  %71 = add nsw i32 128, %70
  %72 = icmp ne i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  store i64 -1, i64* %5, align 8
  br label %211

74:                                               ; preds = %63
  br label %203

75:                                               ; preds = %43
  %76 = load i32, i32* %11, align 4
  %77 = icmp sge i32 %76, 55296
  br i1 %77, label %78, label %153

78:                                               ; preds = %75
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %79, 56320
  br i1 %80, label %81, label %153

81:                                               ; preds = %78
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %84, 256
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %85, %88
  store i32 %89, i32* %13, align 4
  %90 = load i64, i64* %10, align 8
  %91 = add nsw i64 %90, 3
  %92 = load i64, i64* %7, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  store i64 -1, i64* %5, align 8
  br label %211

95:                                               ; preds = %81
  %96 = load i32, i32* %11, align 4
  %97 = sub nsw i32 %96, 55296
  %98 = shl i32 %97, 10
  %99 = load i32, i32* %13, align 4
  %100 = sub nsw i32 %99, 56320
  %101 = add nsw i32 %98, %100
  %102 = add nsw i32 %101, 65536
  store i32 %102, i32* %12, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = load i64, i64* %10, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %10, align 8
  %106 = getelementptr inbounds i32, i32* %103, i64 %104
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %12, align 4
  %109 = ashr i32 %108, 18
  %110 = add nsw i32 240, %109
  %111 = icmp ne i32 %107, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %95
  store i64 -1, i64* %5, align 8
  br label %211

113:                                              ; preds = %95
  %114 = load i32*, i32** %6, align 8
  %115 = load i64, i64* %10, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %10, align 8
  %117 = getelementptr inbounds i32, i32* %114, i64 %115
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %12, align 4
  %120 = ashr i32 %119, 12
  %121 = and i32 %120, 63
  %122 = add nsw i32 128, %121
  %123 = icmp ne i32 %118, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  store i64 -1, i64* %5, align 8
  br label %211

125:                                              ; preds = %113
  %126 = load i32*, i32** %6, align 8
  %127 = load i64, i64* %10, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %10, align 8
  %129 = getelementptr inbounds i32, i32* %126, i64 %127
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %12, align 4
  %132 = ashr i32 %131, 6
  %133 = and i32 %132, 63
  %134 = add nsw i32 128, %133
  %135 = icmp ne i32 %130, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  store i64 -1, i64* %5, align 8
  br label %211

137:                                              ; preds = %125
  %138 = load i32*, i32** %6, align 8
  %139 = load i64, i64* %10, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %10, align 8
  %141 = getelementptr inbounds i32, i32* %138, i64 %139
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %12, align 4
  %144 = and i32 %143, 63
  %145 = add nsw i32 128, %144
  %146 = icmp ne i32 %142, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %137
  store i64 -1, i64* %5, align 8
  br label %211

148:                                              ; preds = %137
  %149 = load i32*, i32** %8, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  store i32* %150, i32** %8, align 8
  %151 = load i64, i64* %9, align 8
  %152 = sub nsw i64 %151, 2
  store i64 %152, i64* %9, align 8
  br label %202

153:                                              ; preds = %78, %75
  %154 = load i32, i32* %11, align 4
  %155 = icmp sge i32 %154, 56320
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* %11, align 4
  %158 = icmp slt i32 %157, 57344
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i64 -1, i64* %5, align 8
  br label %211

160:                                              ; preds = %156, %153
  %161 = load i64, i64* %10, align 8
  %162 = add nsw i64 %161, 2
  %163 = load i64, i64* %7, align 8
  %164 = icmp sge i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i64 -1, i64* %5, align 8
  br label %211

166:                                              ; preds = %160
  %167 = load i32*, i32** %6, align 8
  %168 = load i64, i64* %10, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %10, align 8
  %170 = getelementptr inbounds i32, i32* %167, i64 %168
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %11, align 4
  %173 = ashr i32 %172, 12
  %174 = add nsw i32 224, %173
  %175 = icmp ne i32 %171, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %166
  store i64 -1, i64* %5, align 8
  br label %211

177:                                              ; preds = %166
  %178 = load i32*, i32** %6, align 8
  %179 = load i64, i64* %10, align 8
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %10, align 8
  %181 = getelementptr inbounds i32, i32* %178, i64 %179
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %11, align 4
  %184 = ashr i32 %183, 6
  %185 = and i32 %184, 63
  %186 = add nsw i32 128, %185
  %187 = icmp ne i32 %182, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %177
  store i64 -1, i64* %5, align 8
  br label %211

189:                                              ; preds = %177
  %190 = load i32*, i32** %6, align 8
  %191 = load i64, i64* %10, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %10, align 8
  %193 = getelementptr inbounds i32, i32* %190, i64 %191
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %11, align 4
  %196 = and i32 %195, 63
  %197 = add nsw i32 128, %196
  %198 = icmp ne i32 %194, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %189
  store i64 -1, i64* %5, align 8
  br label %211

200:                                              ; preds = %189
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201, %148
  br label %203

203:                                              ; preds = %202, %74
  br label %204

204:                                              ; preds = %203, %42
  %205 = load i32*, i32** %8, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  store i32* %206, i32** %8, align 8
  %207 = load i64, i64* %9, align 8
  %208 = sub nsw i64 %207, 2
  store i64 %208, i64* %9, align 8
  br label %14

209:                                              ; preds = %14
  %210 = load i64, i64* %10, align 8
  store i64 %210, i64* %5, align 8
  br label %211

211:                                              ; preds = %209, %199, %188, %176, %165, %159, %147, %136, %124, %112, %94, %73, %62, %51, %41, %32
  %212 = load i64, i64* %5, align 8
  ret i64 %212
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
