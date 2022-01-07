; ModuleID = '/home/carl/AnghaBench/php-src/ext/calendar/extr_jewish.c_JewishToSdn.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/calendar/extr_jewish.c_JewishToSdn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HALAKIM_PER_LUNAR_CYCLE = common dso_local global i32 0, align 4
@monthsPerYear = common dso_local global i32* null, align 8
@HALAKIM_PER_DAY = common dso_local global i32 0, align 4
@JEWISH_SDN_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @JewishToSdn(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 30
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %3
  store i32 0, i32* %4, align 4
  br label %178

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %132 [
    i32 1, label %28
    i32 2, label %28
    i32 3, label %44
    i32 4, label %89
    i32 5, label %89
    i32 6, label %89
  ]

28:                                               ; preds = %26, %26
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @FindStartOfYear(i32 %29, i32* %9, i32* %10, i32* %13, i32* %14, i32* %11)
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %34, %35
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %43

38:                                               ; preds = %28
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %39, %40
  %42 = add nsw i32 %41, 29
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %38, %33
  br label %174

44:                                               ; preds = %26
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @FindStartOfYear(i32 %45, i32* %9, i32* %10, i32* %13, i32* %14, i32* %11)
  %47 = load i32, i32* @HALAKIM_PER_LUNAR_CYCLE, align 4
  %48 = load i32*, i32** @monthsPerYear, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %47, %52
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @HALAKIM_PER_DAY, align 4
  %58 = sdiv i32 %56, %57
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @HALAKIM_PER_DAY, align 4
  %63 = srem i32 %61, %62
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  %66 = srem i32 %65, 19
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @Tishri1(i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp eq i32 %73, 355
  br i1 %74, label %78, label %75

75:                                               ; preds = %44
  %76 = load i32, i32* %15, align 4
  %77 = icmp eq i32 %76, 385
  br i1 %77, label %78, label %83

78:                                               ; preds = %75, %44
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %79, %80
  %82 = add nsw i32 %81, 59
  store i32 %82, i32* %8, align 4
  br label %88

83:                                               ; preds = %75
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %84, %85
  %87 = add nsw i32 %86, 58
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %83, %78
  br label %174

89:                                               ; preds = %26, %26, %26
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  %92 = call i32 @FindStartOfYear(i32 %91, i32* %9, i32* %10, i32* %13, i32* %14, i32* %12)
  %93 = load i32*, i32** @monthsPerYear, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sub nsw i32 %94, 1
  %96 = srem i32 %95, 19
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 12
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  store i32 29, i32* %16, align 4
  br label %103

102:                                              ; preds = %89
  store i32 59, i32* %16, align 4
  br label %103

103:                                              ; preds = %102, %101
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, 4
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* %16, align 4
  %111 = sub nsw i32 %109, %110
  %112 = sub nsw i32 %111, 237
  store i32 %112, i32* %8, align 4
  br label %131

113:                                              ; preds = %103
  %114 = load i32, i32* %6, align 4
  %115 = icmp eq i32 %114, 5
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %16, align 4
  %121 = sub nsw i32 %119, %120
  %122 = sub nsw i32 %121, 208
  store i32 %122, i32* %8, align 4
  br label %130

123:                                              ; preds = %113
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* %16, align 4
  %128 = sub nsw i32 %126, %127
  %129 = sub nsw i32 %128, 178
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %123, %116
  br label %131

131:                                              ; preds = %130, %106
  br label %174

132:                                              ; preds = %26
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  %135 = call i32 @FindStartOfYear(i32 %134, i32* %9, i32* %10, i32* %13, i32* %14, i32* %12)
  %136 = load i32, i32* %6, align 4
  switch i32 %136, label %172 [
    i32 7, label %137
    i32 8, label %142
    i32 9, label %147
    i32 10, label %152
    i32 11, label %157
    i32 12, label %162
    i32 13, label %167
  ]

137:                                              ; preds = %132
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %138, %139
  %141 = sub nsw i32 %140, 207
  store i32 %141, i32* %8, align 4
  br label %173

142:                                              ; preds = %132
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %143, %144
  %146 = sub nsw i32 %145, 178
  store i32 %146, i32* %8, align 4
  br label %173

147:                                              ; preds = %132
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %148, %149
  %151 = sub nsw i32 %150, 148
  store i32 %151, i32* %8, align 4
  br label %173

152:                                              ; preds = %132
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %153, %154
  %156 = sub nsw i32 %155, 119
  store i32 %156, i32* %8, align 4
  br label %173

157:                                              ; preds = %132
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %158, %159
  %161 = sub nsw i32 %160, 89
  store i32 %161, i32* %8, align 4
  br label %173

162:                                              ; preds = %132
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %163, %164
  %166 = sub nsw i32 %165, 60
  store i32 %166, i32* %8, align 4
  br label %173

167:                                              ; preds = %132
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %168, %169
  %171 = sub nsw i32 %170, 30
  store i32 %171, i32* %8, align 4
  br label %173

172:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %178

173:                                              ; preds = %167, %162, %157, %152, %147, %142, %137
  br label %174

174:                                              ; preds = %173, %131, %88, %43
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @JEWISH_SDN_OFFSET, align 4
  %177 = add nsw i32 %175, %176
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %174, %172, %25
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @FindStartOfYear(i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @Tishri1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
