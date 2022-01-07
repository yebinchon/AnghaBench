; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/dxtn/extr_txc_fetch_dxtn.c_dxt135_decode_imageblock.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/dxtn/extr_txc_fetch_dxtn.c_dxt135_decode_imageblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CHAN_MAX = common dso_local global i32 0, align 4
@ACOMP = common dso_local global i64 0, align 8
@RCOMP = common dso_local global i64 0, align 8
@GCOMP = common dso_local global i64 0, align 8
@BCOMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32*)* @dxt135_decode_imageblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dxt135_decode_imageblock(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = or i32 %20, %24
  store i32 %25, i32* %12, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 8
  %33 = or i32 %28, %32
  store i32 %33, i32* %13, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 5
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = or i32 %36, %40
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 6
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 16
  %46 = or i32 %41, %45
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 7
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %49, 24
  %51 = or i32 %46, %50
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %8, align 4
  %53 = mul nsw i32 %52, 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %53, %54
  %56 = mul nsw i32 2, %55
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = ashr i32 %57, %58
  %60 = and i32 %59, 3
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* @CHAN_MAX, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i64, i64* @ACOMP, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* %16, align 4
  switch i32 %65, label %237 [
    i32 0, label %66
    i32 1, label %85
    i32 2, label %104
    i32 3, label %177
  ]

66:                                               ; preds = %5
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @EXP5TO8R(i32 %67)
  %69 = call i32 @UBYTE_TO_CHAN(i32 %68)
  %70 = load i32*, i32** %11, align 8
  %71 = load i64, i64* @RCOMP, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @EXP6TO8G(i32 %73)
  %75 = call i32 @UBYTE_TO_CHAN(i32 %74)
  %76 = load i32*, i32** %11, align 8
  %77 = load i64, i64* @GCOMP, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @EXP5TO8B(i32 %79)
  %81 = call i32 @UBYTE_TO_CHAN(i32 %80)
  %82 = load i32*, i32** %11, align 8
  %83 = load i64, i64* @BCOMP, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %81, i32* %84, align 4
  br label %238

85:                                               ; preds = %5
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @EXP5TO8R(i32 %86)
  %88 = call i32 @UBYTE_TO_CHAN(i32 %87)
  %89 = load i32*, i32** %11, align 8
  %90 = load i64, i64* @RCOMP, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %88, i32* %91, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @EXP6TO8G(i32 %92)
  %94 = call i32 @UBYTE_TO_CHAN(i32 %93)
  %95 = load i32*, i32** %11, align 8
  %96 = load i64, i64* @GCOMP, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @EXP5TO8B(i32 %98)
  %100 = call i32 @UBYTE_TO_CHAN(i32 %99)
  %101 = load i32*, i32** %11, align 8
  %102 = load i64, i64* @BCOMP, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 %100, i32* %103, align 4
  br label %238

104:                                              ; preds = %5
  %105 = load i32, i32* %9, align 4
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %13, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %145

111:                                              ; preds = %107, %104
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @EXP5TO8R(i32 %112)
  %114 = mul nsw i32 %113, 2
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @EXP5TO8R(i32 %115)
  %117 = add nsw i32 %114, %116
  %118 = sdiv i32 %117, 3
  %119 = call i32 @UBYTE_TO_CHAN(i32 %118)
  %120 = load i32*, i32** %11, align 8
  %121 = load i64, i64* @RCOMP, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @EXP6TO8G(i32 %123)
  %125 = mul nsw i32 %124, 2
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @EXP6TO8G(i32 %126)
  %128 = add nsw i32 %125, %127
  %129 = sdiv i32 %128, 3
  %130 = call i32 @UBYTE_TO_CHAN(i32 %129)
  %131 = load i32*, i32** %11, align 8
  %132 = load i64, i64* @GCOMP, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @EXP5TO8B(i32 %134)
  %136 = mul nsw i32 %135, 2
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @EXP5TO8B(i32 %137)
  %139 = add nsw i32 %136, %138
  %140 = sdiv i32 %139, 3
  %141 = call i32 @UBYTE_TO_CHAN(i32 %140)
  %142 = load i32*, i32** %11, align 8
  %143 = load i64, i64* @BCOMP, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32 %141, i32* %144, align 4
  br label %176

145:                                              ; preds = %107
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @EXP5TO8R(i32 %146)
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @EXP5TO8R(i32 %148)
  %150 = add nsw i32 %147, %149
  %151 = sdiv i32 %150, 2
  %152 = call i32 @UBYTE_TO_CHAN(i32 %151)
  %153 = load i32*, i32** %11, align 8
  %154 = load i64, i64* @RCOMP, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @EXP6TO8G(i32 %156)
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @EXP6TO8G(i32 %158)
  %160 = add nsw i32 %157, %159
  %161 = sdiv i32 %160, 2
  %162 = call i32 @UBYTE_TO_CHAN(i32 %161)
  %163 = load i32*, i32** %11, align 8
  %164 = load i64, i64* @GCOMP, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32 %162, i32* %165, align 4
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @EXP5TO8B(i32 %166)
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @EXP5TO8B(i32 %168)
  %170 = add nsw i32 %167, %169
  %171 = sdiv i32 %170, 2
  %172 = call i32 @UBYTE_TO_CHAN(i32 %171)
  %173 = load i32*, i32** %11, align 8
  %174 = load i64, i64* @BCOMP, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  store i32 %172, i32* %175, align 4
  br label %176

176:                                              ; preds = %145, %111
  br label %238

177:                                              ; preds = %5
  %178 = load i32, i32* %9, align 4
  %179 = icmp sgt i32 %178, 1
  br i1 %179, label %184, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %13, align 4
  %183 = icmp sgt i32 %181, %182
  br i1 %183, label %184, label %218

184:                                              ; preds = %180, %177
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @EXP5TO8R(i32 %185)
  %187 = load i32, i32* %13, align 4
  %188 = call i32 @EXP5TO8R(i32 %187)
  %189 = mul nsw i32 %188, 2
  %190 = add nsw i32 %186, %189
  %191 = sdiv i32 %190, 3
  %192 = call i32 @UBYTE_TO_CHAN(i32 %191)
  %193 = load i32*, i32** %11, align 8
  %194 = load i64, i64* @RCOMP, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32 %192, i32* %195, align 4
  %196 = load i32, i32* %12, align 4
  %197 = call i32 @EXP6TO8G(i32 %196)
  %198 = load i32, i32* %13, align 4
  %199 = call i32 @EXP6TO8G(i32 %198)
  %200 = mul nsw i32 %199, 2
  %201 = add nsw i32 %197, %200
  %202 = sdiv i32 %201, 3
  %203 = call i32 @UBYTE_TO_CHAN(i32 %202)
  %204 = load i32*, i32** %11, align 8
  %205 = load i64, i64* @GCOMP, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  store i32 %203, i32* %206, align 4
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @EXP5TO8B(i32 %207)
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @EXP5TO8B(i32 %209)
  %211 = mul nsw i32 %210, 2
  %212 = add nsw i32 %208, %211
  %213 = sdiv i32 %212, 3
  %214 = call i32 @UBYTE_TO_CHAN(i32 %213)
  %215 = load i32*, i32** %11, align 8
  %216 = load i64, i64* @BCOMP, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  store i32 %214, i32* %217, align 4
  br label %236

218:                                              ; preds = %180
  %219 = load i32*, i32** %11, align 8
  %220 = load i64, i64* @RCOMP, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  store i32 0, i32* %221, align 4
  %222 = load i32*, i32** %11, align 8
  %223 = load i64, i64* @GCOMP, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32 0, i32* %224, align 4
  %225 = load i32*, i32** %11, align 8
  %226 = load i64, i64* @BCOMP, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  store i32 0, i32* %227, align 4
  %228 = load i32, i32* %9, align 4
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %230, label %235

230:                                              ; preds = %218
  %231 = call i32 @UBYTE_TO_CHAN(i32 0)
  %232 = load i32*, i32** %11, align 8
  %233 = load i64, i64* @ACOMP, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32 %231, i32* %234, align 4
  br label %235

235:                                              ; preds = %230, %218
  br label %236

236:                                              ; preds = %235, %184
  br label %238

237:                                              ; preds = %5
  br label %238

238:                                              ; preds = %237, %236, %176, %85, %66
  ret void
}

declare dso_local i32 @UBYTE_TO_CHAN(i32) #1

declare dso_local i32 @EXP5TO8R(i32) #1

declare dso_local i32 @EXP6TO8G(i32) #1

declare dso_local i32 @EXP5TO8B(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
