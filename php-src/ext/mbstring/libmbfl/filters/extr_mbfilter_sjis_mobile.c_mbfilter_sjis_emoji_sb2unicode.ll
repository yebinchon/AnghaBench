; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfilter_sjis_emoji_sb2unicode.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfilter_sjis_emoji_sb2unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.mbfilter_sjis_emoji_sb2unicode.nflags_order_sb = private unnamed_addr constant [10 x i32] [i32 6, i32 9, i32 3, i32 1, i32 5, i32 4, i32 2, i32 8, i32 0, i32 7], align 16
@mb_tbl_code2uni_sb1_min = common dso_local global i32 0, align 4
@mb_tbl_code2uni_sb1_max = common dso_local global i32 0, align 4
@mb_tbl_code2uni_sb1 = common dso_local global i32* null, align 8
@mb_tbl_code2uni_sb2_min = common dso_local global i32 0, align 4
@mb_tbl_code2uni_sb2_max = common dso_local global i32 0, align 4
@mb_tbl_code2uni_sb2 = common dso_local global i32* null, align 8
@mb_tbl_code2uni_sb3_min = common dso_local global i32 0, align 4
@mb_tbl_code2uni_sb3_max = common dso_local global i32 0, align 4
@nflags_s = common dso_local global i32** null, align 8
@mb_tbl_code2uni_sb3 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfilter_sjis_emoji_sb2unicode(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [10 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %5, align 4
  %10 = bitcast [10 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([10 x i32]* @__const.mbfilter_sjis_emoji_sb2unicode.nflags_order_sb to i8*), i64 40, i1 false)
  %11 = load i32*, i32** %4, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @mb_tbl_code2uni_sb1_min, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %66

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @mb_tbl_code2uni_sb1_max, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @mb_tbl_code2uni_sb1_min, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 110
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %26, 122
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = icmp sle i32 %29, 131
  br i1 %30, label %31, label %46

31:                                               ; preds = %28, %19
  %32 = load i32*, i32** @mb_tbl_code2uni_sb1, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 61440
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 65536
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %41, %31
  store i32 8419, i32* %5, align 4
  br label %65

46:                                               ; preds = %28, %25
  %47 = load i32*, i32** @mb_tbl_code2uni_sb1, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp sgt i32 %52, 61440
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 65536
  store i32 %56, i32* %5, align 4
  br label %64

57:                                               ; preds = %46
  %58 = load i32, i32* %5, align 4
  %59 = icmp sgt i32 %58, 57344
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 983040
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %54
  br label %65

65:                                               ; preds = %64, %45
  br label %158

66:                                               ; preds = %15, %2
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @mb_tbl_code2uni_sb2_min, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %66
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @mb_tbl_code2uni_sb2_max, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @mb_tbl_code2uni_sb2_min, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %6, align 4
  %78 = load i32*, i32** @mb_tbl_code2uni_sb2, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp sgt i32 %83, 61440
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 65536
  store i32 %87, i32* %5, align 4
  br label %95

88:                                               ; preds = %74
  %89 = load i32, i32* %5, align 4
  %90 = icmp sgt i32 %89, 57344
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 983040
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %85
  br label %157

96:                                               ; preds = %70, %66
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @mb_tbl_code2uni_sb3_min, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %156

100:                                              ; preds = %96
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @mb_tbl_code2uni_sb3_max, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %156

104:                                              ; preds = %100
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* @mb_tbl_code2uni_sb3_min, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp sge i32 %108, 105
  br i1 %109, label %110, label %136

110:                                              ; preds = %104
  %111 = load i32, i32* %6, align 4
  %112 = icmp sle i32 %111, 114
  br i1 %112, label %113, label %136

113:                                              ; preds = %110
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %114, 105
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [10 x i32], [10 x i32]* %8, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %7, align 4
  %119 = load i32**, i32*** @nflags_s, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @NFLAGS(i32 %125)
  %127 = load i32*, i32** %4, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32**, i32*** @nflags_s, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @NFLAGS(i32 %134)
  store i32 %135, i32* %5, align 4
  br label %155

136:                                              ; preds = %110, %104
  %137 = load i32*, i32** @mb_tbl_code2uni_sb3, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp sgt i32 %142, 61440
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 65536
  store i32 %146, i32* %5, align 4
  br label %154

147:                                              ; preds = %136
  %148 = load i32, i32* %5, align 4
  %149 = icmp sgt i32 %148, 57344
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 983040
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %150, %147
  br label %154

154:                                              ; preds = %153, %144
  br label %155

155:                                              ; preds = %154, %113
  br label %156

156:                                              ; preds = %155, %100, %96
  br label %157

157:                                              ; preds = %156, %95
  br label %158

158:                                              ; preds = %157, %65
  %159 = load i32, i32* %5, align 4
  ret i32 %159
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
