; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_bmp.c_bmp_read_direct.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_bmp.c_bmp_read_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [49 x i8] c"Bitfield compression isn't supported for 24-bit\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Currently no bitfield support\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"RLE is only valid for 8-bit images\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"RLE is only valid for 4-bit images\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Unsupported BMP compression format\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Data: %X\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"R: %d, G: %d, B: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_5__*, %struct.TYPE_6__*)* @bmp_read_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp_read_direct(i32 %0, i32 %1, %struct.TYPE_5__* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i16 0, i16* %18, align 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %53 [
    i32 130, label %22
    i32 133, label %23
    i32 128, label %34
    i32 129, label %43
    i32 132, label %52
    i32 131, label %52
  ]

22:                                               ; preds = %4
  br label %56

23:                                               ; preds = %4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 24
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @BMP_DEBUG(i32 %29)
  store i32 1, i32* %5, align 4
  br label %218

31:                                               ; preds = %23
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @BMP_DEBUG(i32 %32)
  store i32 1, i32* %5, align 4
  br label %218

34:                                               ; preds = %4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 8
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 @BMP_DEBUG(i32 %40)
  store i32 1, i32* %5, align 4
  br label %218

42:                                               ; preds = %34
  br label %56

43:                                               ; preds = %4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 4
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %50 = call i32 @BMP_DEBUG(i32 %49)
  store i32 1, i32* %5, align 4
  br label %218

51:                                               ; preds = %43
  br label %56

52:                                               ; preds = %4, %4
  br label %53

53:                                               ; preds = %4, %52
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %55 = call i32 @BMP_DEBUG(i32 %54)
  store i32 1, i32* %5, align 4
  br label %218

56:                                               ; preds = %51, %42, %22
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @gdTell(i32 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @gdSeek(i32 %64, i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  store i32 1, i32* %5, align 4
  br label %218

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %56
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %75, 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 %76, %79
  %81 = srem i32 %80, 4
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %72
  %85 = load i32, i32* %13, align 4
  %86 = sub nsw i32 4, %85
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %84, %72
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %214, %87
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %217

94:                                               ; preds = %88
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %12, align 4
  br label %108

101:                                              ; preds = %94
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %10, align 4
  %106 = sub nsw i32 %104, %105
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %101, %99
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %196, %108
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %199

115:                                              ; preds = %109
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 16
  br i1 %119, label %120, label %149

120:                                              ; preds = %115
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @gdGetWordLSB(i16* %18, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  store i32 1, i32* %5, align 4
  br label %218

125:                                              ; preds = %120
  %126 = load i16, i16* %18, align 2
  %127 = sext i16 %126 to i32
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %127)
  %129 = call i32 @BMP_DEBUG(i32 %128)
  %130 = load i16, i16* %18, align 2
  %131 = sext i16 %130 to i32
  %132 = and i32 %131, 31744
  %133 = ashr i32 %132, 10
  %134 = shl i32 %133, 3
  store i32 %134, i32* %15, align 4
  %135 = load i16, i16* %18, align 2
  %136 = sext i16 %135 to i32
  %137 = and i32 %136, 992
  %138 = ashr i32 %137, 5
  %139 = shl i32 %138, 3
  store i32 %139, i32* %16, align 4
  %140 = load i16, i16* %18, align 2
  %141 = sext i16 %140 to i32
  %142 = and i32 %141, 31
  %143 = shl i32 %142, 3
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %17, align 4
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %144, i32 %145, i32 %146)
  %148 = call i32 @BMP_DEBUG(i32 %147)
  br label %187

149:                                              ; preds = %115
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 24
  br i1 %153, label %154, label %168

154:                                              ; preds = %149
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @gdGetByte(i32* %17, i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %154
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @gdGetByte(i32* %16, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @gdGetByte(i32* %15, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %162, %158, %154
  store i32 1, i32* %5, align 4
  br label %218

167:                                              ; preds = %162
  br label %186

168:                                              ; preds = %149
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @gdGetByte(i32* %17, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %168
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @gdGetByte(i32* %16, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %172
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @gdGetByte(i32* %15, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @gdGetByte(i32* %14, i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %180, %176, %172, %168
  store i32 1, i32* %5, align 4
  br label %218

185:                                              ; preds = %180
  br label %186

186:                                              ; preds = %185, %167
  br label %187

187:                                              ; preds = %186, %125
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %17, align 4
  %194 = call i32 @gdTrueColor(i32 %191, i32 %192, i32 %193)
  %195 = call i32 @gdImageSetPixel(i32 %188, i32 %189, i32 %190, i32 %194)
  br label %196

196:                                              ; preds = %187
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %11, align 4
  br label %109

199:                                              ; preds = %109
  %200 = load i32, i32* %13, align 4
  store i32 %200, i32* %11, align 4
  br label %201

201:                                              ; preds = %210, %199
  %202 = load i32, i32* %11, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %201
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @gdGetByte(i32* %15, i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  store i32 1, i32* %5, align 4
  br label %218

209:                                              ; preds = %204
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %11, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %11, align 4
  br label %201

213:                                              ; preds = %201
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %10, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %10, align 4
  br label %88

217:                                              ; preds = %88
  store i32 0, i32* %5, align 4
  br label %218

218:                                              ; preds = %217, %208, %184, %166, %124, %70, %53, %48, %39, %31, %28
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local i32 @BMP_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @gdTell(i32) #1

declare dso_local i32 @gdSeek(i32, i64) #1

declare dso_local i32 @gdGetWordLSB(i16*, i32) #1

declare dso_local i32 @gdGetByte(i32*, i32) #1

declare dso_local i32 @gdImageSetPixel(i32, i32, i32, i32) #1

declare dso_local i32 @gdTrueColor(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
