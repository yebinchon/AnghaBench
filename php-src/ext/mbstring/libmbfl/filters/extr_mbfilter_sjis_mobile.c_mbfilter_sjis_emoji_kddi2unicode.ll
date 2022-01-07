; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfilter_sjis_emoji_kddi2unicode.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfilter_sjis_emoji_kddi2unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.mbfilter_sjis_emoji_kddi2unicode.nflags_order_kddi = private unnamed_addr constant [6 x i32] [i32 3, i32 1, i32 5, i32 4, i32 0, i32 7], align 16
@mb_tbl_code2uni_kddi1_min = common dso_local global i32 0, align 4
@mb_tbl_code2uni_kddi1_max = common dso_local global i32 0, align 4
@nflags_s = common dso_local global i32** null, align 8
@mb_tbl_code2uni_kddi1 = common dso_local global i32* null, align 8
@mb_tbl_code2uni_kddi2_min = common dso_local global i32 0, align 4
@mb_tbl_code2uni_kddi2_max = common dso_local global i32 0, align 4
@mb_tbl_code2uni_kddi2 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfilter_sjis_emoji_kddi2unicode(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [6 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %5, align 4
  %10 = bitcast [6 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([6 x i32]* @__const.mbfilter_sjis_emoji_kddi2unicode.nflags_order_kddi to i8*), i64 24, i1 false)
  %11 = load i32*, i32** %4, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @mb_tbl_code2uni_kddi1_min, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %113

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @mb_tbl_code2uni_kddi1_max, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %113

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @mb_tbl_code2uni_kddi1_min, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load i32**, i32*** @nflags_s, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @NFLAGS(i32 %30)
  %32 = load i32*, i32** %4, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32**, i32*** @nflags_s, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i64 2
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @NFLAGS(i32 %37)
  store i32 %38, i32* %5, align 4
  br label %112

39:                                               ; preds = %19
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 9
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load i32**, i32*** @nflags_s, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 8
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @NFLAGS(i32 %47)
  %49 = load i32*, i32** %4, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32**, i32*** @nflags_s, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 8
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @NFLAGS(i32 %54)
  store i32 %55, i32* %5, align 4
  br label %111

56:                                               ; preds = %39
  %57 = load i32, i32* %6, align 4
  %58 = icmp sge i32 %57, 141
  br i1 %58, label %59, label %85

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = icmp sle i32 %60, 146
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %63, 141
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %7, align 4
  %68 = load i32**, i32*** @nflags_s, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @NFLAGS(i32 %74)
  %76 = load i32*, i32** %4, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32**, i32*** @nflags_s, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @NFLAGS(i32 %83)
  store i32 %84, i32* %5, align 4
  br label %110

85:                                               ; preds = %59, %56
  %86 = load i32, i32* %6, align 4
  %87 = icmp eq i32 %86, 260
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32*, i32** %4, align 8
  store i32 35, i32* %89, align 4
  store i32 8419, i32* %5, align 4
  br label %109

90:                                               ; preds = %85
  %91 = load i32*, i32** @mb_tbl_code2uni_kddi1, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp sgt i32 %96, 61440
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 65536
  store i32 %100, i32* %5, align 4
  br label %108

101:                                              ; preds = %90
  %102 = load i32, i32* %5, align 4
  %103 = icmp sgt i32 %102, 57344
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 983040
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107, %98
  br label %109

109:                                              ; preds = %108, %88
  br label %110

110:                                              ; preds = %109, %62
  br label %111

111:                                              ; preds = %110, %42
  br label %112

112:                                              ; preds = %111, %25
  br label %198

113:                                              ; preds = %15, %2
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @mb_tbl_code2uni_kddi2_min, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %197

117:                                              ; preds = %113
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* @mb_tbl_code2uni_kddi2_max, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %197

121:                                              ; preds = %117
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @mb_tbl_code2uni_kddi2_min, align 4
  %124 = sub nsw i32 %122, %123
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp eq i32 %125, 100
  br i1 %126, label %127, label %141

127:                                              ; preds = %121
  %128 = load i32**, i32*** @nflags_s, align 8
  %129 = getelementptr inbounds i32*, i32** %128, i64 6
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @NFLAGS(i32 %132)
  %134 = load i32*, i32** %4, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32**, i32*** @nflags_s, align 8
  %136 = getelementptr inbounds i32*, i32** %135, i64 6
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @NFLAGS(i32 %139)
  store i32 %140, i32* %5, align 4
  br label %196

141:                                              ; preds = %121
  %142 = load i32, i32* %6, align 4
  %143 = icmp sge i32 %142, 186
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load i32, i32* %6, align 4
  %146 = icmp sle i32 %145, 194
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i32, i32* %6, align 4
  %149 = sub nsw i32 %148, 186
  %150 = add nsw i32 %149, 49
  %151 = load i32*, i32** %4, align 8
  store i32 %150, i32* %151, align 4
  store i32 8419, i32* %5, align 4
  br label %195

152:                                              ; preds = %144, %141
  %153 = load i32, i32* %6, align 4
  %154 = icmp eq i32 %153, 267
  br i1 %154, label %155, label %169

155:                                              ; preds = %152
  %156 = load i32**, i32*** @nflags_s, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 9
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @NFLAGS(i32 %160)
  %162 = load i32*, i32** %4, align 8
  store i32 %161, i32* %162, align 4
  %163 = load i32**, i32*** @nflags_s, align 8
  %164 = getelementptr inbounds i32*, i32** %163, i64 9
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @NFLAGS(i32 %167)
  store i32 %168, i32* %5, align 4
  br label %194

169:                                              ; preds = %152
  %170 = load i32, i32* %6, align 4
  %171 = icmp eq i32 %170, 324
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = load i32*, i32** %4, align 8
  store i32 48, i32* %173, align 4
  store i32 8419, i32* %5, align 4
  br label %193

174:                                              ; preds = %169
  %175 = load i32*, i32** @mb_tbl_code2uni_kddi2, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %5, align 4
  %180 = load i32, i32* %5, align 4
  %181 = icmp sgt i32 %180, 61440
  br i1 %181, label %182, label %185

182:                                              ; preds = %174
  %183 = load i32, i32* %5, align 4
  %184 = add nsw i32 %183, 65536
  store i32 %184, i32* %5, align 4
  br label %192

185:                                              ; preds = %174
  %186 = load i32, i32* %5, align 4
  %187 = icmp sgt i32 %186, 57344
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i32, i32* %5, align 4
  %190 = add nsw i32 %189, 983040
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %188, %185
  br label %192

192:                                              ; preds = %191, %182
  br label %193

193:                                              ; preds = %192, %172
  br label %194

194:                                              ; preds = %193, %155
  br label %195

195:                                              ; preds = %194, %147
  br label %196

196:                                              ; preds = %195, %127
  br label %197

197:                                              ; preds = %196, %117, %113
  br label %198

198:                                              ; preds = %197, %112
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @NFLAGS(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
