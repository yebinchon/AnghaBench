; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__matchpair.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_truetype.h_stbtt__matchpair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i32, i32)* @stbtt__matchpair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbtt__matchpair(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  %30 = call i32 @ttUSHORT(i8* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  %37 = call i32 @ttUSHORT(i8* %36)
  %38 = add nsw i32 %31, %37
  store i32 %38, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %230, %6
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %233

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 6
  %46 = load i32, i32* %14, align 4
  %47 = mul nsw i32 12, %46
  %48 = add nsw i32 %45, %47
  store i32 %48, i32* %17, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = getelementptr inbounds i8, i8* %52, i64 6
  %54 = call i32 @ttUSHORT(i8* %53)
  store i32 %54, i32* %18, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %229

58:                                               ; preds = %43
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = call i32 @ttUSHORT(i8* %63)
  store i32 %64, i32* %19, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = call i32 @ttUSHORT(i8* %69)
  store i32 %70, i32* %20, align 4
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = getelementptr inbounds i8, i8* %74, i64 4
  %76 = call i32 @ttUSHORT(i8* %75)
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* %19, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %58
  %80 = load i32, i32* %19, align 4
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %20, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %91, label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %19, align 4
  %87 = icmp eq i32 %86, 3
  br i1 %87, label %88, label %228

88:                                               ; preds = %85
  %89 = load i32, i32* %20, align 4
  %90 = icmp eq i32 %89, 10
  br i1 %90, label %91, label %228

91:                                               ; preds = %88, %82, %58
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = getelementptr inbounds i8, i8* %95, i64 8
  %97 = call i32 @ttUSHORT(i8* %96)
  store i32 %97, i32* %22, align 4
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = getelementptr inbounds i8, i8* %101, i64 10
  %103 = call i32 @ttUSHORT(i8* %102)
  store i32 %103, i32* %23, align 4
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i8*, i8** %8, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i32, i32* %23, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i32, i32* %22, align 4
  %114 = call i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(i8* %104, i32 %105, i8* %112, i32 %113)
  store i32 %114, i32* %24, align 4
  %115 = load i32, i32* %24, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %227

117:                                              ; preds = %91
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32, i32* %15, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %220

122:                                              ; preds = %117
  %123 = load i8*, i8** %8, align 8
  %124 = load i32, i32* %17, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = getelementptr inbounds i8, i8* %126, i64 12
  %128 = getelementptr inbounds i8, i8* %127, i64 6
  %129 = call i32 @ttUSHORT(i8* %128)
  %130 = load i32, i32* %13, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %220

132:                                              ; preds = %122
  %133 = load i8*, i8** %8, align 8
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = getelementptr inbounds i8, i8* %136, i64 12
  %138 = call i32 @ttUSHORT(i8* %137)
  %139 = load i32, i32* %19, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %220

141:                                              ; preds = %132
  %142 = load i8*, i8** %8, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = getelementptr inbounds i8, i8* %145, i64 12
  %147 = getelementptr inbounds i8, i8* %146, i64 2
  %148 = call i32 @ttUSHORT(i8* %147)
  %149 = load i32, i32* %20, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %220

151:                                              ; preds = %141
  %152 = load i8*, i8** %8, align 8
  %153 = load i32, i32* %17, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = getelementptr inbounds i8, i8* %155, i64 12
  %157 = getelementptr inbounds i8, i8* %156, i64 4
  %158 = call i32 @ttUSHORT(i8* %157)
  %159 = load i32, i32* %21, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %220

161:                                              ; preds = %151
  %162 = load i8*, i8** %8, align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %162, i64 %164
  %166 = getelementptr inbounds i8, i8* %165, i64 12
  %167 = getelementptr inbounds i8, i8* %166, i64 8
  %168 = call i32 @ttUSHORT(i8* %167)
  store i32 %168, i32* %22, align 4
  %169 = load i8*, i8** %8, align 8
  %170 = load i32, i32* %17, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = getelementptr inbounds i8, i8* %172, i64 12
  %174 = getelementptr inbounds i8, i8* %173, i64 10
  %175 = call i32 @ttUSHORT(i8* %174)
  store i32 %175, i32* %23, align 4
  %176 = load i32, i32* %22, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %161
  %179 = load i32, i32* %24, align 4
  %180 = load i32, i32* %11, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  store i32 1, i32* %7, align 4
  br label %234

183:                                              ; preds = %178
  br label %219

184:                                              ; preds = %161
  %185 = load i32, i32* %24, align 4
  %186 = load i32, i32* %11, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %218

188:                                              ; preds = %184
  %189 = load i8*, i8** %10, align 8
  %190 = load i32, i32* %24, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 32
  br i1 %195, label %196, label %218

196:                                              ; preds = %188
  %197 = load i32, i32* %24, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %24, align 4
  %199 = load i8*, i8** %10, align 8
  %200 = load i32, i32* %24, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %24, align 4
  %205 = sub nsw i32 %203, %204
  %206 = load i8*, i8** %8, align 8
  %207 = load i32, i32* %16, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i32, i32* %23, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  %213 = load i32, i32* %22, align 4
  %214 = call i64 @stbtt_CompareUTF8toUTF16_bigendian(i8* %202, i32 %205, i8* %212, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %196
  store i32 1, i32* %7, align 4
  br label %234

217:                                              ; preds = %196
  br label %218

218:                                              ; preds = %217, %188, %184
  br label %219

219:                                              ; preds = %218, %183
  br label %226

220:                                              ; preds = %151, %141, %132, %122, %117
  %221 = load i32, i32* %24, align 4
  %222 = load i32, i32* %11, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  store i32 1, i32* %7, align 4
  br label %234

225:                                              ; preds = %220
  br label %226

226:                                              ; preds = %225, %219
  br label %227

227:                                              ; preds = %226, %91
  br label %228

228:                                              ; preds = %227, %88, %85
  br label %229

229:                                              ; preds = %228, %43
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %14, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %14, align 4
  br label %39

233:                                              ; preds = %39
  store i32 0, i32* %7, align 4
  br label %234

234:                                              ; preds = %233, %224, %216, %182
  %235 = load i32, i32* %7, align 4
  ret i32 %235
}

declare dso_local i32 @ttUSHORT(i8*) #1

declare dso_local i32 @stbtt__CompareUTF8toUTF16_bigendian_prefix(i8*, i32, i8*, i32) #1

declare dso_local i64 @stbtt_CompareUTF8toUTF16_bigendian(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
