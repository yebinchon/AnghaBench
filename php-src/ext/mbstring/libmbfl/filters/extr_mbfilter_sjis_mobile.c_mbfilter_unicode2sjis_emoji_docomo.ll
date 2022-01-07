; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfilter_unicode2sjis_emoji_docomo.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfilter_unicode2sjis_emoji_docomo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@mb_tbl_uni_docomo2code2_min = common dso_local global i32 0, align 4
@mb_tbl_uni_docomo2code2_max = common dso_local global i32 0, align 4
@mb_tbl_uni_docomo2code2_key = common dso_local global i32 0, align 4
@mb_tbl_uni_docomo2code2_len = common dso_local global i32 0, align 4
@mb_tbl_uni_docomo2code2_value = common dso_local global i32* null, align 8
@mb_tbl_uni_docomo2code3_min = common dso_local global i32 0, align 4
@mb_tbl_uni_docomo2code3_max = common dso_local global i32 0, align 4
@mb_tbl_uni_docomo2code3_key = common dso_local global i32 0, align 4
@mb_tbl_uni_docomo2code3_len = common dso_local global i32 0, align 4
@mb_tbl_uni_docomo2code3_value = common dso_local global i32* null, align 8
@mb_tbl_uni_docomo2code5_min = common dso_local global i32 0, align 4
@mb_tbl_uni_docomo2code5_max = common dso_local global i32 0, align 4
@mb_tbl_uni_docomo2code5_key = common dso_local global i32 0, align 4
@mb_tbl_uni_docomo2code5_len = common dso_local global i32 0, align 4
@mb_tbl_uni_docomo2code5_val = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfilter_unicode2sjis_emoji_docomo(i32 %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %60

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 8419
  br i1 %24, label %25, label %49

25:                                               ; preds = %15
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 35
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  store i32 10596, i32* %29, align 4
  store i32 1, i32* %9, align 4
  br label %48

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 48
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32*, i32** %6, align 8
  store i32 10607, i32* %34, align 4
  store i32 1, i32* %9, align 4
  br label %47

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = icmp sge i32 %36, 49
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = icmp sle i32 %39, 57
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %42, 49
  %44 = add nsw i32 10598, %43
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %41, %38, %35
  br label %47

47:                                               ; preds = %46, %33
  br label %48

48:                                               ; preds = %47, %28
  br label %59

49:                                               ; preds = %15
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32 (i32, i32)*, i32 (i32, i32)** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %52(i32 %53, i32 %56)
  %58 = call i32 @CK(i32 %57)
  br label %59

59:                                               ; preds = %49, %48
  br label %163

60:                                               ; preds = %3
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 35
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = icmp sge i32 %64, 48
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = icmp sle i32 %67, 57
  br i1 %68, label %69, label %77

69:                                               ; preds = %66, %60
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32*, i32** %6, align 8
  store i32 -1, i32* %75, align 4
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %4, align 4
  br label %165

77:                                               ; preds = %66, %63
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 169
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32*, i32** %6, align 8
  store i32 10677, i32* %81, align 4
  store i32 1, i32* %9, align 4
  br label %162

82:                                               ; preds = %77
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %83, 174
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32*, i32** %6, align 8
  store i32 10682, i32* %86, align 4
  store i32 1, i32* %9, align 4
  br label %161

87:                                               ; preds = %82
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @mb_tbl_uni_docomo2code2_min, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %87
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @mb_tbl_uni_docomo2code2_max, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @mb_tbl_uni_docomo2code2_key, align 4
  %98 = load i32, i32* @mb_tbl_uni_docomo2code2_len, align 4
  %99 = call i32 @mbfl_bisec_srch2(i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %95
  %103 = load i32*, i32** @mb_tbl_uni_docomo2code2_value, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %6, align 8
  store i32 %107, i32* %108, align 4
  store i32 1, i32* %9, align 4
  br label %109

109:                                              ; preds = %102, %95
  br label %160

110:                                              ; preds = %91, %87
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @mb_tbl_uni_docomo2code3_min, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %134

114:                                              ; preds = %110
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @mb_tbl_uni_docomo2code3_max, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %134

118:                                              ; preds = %114
  %119 = load i32, i32* %5, align 4
  %120 = sub nsw i32 %119, 65536
  %121 = load i32, i32* @mb_tbl_uni_docomo2code3_key, align 4
  %122 = load i32, i32* @mb_tbl_uni_docomo2code3_len, align 4
  %123 = call i32 @mbfl_bisec_srch2(i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %118
  %127 = load i32*, i32** @mb_tbl_uni_docomo2code3_value, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %6, align 8
  store i32 %131, i32* %132, align 4
  store i32 1, i32* %9, align 4
  br label %133

133:                                              ; preds = %126, %118
  br label %159

134:                                              ; preds = %114, %110
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @mb_tbl_uni_docomo2code5_min, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %158

138:                                              ; preds = %134
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @mb_tbl_uni_docomo2code5_max, align 4
  %141 = icmp sle i32 %139, %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %138
  %143 = load i32, i32* %5, align 4
  %144 = sub nsw i32 %143, 983040
  %145 = load i32, i32* @mb_tbl_uni_docomo2code5_key, align 4
  %146 = load i32, i32* @mb_tbl_uni_docomo2code5_len, align 4
  %147 = call i32 @mbfl_bisec_srch2(i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp sge i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %142
  %151 = load i32*, i32** @mb_tbl_uni_docomo2code5_val, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %6, align 8
  store i32 %155, i32* %156, align 4
  store i32 1, i32* %9, align 4
  br label %157

157:                                              ; preds = %150, %142
  br label %158

158:                                              ; preds = %157, %138, %134
  br label %159

159:                                              ; preds = %158, %133
  br label %160

160:                                              ; preds = %159, %109
  br label %161

161:                                              ; preds = %160, %85
  br label %162

162:                                              ; preds = %161, %80
  br label %163

163:                                              ; preds = %162, %59
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %163, %69
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_bisec_srch2(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
