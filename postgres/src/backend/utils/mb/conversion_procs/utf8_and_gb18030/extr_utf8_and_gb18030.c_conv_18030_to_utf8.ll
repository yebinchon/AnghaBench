; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/utf8_and_gb18030/extr_utf8_and_gb18030.c_conv_18030_to_utf8.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/utf8_and_gb18030/extr_utf8_and_gb18030.c_conv_18030_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @conv_18030_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conv_18030_to_utf8(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp uge i32 %4, -2127506640
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ule i32 %7, -2127125199
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 %10)
  %12 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2127506640)
  %13 = sub nsw i32 %11, %12
  %14 = add nsw i32 %13, 1106
  %15 = call i32 (i32, ...) bitcast (i32 (...)* @unicode_to_utf8word to i32 (i32, ...)*)(i32 %14)
  store i32 %15, i32* %2, align 4
  br label %173

16:                                               ; preds = %6, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp uge i32 %17, -2127058887
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = icmp ule i32 %20, -2126971592
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 %23)
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2127058887)
  %26 = sub nsw i32 %24, %25
  %27 = add nsw i32 %26, 9795
  %28 = call i32 (i32, ...) bitcast (i32 (...)* @unicode_to_utf8word to i32 (i32, ...)*)(i32 %27)
  store i32 %28, i32* %2, align 4
  br label %173

29:                                               ; preds = %19, %16
  %30 = load i32, i32* %3, align 4
  %31 = icmp uge i32 %30, -2110740941
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = icmp ule i32 %33, -2110721481
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 %36)
  %38 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2110740941)
  %39 = sub nsw i32 %37, %38
  %40 = add nsw i32 %39, 13851
  %41 = call i32 (i32, ...) bitcast (i32 (...)* @unicode_to_utf8word to i32 (i32, ...)*)(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %173

42:                                               ; preds = %32, %29
  %43 = load i32, i32* %3, align 4
  %44 = icmp uge i32 %43, -2110663624
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = icmp ule i32 %46, -2110607566
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 %49)
  %51 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2110663624)
  %52 = sub nsw i32 %50, %51
  %53 = add nsw i32 %52, 15585
  %54 = call i32 (i32, ...) bitcast (i32 (...)* @unicode_to_utf8word to i32 (i32, ...)*)(i32 %53)
  store i32 %54, i32* %2, align 4
  br label %173

55:                                               ; preds = %45, %42
  %56 = load i32, i32* %3, align 4
  %57 = icmp uge i32 %56, -2110600905
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = icmp ule i32 %59, -2110588873
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* %3, align 4
  %63 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 %62)
  %64 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2110600905)
  %65 = sub nsw i32 %63, %64
  %66 = add nsw i32 %65, 16736
  %67 = call i32 (i32, ...) bitcast (i32 (...)* @unicode_to_utf8word to i32 (i32, ...)*)(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %173

68:                                               ; preds = %58, %55
  %69 = load i32, i32* %3, align 4
  %70 = icmp uge i32 %69, -2110545095
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = icmp ule i32 %72, -2110535375
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 %75)
  %77 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2110545095)
  %78 = sub nsw i32 %76, %77
  %79 = add nsw i32 %78, 17623
  %80 = call i32 (i32, ...) bitcast (i32 (...)* @unicode_to_utf8word to i32 (i32, ...)*)(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %173

81:                                               ; preds = %71, %68
  %82 = load i32, i32* %3, align 4
  %83 = icmp uge i32 %82, -2110527432
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i32, i32* %3, align 4
  %86 = icmp ule i32 %85, -2110482888
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* %3, align 4
  %89 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 %88)
  %90 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2110527432)
  %91 = sub nsw i32 %89, %90
  %92 = add nsw i32 %91, 18318
  %93 = call i32 (i32, ...) bitcast (i32 (...)* @unicode_to_utf8word to i32 (i32, ...)*)(i32 %92)
  store i32 %93, i32* %2, align 4
  br label %173

