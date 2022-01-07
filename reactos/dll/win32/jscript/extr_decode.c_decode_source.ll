; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_decode.c_decode_source.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_decode.c_decode_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@decode_source.decode_beginW = internal constant [4 x i8] c"#@~^", align 1
@decode_source.decode_endW = internal constant [4 x i8] c"^#~@", align 1
@JS_E_INVALID_CHAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"unescape %c\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@dictionary = common dso_local global i8** null, align 8
@pick_encoding = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Unsupported char %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"decoded %s\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decode_source(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %5, align 8
  br label %13

13:                                               ; preds = %175, %1
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %176

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @decode_source.decode_beginW, i64 0, i64 0))
  %20 = call i64 @wcsncmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @decode_source.decode_beginW, i64 0, i64 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %169, label %22

22:                                               ; preds = %17
  store i64 0, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %23 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @decode_source.decode_beginW, i64 0, i64 0))
  %24 = load i8*, i8** %4, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @decode_dword(i8* %27, i64* %6)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @JS_E_INVALID_CHAR, align 4
  store i32 %31, i32* %2, align 4
  br label %182

32:                                               ; preds = %22
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 8
  store i8* %34, i8** %4, align 8
  store i64 0, i64* %7, align 8
  br label %35

35:                                               ; preds = %136, %32
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %139

39:                                               ; preds = %35
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 64
  br i1 %45, label %46, label %96

46:                                               ; preds = %39
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  switch i32 %52, label %88 [
    i32 35, label %53
    i32 38, label %60
    i32 33, label %67
    i32 42, label %74
    i32 36, label %81
  ]

53:                                               ; preds = %46
  %54 = load i8*, i8** %5, align 8
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %8, align 8
  %57 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 13, i8* %57, align 1
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 13
  store i64 %59, i64* %10, align 8
  br label %95

60:                                               ; preds = %46
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %8, align 8
  %64 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8 10, i8* %64, align 1
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, 10
  store i64 %66, i64* %10, align 8
  br label %95

67:                                               ; preds = %46
  %68 = load i8*, i8** %5, align 8
  %69 = load i64, i64* %8, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %8, align 8
  %71 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 60, i8* %71, align 1
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, 60
  store i64 %73, i64* %10, align 8
  br label %95

74:                                               ; preds = %46
  %75 = load i8*, i8** %5, align 8
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %8, align 8
  %78 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 62, i8* %78, align 1
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %79, 62
  store i64 %80, i64* %10, align 8
  br label %95

81:                                               ; preds = %46
  %82 = load i8*, i8** %5, align 8
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %8, align 8
  %85 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 64, i8* %85, align 1
  %86 = load i64, i64* %10, align 8
  %87 = add i64 %86, 64
  store i64 %87, i64* %10, align 8
  br label %95

88:                                               ; preds = %46
  %89 = load i8*, i8** %4, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = call i32 @FIXME(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8 signext %92)
  %94 = load i32, i32* @E_FAIL, align 4
  store i32 %94, i32* %2, align 4
  br label %182

95:                                               ; preds = %81, %74, %67, %60, %53
  br label %135

96:                                               ; preds = %39
  %97 = load i8*, i8** %4, align 8
  %98 = load i64, i64* %7, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp slt i32 %101, 128
  br i1 %102, label %103, label %127

103:                                              ; preds = %96
  %104 = load i8**, i8*** @dictionary, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %104, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = load i64*, i64** @pick_encoding, align 8
  %113 = load i64, i64* %8, align 8
  %114 = urem i64 %113, 64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i8, i8* %111, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = load i8*, i8** %5, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8 %118, i8* %121, align 1
  %122 = sext i8 %118 to i64
  %123 = load i64, i64* %10, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %10, align 8
  %125 = load i64, i64* %8, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %8, align 8
  br label %134

127:                                              ; preds = %96
  %128 = load i8*, i8** %4, align 8
  %129 = load i64, i64* %7, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8 signext %131)
  %133 = load i32, i32* @E_FAIL, align 4
  store i32 %133, i32* %2, align 4
  br label %182

134:                                              ; preds = %103
  br label %135

135:                                              ; preds = %134, %95
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %7, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %7, align 8
  br label %35

139:                                              ; preds = %35
  %140 = load i64, i64* %6, align 8
  %141 = load i8*, i8** %4, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 %140
  store i8* %142, i8** %4, align 8
  %143 = load i64, i64* %8, align 8
  %144 = load i8*, i8** %5, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 %143
  store i8* %145, i8** %5, align 8
  %146 = load i8*, i8** %4, align 8
  %147 = call i32 @decode_dword(i8* %146, i64* %9)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %139
  %150 = load i64, i64* %10, align 8
  %151 = load i64, i64* %9, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %149, %139
  %154 = load i32, i32* @JS_E_INVALID_CHAR, align 4
  store i32 %154, i32* %2, align 4
  br label %182

155:                                              ; preds = %149
  %156 = load i8*, i8** %4, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 8
  store i8* %157, i8** %4, align 8
  %158 = load i8*, i8** %4, align 8
  %159 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @decode_source.decode_endW, i64 0, i64 0))
  %160 = call i64 @wcsncmp(i8* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @decode_source.decode_endW, i64 0, i64 0), i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = load i32, i32* @JS_E_INVALID_CHAR, align 4
  store i32 %163, i32* %2, align 4
  br label %182

164:                                              ; preds = %155
  %165 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @decode_source.decode_endW, i64 0, i64 0))
  %166 = load i8*, i8** %4, align 8
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  store i8* %168, i8** %4, align 8
  br label %175

169:                                              ; preds = %17
  %170 = load i8*, i8** %4, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %4, align 8
  %172 = load i8, i8* %170, align 1
  %173 = load i8*, i8** %5, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %5, align 8
  store i8 %172, i8* %173, align 1
  br label %175

175:                                              ; preds = %169, %164
  br label %13

176:                                              ; preds = %13
  %177 = load i8*, i8** %5, align 8
  store i8 0, i8* %177, align 1
  %178 = load i8*, i8** %3, align 8
  %179 = call i32 @debugstr_w(i8* %178)
  %180 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* @S_OK, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %176, %162, %153, %127, %88, %30
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i64 @wcsncmp(i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @decode_dword(i8*, i64*) #1

declare dso_local i32 @FIXME(i8*, i8 signext) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
