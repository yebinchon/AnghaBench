; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_dump.c_dump_string.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_dump.c_dump_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@JSON_ESCAPE_SLASH = common dso_local global i64 0, align 8
@JSON_ENSURE_ASCII = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\/\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"\\u%04X\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\\u%04X\\u%04X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32 (i8*, i32, i8*)*, i8*, i64)* @dump_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_string(i8* %0, i64 %1, i32 (i8*, i32, i8*)* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32 (i8*, i32, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca [13 x i8], align 1
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 (i8*, i32, i8*)* %2, i32 (i8*, i32, i8*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 %21(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %164

26:                                               ; preds = %5
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %12, align 8
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %14, align 8
  br label %31

31:                                               ; preds = %26, %158
  br label %32

32:                                               ; preds = %81, %31
  %33 = load i8*, i8** %13, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %36, label %83

36:                                               ; preds = %32
  %37 = load i8*, i8** %12, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = call i8* @utf8_iterate(i8* %37, i32 %43, i8* %15)
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  store i32 -1, i32* %6, align 4
  br label %164

48:                                               ; preds = %36
  %49 = load i8, i8* %15, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 92
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i8, i8* %15, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 34
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i8, i8* %15, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp slt i32 %58, 32
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %52, %48
  br label %83

61:                                               ; preds = %56
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @JSON_ESCAPE_SLASH, align 8
  %64 = and i64 %62, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i8, i8* %15, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 47
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %83

71:                                               ; preds = %66, %61
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @JSON_ENSURE_ASCII, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i8, i8* %15, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp sgt i32 %78, 127
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %83

81:                                               ; preds = %76, %71
  %82 = load i8*, i8** %13, align 8
  store i8* %82, i8** %12, align 8
  br label %32

83:                                               ; preds = %80, %70, %60, %32
  %84 = load i8*, i8** %12, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = icmp ne i8* %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %9, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 %88(i8* %89, i32 %95, i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  store i32 -1, i32* %6, align 4
  br label %164

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %83
  %102 = load i8*, i8** %13, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = icmp eq i8* %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %160

106:                                              ; preds = %101
  store i32 2, i32* %18, align 4
  %107 = load i8, i8* %15, align 1
  %108 = sext i8 %107 to i32
  switch i32 %108, label %117 [
    i32 92, label %109
    i32 34, label %110
    i32 8, label %111
    i32 12, label %112
    i32 10, label %113
    i32 13, label %114
    i32 9, label %115
    i32 47, label %116
  ]

109:                                              ; preds = %106
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  br label %150

110:                                              ; preds = %106
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %16, align 8
  br label %150

111:                                              ; preds = %106
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %16, align 8
  br label %150

112:                                              ; preds = %106
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %16, align 8
  br label %150

113:                                              ; preds = %106
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  br label %150

114:                                              ; preds = %106
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %16, align 8
  br label %150

115:                                              ; preds = %106
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %16, align 8
  br label %150

116:                                              ; preds = %106
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %16, align 8
  br label %150

117:                                              ; preds = %106
  %118 = load i8, i8* %15, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp slt i32 %119, 65536
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = getelementptr inbounds [13 x i8], [13 x i8]* %17, i64 0, i64 0
  %123 = load i8, i8* %15, align 1
  %124 = sext i8 %123 to i32
  %125 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %122, i32 13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %124)
  store i32 6, i32* %18, align 4
  br label %148

126:                                              ; preds = %117
  %127 = load i8, i8* %15, align 1
  %128 = sext i8 %127 to i32
  %129 = sub nsw i32 %128, 65536
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %15, align 1
  %131 = load i8, i8* %15, align 1
  %132 = sext i8 %131 to i32
  %133 = and i32 %132, 1047552
  %134 = ashr i32 %133, 10
  %135 = or i32 55296, %134
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %19, align 1
  %137 = load i8, i8* %15, align 1
  %138 = sext i8 %137 to i32
  %139 = and i32 %138, 1023
  %140 = or i32 56320, %139
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %20, align 1
  %142 = getelementptr inbounds [13 x i8], [13 x i8]* %17, i64 0, i64 0
  %143 = load i8, i8* %19, align 1
  %144 = sext i8 %143 to i32
  %145 = load i8, i8* %20, align 1
  %146 = sext i8 %145 to i32
  %147 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %142, i32 13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %144, i32 %146)
  store i32 12, i32* %18, align 4
  br label %148

148:                                              ; preds = %126, %121
  %149 = getelementptr inbounds [13 x i8], [13 x i8]* %17, i64 0, i64 0
  store i8* %149, i8** %16, align 8
  br label %150

150:                                              ; preds = %148, %116, %115, %114, %113, %112, %111, %110, %109
  %151 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %9, align 8
  %152 = load i8*, i8** %16, align 8
  %153 = load i32, i32* %18, align 4
  %154 = load i8*, i8** %10, align 8
  %155 = call i32 %151(i8* %152, i32 %153, i8* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  store i32 -1, i32* %6, align 4
  br label %164

158:                                              ; preds = %150
  %159 = load i8*, i8** %13, align 8
  store i8* %159, i8** %12, align 8
  store i8* %159, i8** %7, align 8
  br label %31

160:                                              ; preds = %105
  %161 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %9, align 8
  %162 = load i8*, i8** %10, align 8
  %163 = call i32 %161(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i8* %162)
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %160, %157, %99, %47, %25
  %165 = load i32, i32* %6, align 4
  ret i32 %165
}

declare dso_local i8* @utf8_iterate(i8*, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
