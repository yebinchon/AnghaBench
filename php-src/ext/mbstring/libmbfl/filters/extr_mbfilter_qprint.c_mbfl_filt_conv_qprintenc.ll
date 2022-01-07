; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_qprint.c_mbfl_filt_conv_qprintenc.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_qprint.c_mbfl_filt_conv_qprintenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_QPRINT_STS_MIME_HEADER = common dso_local global i32 0, align 4
@mbfl_charprop_table = common dso_local global i32* null, align 8
@MBFL_CHP_MMHQENC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_qprintenc(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 255
  switch i32 %10, label %19 [
    i32 0, label %11
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  br label %239

19:                                               ; preds = %2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 65280
  %30 = ashr i32 %29, 8
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %19
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32 (i32, i32)*, i32 (i32, i32)** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %36(i32 %37, i32 %40)
  %42 = call i32 @CK(i32 %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, -65281
  store i32 %46, i32* %44, align 8
  br label %239

47:                                               ; preds = %19
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MBFL_QPRINT_STS_MIME_HEADER, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %90

54:                                               ; preds = %47
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 13
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 10
  br i1 %62, label %63, label %84

63:                                               ; preds = %60, %54
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i32 (i32, i32)*, i32 (i32, i32)** %65, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 %66(i32 13, i32 %69)
  %71 = call i32 @CK(i32 %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i32 (i32, i32)*, i32 (i32, i32)** %73, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 %74(i32 10, i32 %77)
  %79 = call i32 @CK(i32 %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, -65281
  store i32 %83, i32* %81, align 8
  br label %239

84:                                               ; preds = %60, %57
  %85 = load i32, i32* %5, align 4
  %86 = icmp eq i32 %85, 13
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %239

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89, %47
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @MBFL_QPRINT_STS_MIME_HEADER, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %129

97:                                               ; preds = %90
  %98 = load i32, i32* %6, align 4
  %99 = icmp sge i32 %98, 72
  br i1 %99, label %100, label %129

100:                                              ; preds = %97
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i32 (i32, i32)*, i32 (i32, i32)** %102, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 %103(i32 61, i32 %106)
  %108 = call i32 @CK(i32 %107)
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i32 (i32, i32)*, i32 (i32, i32)** %110, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 %111(i32 13, i32 %114)
  %116 = call i32 @CK(i32 %115)
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  %119 = load i32 (i32, i32)*, i32 (i32, i32)** %118, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 %119(i32 10, i32 %122)
  %124 = call i32 @CK(i32 %123)
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, -65281
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %100, %97, %90
  %130 = load i32, i32* %5, align 4
  %131 = icmp sle i32 %130, 0
  br i1 %131, label %154, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %5, align 4
  %134 = icmp sge i32 %133, 128
  br i1 %134, label %154, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %5, align 4
  %137 = icmp eq i32 %136, 61
  br i1 %137, label %154, label %138

138:                                              ; preds = %135
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @MBFL_QPRINT_STS_MIME_HEADER, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %216

145:                                              ; preds = %138
  %146 = load i32*, i32** @mbfl_charprop_table, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @MBFL_CHP_MMHQENC, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %216

154:                                              ; preds = %145, %135, %132, %129
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 3
  %157 = load i32 (i32, i32)*, i32 (i32, i32)** %156, align 8
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 %157(i32 61, i32 %160)
  %162 = call i32 @CK(i32 %161)
  %163 = load i32, i32* %5, align 4
  %164 = ashr i32 %163, 4
  %165 = and i32 %164, 15
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp slt i32 %166, 10
  br i1 %167, label %168, label %171

168:                                              ; preds = %154
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 48
  store i32 %170, i32* %6, align 4
  br label %174

171:                                              ; preds = %154
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, 55
  store i32 %173, i32* %6, align 4
  br label %174

174:                                              ; preds = %171, %168
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 3
  %177 = load i32 (i32, i32)*, i32 (i32, i32)** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i32 %177(i32 %178, i32 %181)
  %183 = call i32 @CK(i32 %182)
  %184 = load i32, i32* %5, align 4
  %185 = and i32 %184, 15
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp slt i32 %186, 10
  br i1 %187, label %188, label %191

188:                                              ; preds = %174
  %189 = load i32, i32* %6, align 4
  %190 = add nsw i32 %189, 48
  store i32 %190, i32* %6, align 4
  br label %194

191:                                              ; preds = %174
  %192 = load i32, i32* %6, align 4
  %193 = add nsw i32 %192, 55
  store i32 %193, i32* %6, align 4
  br label %194

194:                                              ; preds = %191, %188
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 3
  %197 = load i32 (i32, i32)*, i32 (i32, i32)** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = call i32 %197(i32 %198, i32 %201)
  %203 = call i32 @CK(i32 %202)
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @MBFL_QPRINT_STS_MIME_HEADER, align 4
  %208 = and i32 %206, %207
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %194
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, 768
  store i32 %214, i32* %212, align 8
  br label %215

215:                                              ; preds = %210, %194
  br label %238

216:                                              ; preds = %145, %138
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 3
  %219 = load i32 (i32, i32)*, i32 (i32, i32)** %218, align 8
  %220 = load i32, i32* %5, align 4
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 %219(i32 %220, i32 %223)
  %225 = call i32 @CK(i32 %224)
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @MBFL_QPRINT_STS_MIME_HEADER, align 4
  %230 = and i32 %228, %229
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %216
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = add nsw i32 %235, 256
  store i32 %236, i32* %234, align 8
  br label %237

237:                                              ; preds = %232, %216
  br label %238

238:                                              ; preds = %237, %215
  br label %239

239:                                              ; preds = %238, %87, %63, %33, %11
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