94:                                               ; preds = %84, %81
  %95 = load i32, i32* %3, align 4
  %96 = icmp uge i32 %95, -2110480079
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load i32, i32* %3, align 4
  %99 = icmp ule i32 %98, -2110462157
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i32, i32* %3, align 4
  %102 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 %101)
  %103 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2110480079)
  %104 = sub nsw i32 %102, %103
  %105 = add nsw i32 %104, 18872
  %106 = call i32 (i32, ...) bitcast (i32 (...)* @unicode_to_utf8word to i32 (i32, ...)*)(i32 %105)
  store i32 %106, i32* %2, align 4
  br label %173

107:                                              ; preds = %97, %94
  %108 = load i32, i32* %3, align 4
  %109 = icmp uge i32 %108, -2110419149
  br i1 %109, label %110, label %120

110:                                              ; preds = %107
  %111 = load i32, i32* %3, align 4
  %112 = icmp ule i32 %111, -2093562056
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load i32, i32* %3, align 4
  %115 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 %114)
  %116 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2110419149)
  %117 = sub nsw i32 %115, %116
  %118 = add nsw i32 %117, 40870
  %119 = call i32 (i32, ...) bitcast (i32 (...)* @unicode_to_utf8word to i32 (i32, ...)*)(i32 %118)
  store i32 %119, i32* %2, align 4
  br label %173

120:                                              ; preds = %110, %107
  %121 = load i32, i32* %3, align 4
  %122 = icmp uge i32 %121, -2093559760
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load i32, i32* %3, align 4
  %125 = icmp ule i32 %124, -2077194956
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load i32, i32* %3, align 4
  %128 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 %127)
  %129 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2093559760)
  %130 = sub nsw i32 %128, %129
  %131 = add nsw i32 %130, 59493
  %132 = call i32 (i32, ...) bitcast (i32 (...)* @unicode_to_utf8word to i32 (i32, ...)*)(i32 %131)
  store i32 %132, i32* %2, align 4
  br label %173

133:                                              ; preds = %123, %120
  %134 = load i32, i32* %3, align 4
  %135 = icmp uge i32 %134, -2077189064
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = load i32, i32* %3, align 4
  %138 = icmp ule i32 %137, -2077129417
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load i32, i32* %3, align 4
  %141 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 %140)
  %142 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2077189064)
  %143 = sub nsw i32 %141, %142
  %144 = add nsw i32 %143, 64042
  %145 = call i32 (i32, ...) bitcast (i32 (...)* @unicode_to_utf8word to i32 (i32, ...)*)(i32 %144)
  store i32 %145, i32* %2, align 4
  br label %173

146:                                              ; preds = %136, %133
  %147 = load i32, i32* %3, align 4
  %148 = icmp uge i32 %147, -2077121996
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load i32, i32* %3, align 4
  %151 = icmp ule i32 %150, -2077121479
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load i32, i32* %3, align 4
  %154 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 %153)
  %155 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -2077121996)
  %156 = sub nsw i32 %154, %155
  %157 = add nsw i32 %156, 65510
  %158 = call i32 (i32, ...) bitcast (i32 (...)* @unicode_to_utf8word to i32 (i32, ...)*)(i32 %157)
  store i32 %158, i32* %2, align 4
  br label %173

159:                                              ; preds = %149, %146
  %160 = load i32, i32* %3, align 4
  %161 = icmp uge i32 %160, -1875869392
  br i1 %161, label %162, label %172

162:                                              ; preds = %159
  %163 = load i32, i32* %3, align 4
  %164 = icmp ule i32 %163, -483222987
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = load i32, i32* %3, align 4
  %167 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 %166)
  %168 = call i32 (i32, ...) bitcast (i32 (...)* @gb_linear to i32 (i32, ...)*)(i32 -1875869392)
  %169 = sub nsw i32 %167, %168
  %170 = add nsw i32 %169, 65536
  %171 = call i32 (i32, ...) bitcast (i32 (...)* @unicode_to_utf8word to i32 (i32, ...)*)(i32 %170)
  store i32 %171, i32* %2, align 4
  br label %173

172:                                              ; preds = %162, %159
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %172, %165, %152, %139, %126, %113, %100, %87, %74, %61, %48, %35, %22, %9
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @unicode_to_utf8word(...) #1

declare dso_local i32 @gb_linear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
