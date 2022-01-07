; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf8.c_mbfl_filt_conv_utf8_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf8.c_mbfl_filt_conv_utf8_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 (i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_utf8_wchar(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  br label %7

7:                                                ; preds = %230, %202, %151, %100, %2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 255
  switch i32 %11, label %238 [
    i32 0, label %12
    i32 16, label %73
    i32 33, label %73
    i32 50, label %73
    i32 32, label %108
    i32 48, label %159
    i32 49, label %210
  ]

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 128
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load i32 (i32, i32)*, i32 (i32, i32)** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %18(i32 %19, i32 %22)
  %24 = call i32 @CK(i32 %23)
  br label %72

25:                                               ; preds = %12
  %26 = load i32, i32* %3, align 4
  %27 = icmp sge i32 %26, 194
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = icmp sle i32 %29, 223
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 16, i32* %33, align 8
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %71

38:                                               ; preds = %28, %25
  %39 = load i32, i32* %3, align 4
  %40 = icmp sge i32 %39, 224
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = icmp sle i32 %42, 239
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 32, i32* %46, align 8
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 15
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %70

51:                                               ; preds = %41, %38
  %52 = load i32, i32* %3, align 4
  %53 = icmp sge i32 %52, 240
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, i32* %3, align 4
  %56 = icmp sle i32 %55, 244
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 48, i32* %59, align 8
  %60 = load i32, i32* %3, align 4
  %61 = and i32 %60, 7
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %69

64:                                               ; preds = %54, %51
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = call i32 @mbfl_filt_put_invalid_char(i32 %65, %struct.TYPE_4__* %66)
  %68 = call i32 @CK(i32 %67)
  br label %69

69:                                               ; preds = %64, %57
  br label %70

70:                                               ; preds = %69, %44
  br label %71

71:                                               ; preds = %70, %31
  br label %72

72:                                               ; preds = %71, %15
  br label %241

73:                                               ; preds = %7, %7, %7
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* %3, align 4
  %77 = icmp sge i32 %76, 128
  br i1 %77, label %78, label %100

78:                                               ; preds = %73
  %79 = load i32, i32* %3, align 4
  %80 = icmp sle i32 %79, 191
  br i1 %80, label %81, label %100

81:                                               ; preds = %78
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 6
  %86 = load i32, i32* %3, align 4
  %87 = and i32 %86, 63
  %88 = or i32 %85, %87
  store i32 %88, i32* %5, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i32 (i32, i32)*, i32 (i32, i32)** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %93(i32 %94, i32 %97)
  %99 = call i32 @CK(i32 %98)
  br label %107

100:                                              ; preds = %78, %73
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %105 = call i32 @mbfl_filt_put_invalid_char(i32 %103, %struct.TYPE_4__* %104)
  %106 = call i32 @CK(i32 %105)
  br label %7

107:                                              ; preds = %81
  br label %241

108:                                              ; preds = %7
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 6
  %113 = load i32, i32* %3, align 4
  %114 = and i32 %113, 63
  %115 = or i32 %112, %114
  store i32 %115, i32* %5, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 15
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %3, align 4
  %121 = icmp sge i32 %120, 128
  br i1 %121, label %122, label %151

122:                                              ; preds = %108
  %123 = load i32, i32* %3, align 4
  %124 = icmp sle i32 %123, 191
  br i1 %124, label %125, label %151

125:                                              ; preds = %122
  %126 = load i32, i32* %6, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* %3, align 4
  %130 = icmp sge i32 %129, 160
  br i1 %130, label %143, label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %132, 13
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* %3, align 4
  %136 = icmp slt i32 %135, 160
  br i1 %136, label %143, label %137

137:                                              ; preds = %134, %131
  %138 = load i32, i32* %6, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %137
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 13
  br i1 %142, label %143, label %151

143:                                              ; preds = %140, %134, %128
  %144 = load i32, i32* %5, align 4
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  br label %158

151:                                              ; preds = %140, %137, %122, %108
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %156 = call i32 @mbfl_filt_put_invalid_char(i32 %154, %struct.TYPE_4__* %155)
  %157 = call i32 @CK(i32 %156)
  br label %7

158:                                              ; preds = %143
  br label %241

159:                                              ; preds = %7
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = shl i32 %162, 6
  %164 = load i32, i32* %3, align 4
  %165 = and i32 %164, 63
  %166 = or i32 %163, %165
  store i32 %166, i32* %5, align 4
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 7
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %3, align 4
  %172 = icmp sge i32 %171, 128
  br i1 %172, label %173, label %202

173:                                              ; preds = %159
  %174 = load i32, i32* %3, align 4
  %175 = icmp sle i32 %174, 191
  br i1 %175, label %176, label %202

176:                                              ; preds = %173
  %177 = load i32, i32* %6, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32, i32* %3, align 4
  %181 = icmp sge i32 %180, 144
  br i1 %181, label %194, label %182

182:                                              ; preds = %179, %176
  %183 = load i32, i32* %6, align 4
  %184 = icmp eq i32 %183, 4
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i32, i32* %3, align 4
  %187 = icmp slt i32 %186, 144
  br i1 %187, label %194, label %188

188:                                              ; preds = %185, %182
  %189 = load i32, i32* %6, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %202

191:                                              ; preds = %188
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 4
  br i1 %193, label %194, label %202

194:                                              ; preds = %191, %185, %179
  %195 = load i32, i32* %5, align 4
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 8
  br label %209

202:                                              ; preds = %191, %188, %173, %159
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %207 = call i32 @mbfl_filt_put_invalid_char(i32 %205, %struct.TYPE_4__* %206)
  %208 = call i32 @CK(i32 %207)
  br label %7

209:                                              ; preds = %194
  br label %241

210:                                              ; preds = %7
  %211 = load i32, i32* %3, align 4
  %212 = icmp sge i32 %211, 128
  br i1 %212, label %213, label %230

213:                                              ; preds = %210
  %214 = load i32, i32* %3, align 4
  %215 = icmp sle i32 %214, 191
  br i1 %215, label %216, label %230

216:                                              ; preds = %213
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = shl i32 %219, 6
  %221 = load i32, i32* %3, align 4
  %222 = and i32 %221, 63
  %223 = or i32 %220, %222
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 4
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 8
  br label %237

230:                                              ; preds = %213, %210
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %235 = call i32 @mbfl_filt_put_invalid_char(i32 %233, %struct.TYPE_4__* %234)
  %236 = call i32 @CK(i32 %235)
  br label %7

237:                                              ; preds = %216
  br label %241

238:                                              ; preds = %7
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  store i32 0, i32* %240, align 8
  br label %241

241:                                              ; preds = %238, %237, %209, %158, %107, %72
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_put_invalid_char(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
