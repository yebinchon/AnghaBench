; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_buffer_data_options2string.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_buffer_data_options2string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RRDR_OPTION_NONZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"nonzero\00", align 1
@RRDR_OPTION_REVERSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"flip\00", align 1
@RRDR_OPTION_JSON_WRAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"jsonwrap\00", align 1
@RRDR_OPTION_MIN2MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"min2max\00", align 1
@RRDR_OPTION_MILLISECONDS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@RRDR_OPTION_ABSOLUTE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@RRDR_OPTION_SECONDS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@RRDR_OPTION_NULL2ZERO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"null2zero\00", align 1
@RRDR_OPTION_OBJECTSROWS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"objectrows\00", align 1
@RRDR_OPTION_GOOGLE_JSON = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"google_json\00", align 1
@RRDR_OPTION_PERCENTAGE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"percentage\00", align 1
@RRDR_OPTION_NOT_ALIGNED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"unaligned\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_data_options2string(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @RRDR_OPTION_NONZERO, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @buffer_strcat(i32* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @buffer_strcat(i32* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @RRDR_OPTION_REVERSED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = icmp ne i32 %26, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @buffer_strcat(i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @buffer_strcat(i32* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %20
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @RRDR_OPTION_JSON_WRAP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @buffer_strcat(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @buffer_strcat(i32* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %35
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @RRDR_OPTION_MIN2MAX, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @buffer_strcat(i32* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @buffer_strcat(i32* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %50
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @RRDR_OPTION_MILLISECONDS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @buffer_strcat(i32* %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @buffer_strcat(i32* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %65
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @RRDR_OPTION_ABSOLUTE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  %88 = icmp ne i32 %86, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @buffer_strcat(i32* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %85
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @buffer_strcat(i32* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %80
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @RRDR_OPTION_SECONDS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  %103 = icmp ne i32 %101, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @buffer_strcat(i32* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %100
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @buffer_strcat(i32* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %95
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @RRDR_OPTION_NULL2ZERO, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  %118 = icmp ne i32 %116, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @buffer_strcat(i32* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %115
  %123 = load i32*, i32** %3, align 8
  %124 = call i32 @buffer_strcat(i32* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %110
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @RRDR_OPTION_OBJECTSROWS, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %125
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  %133 = icmp ne i32 %131, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32*, i32** %3, align 8
  %136 = call i32 @buffer_strcat(i32* %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %130
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @buffer_strcat(i32* %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %125
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* @RRDR_OPTION_GOOGLE_JSON, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %140
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  %148 = icmp ne i32 %146, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i32*, i32** %3, align 8
  %151 = call i32 @buffer_strcat(i32* %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %145
  %153 = load i32*, i32** %3, align 8
  %154 = call i32 @buffer_strcat(i32* %153, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %140
  %156 = load i32, i32* %4, align 4
  %157 = load i32, i32* @RRDR_OPTION_PERCENTAGE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %155
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  %163 = icmp ne i32 %161, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load i32*, i32** %3, align 8
  %166 = call i32 @buffer_strcat(i32* %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %160
  %168 = load i32*, i32** %3, align 8
  %169 = call i32 @buffer_strcat(i32* %168, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  br label %170

170:                                              ; preds = %167, %155
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* @RRDR_OPTION_NOT_ALIGNED, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %170
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  %178 = icmp ne i32 %176, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load i32*, i32** %3, align 8
  %181 = call i32 @buffer_strcat(i32* %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %182

182:                                              ; preds = %179, %175
  %183 = load i32*, i32** %3, align 8
  %184 = call i32 @buffer_strcat(i32* %183, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %170
  ret void
}

declare dso_local i32 @buffer_strcat(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
