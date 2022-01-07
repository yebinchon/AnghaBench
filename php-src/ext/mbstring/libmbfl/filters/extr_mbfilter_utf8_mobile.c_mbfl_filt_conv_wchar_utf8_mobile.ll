; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf8_mobile.c_mbfl_filt_conv_wchar_utf8_mobile.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf8_mobile.c_mbfl_filt_conv_wchar_utf8_mobile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32 (i32, i32)*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@mbfl_no_encoding_utf8_docomo = common dso_local global i64 0, align 8
@mbfl_docomo2uni_pua = common dso_local global i32 0, align 4
@mbfl_no_encoding_utf8_kddi_a = common dso_local global i64 0, align 8
@mbfl_kddi2uni_pua = common dso_local global i32 0, align 4
@mbfl_no_encoding_utf8_kddi_b = common dso_local global i64 0, align 8
@mbfl_kddi2uni_pua_b = common dso_local global i32 0, align 4
@mbfl_no_encoding_utf8_sb = common dso_local global i64 0, align 8
@mbfl_sb2uni_pua = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_utf8_mobile(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %229

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 1114112
  br i1 %12, label %13, label %229

13:                                               ; preds = %10
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @mbfl_no_encoding_utf8_docomo, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = call i64 @mbfilter_unicode2sjis_emoji_docomo(i32 %22, i32* %6, %struct.TYPE_9__* %23)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @mbfl_docomo2uni_pua, align 4
  %29 = call i64 @mbfilter_conv_map_tbl(i32 %27, i32* %7, i32 %28, i32 4)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %85, label %31

31:                                               ; preds = %26, %21, %13
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @mbfl_no_encoding_utf8_kddi_a, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = call i64 @mbfilter_unicode2sjis_emoji_kddi(i32 %40, i32* %6, %struct.TYPE_9__* %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @mbfl_kddi2uni_pua, align 4
  %47 = call i64 @mbfilter_conv_map_tbl(i32 %45, i32* %7, i32 %46, i32 7)
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %85, label %49

49:                                               ; preds = %44, %39, %31
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @mbfl_no_encoding_utf8_kddi_b, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = call i64 @mbfilter_unicode2sjis_emoji_kddi(i32 %58, i32* %6, %struct.TYPE_9__* %59)
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @mbfl_kddi2uni_pua_b, align 4
  %65 = call i64 @mbfilter_conv_map_tbl(i32 %63, i32* %7, i32 %64, i32 8)
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %62, %57, %49
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @mbfl_no_encoding_utf8_sb, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %67
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = call i64 @mbfilter_unicode2sjis_emoji_sb(i32 %76, i32* %6, %struct.TYPE_9__* %77)
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @mbfl_sb2uni_pua, align 4
  %83 = call i64 @mbfilter_conv_map_tbl(i32 %81, i32* %7, i32 %82, i32 6)
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80, %62, %44, %26
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %80, %75, %67
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %3, align 4
  br label %236

99:                                               ; preds = %92, %87
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %100, 128
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = load i32 (i32, i32)*, i32 (i32, i32)** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 %105(i32 %106, i32 %109)
  %111 = call i32 @CK(i32 %110)
  br label %228

112:                                              ; preds = %99
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %113, 2048
  br i1 %114, label %115, label %139

115:                                              ; preds = %112
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 3
  %118 = load i32 (i32, i32)*, i32 (i32, i32)** %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = ashr i32 %119, 6
  %121 = and i32 %120, 31
  %122 = or i32 %121, 192
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 %118(i32 %122, i32 %125)
  %127 = call i32 @CK(i32 %126)
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 3
  %130 = load i32 (i32, i32)*, i32 (i32, i32)** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = and i32 %131, 63
  %133 = or i32 %132, 128
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 %130(i32 %133, i32 %136)
  %138 = call i32 @CK(i32 %137)
  br label %227

139:                                              ; preds = %112
  %140 = load i32, i32* %4, align 4
  %141 = icmp slt i32 %140, 65536
  br i1 %141, label %142, label %178

142:                                              ; preds = %139
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 3
  %145 = load i32 (i32, i32)*, i32 (i32, i32)** %144, align 8
  %146 = load i32, i32* %4, align 4
  %147 = ashr i32 %146, 12
  %148 = and i32 %147, 15
  %149 = or i32 %148, 224
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 %145(i32 %149, i32 %152)
  %154 = call i32 @CK(i32 %153)
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 3
  %157 = load i32 (i32, i32)*, i32 (i32, i32)** %156, align 8
  %158 = load i32, i32* %4, align 4
  %159 = ashr i32 %158, 6
  %160 = and i32 %159, 63
  %161 = or i32 %160, 128
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 %157(i32 %161, i32 %164)
  %166 = call i32 @CK(i32 %165)
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 3
  %169 = load i32 (i32, i32)*, i32 (i32, i32)** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = and i32 %170, 63
  %172 = or i32 %171, 128
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 %169(i32 %172, i32 %175)
  %177 = call i32 @CK(i32 %176)
  br label %226

178:                                              ; preds = %139
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 3
  %181 = load i32 (i32, i32)*, i32 (i32, i32)** %180, align 8
  %182 = load i32, i32* %4, align 4
  %183 = ashr i32 %182, 18
  %184 = and i32 %183, 7
  %185 = or i32 %184, 240
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i32 %181(i32 %185, i32 %188)
  %190 = call i32 @CK(i32 %189)
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 3
  %193 = load i32 (i32, i32)*, i32 (i32, i32)** %192, align 8
  %194 = load i32, i32* %4, align 4
  %195 = ashr i32 %194, 12
  %196 = and i32 %195, 63
  %197 = or i32 %196, 128
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 %193(i32 %197, i32 %200)
  %202 = call i32 @CK(i32 %201)
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 3
  %205 = load i32 (i32, i32)*, i32 (i32, i32)** %204, align 8
  %206 = load i32, i32* %4, align 4
  %207 = ashr i32 %206, 6
  %208 = and i32 %207, 63
  %209 = or i32 %208, 128
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 %205(i32 %209, i32 %212)
  %214 = call i32 @CK(i32 %213)
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 3
  %217 = load i32 (i32, i32)*, i32 (i32, i32)** %216, align 8
  %218 = load i32, i32* %4, align 4
  %219 = and i32 %218, 63
  %220 = or i32 %219, 128
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 %217(i32 %220, i32 %223)
  %225 = call i32 @CK(i32 %224)
  br label %226

226:                                              ; preds = %178, %142
  br label %227

227:                                              ; preds = %226, %115
  br label %228

228:                                              ; preds = %227, %102
  br label %234

229:                                              ; preds = %10, %2
  %230 = load i32, i32* %4, align 4
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %232 = call i32 @mbfl_filt_conv_illegal_output(i32 %230, %struct.TYPE_9__* %231)
  %233 = call i32 @CK(i32 %232)
  br label %234

234:                                              ; preds = %229, %228
  %235 = load i32, i32* %4, align 4
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %234, %97
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i64 @mbfilter_unicode2sjis_emoji_docomo(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @mbfilter_conv_map_tbl(i32, i32*, i32, i32) #1

declare dso_local i64 @mbfilter_unicode2sjis_emoji_kddi(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @mbfilter_unicode2sjis_emoji_sb(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
