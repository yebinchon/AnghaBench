; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_utf-8.c__zip_guess_encoding.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_utf-8.c__zip_guess_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip_string = type { i32*, i64, i64 }

@ZIP_ENCODING_ASCII = common dso_local global i32 0, align 4
@ZIP_ENCODING_UNKNOWN = common dso_local global i64 0, align 8
@ZIP_ENCODING_UTF8_GUESSED = common dso_local global i32 0, align 4
@UTF_8_LEN_2_MASK = common dso_local global i32 0, align 4
@UTF_8_LEN_2_MATCH = common dso_local global i32 0, align 4
@UTF_8_LEN_3_MASK = common dso_local global i32 0, align 4
@UTF_8_LEN_3_MATCH = common dso_local global i32 0, align 4
@UTF_8_LEN_4_MASK = common dso_local global i32 0, align 4
@UTF_8_LEN_4_MATCH = common dso_local global i32 0, align 4
@ZIP_ENCODING_CP437 = common dso_local global i32 0, align 4
@UTF_8_CONTINUE_MASK = common dso_local global i32 0, align 4
@UTF_8_CONTINUE_MATCH = common dso_local global i32 0, align 4
@ZIP_ENCODING_UTF8_KNOWN = common dso_local global i32 0, align 4
@ZIP_ENCODING_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_zip_guess_encoding(%struct.zip_string* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zip_string*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.zip_string* %0, %struct.zip_string** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.zip_string*, %struct.zip_string** %4, align 8
  %12 = icmp eq %struct.zip_string* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ZIP_ENCODING_ASCII, align 4
  store i32 %14, i32* %3, align 4
  br label %179

15:                                               ; preds = %2
  %16 = load %struct.zip_string*, %struct.zip_string** %4, align 8
  %17 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load %struct.zip_string*, %struct.zip_string** %4, align 8
  %20 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZIP_ENCODING_UNKNOWN, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.zip_string*, %struct.zip_string** %4, align 8
  %26 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  br label %143

29:                                               ; preds = %15
  %30 = load i32, i32* @ZIP_ENCODING_ASCII, align 4
  store i32 %30, i32* %6, align 4
  store i64 0, i64* %8, align 8
  br label %31

31:                                               ; preds = %139, %29
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.zip_string*, %struct.zip_string** %4, align 8
  %34 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %142

37:                                               ; preds = %31
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 31
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32*, i32** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 128
  br i1 %48, label %67, label %49

49:                                               ; preds = %43, %37
  %50 = load i32*, i32** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 13
  br i1 %54, label %67, label %55

55:                                               ; preds = %49
  %56 = load i32*, i32** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load i32*, i32** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 9
  br i1 %66, label %67, label %68

67:                                               ; preds = %61, %55, %49, %43
  br label %139

68:                                               ; preds = %61
  %69 = load i32, i32* @ZIP_ENCODING_UTF8_GUESSED, align 4
  store i32 %69, i32* %6, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @UTF_8_LEN_2_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @UTF_8_LEN_2_MATCH, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i64 1, i64* %10, align 8
  br label %103

79:                                               ; preds = %68
  %80 = load i32*, i32** %7, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @UTF_8_LEN_3_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @UTF_8_LEN_3_MATCH, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  store i64 2, i64* %10, align 8
  br label %102

89:                                               ; preds = %79
  %90 = load i32*, i32** %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @UTF_8_LEN_4_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @UTF_8_LEN_4_MATCH, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  store i64 3, i64* %10, align 8
  br label %101

99:                                               ; preds = %89
  %100 = load i32, i32* @ZIP_ENCODING_CP437, align 4
  store i32 %100, i32* %6, align 4
  br label %142

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %101, %88
  br label %103

103:                                              ; preds = %102, %78
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %104, %105
  %107 = load %struct.zip_string*, %struct.zip_string** %4, align 8
  %108 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp uge i64 %106, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = load i32, i32* @ZIP_ENCODING_CP437, align 4
  store i32 %112, i32* %6, align 4
  br label %142

113:                                              ; preds = %103
  store i64 1, i64* %9, align 8
  br label %114

114:                                              ; preds = %132, %113
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %10, align 8
  %117 = icmp ule i64 %115, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %114
  %119 = load i32*, i32** %7, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %9, align 8
  %122 = add i64 %120, %121
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @UTF_8_CONTINUE_MASK, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @UTF_8_CONTINUE_MATCH, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %118
  %130 = load i32, i32* @ZIP_ENCODING_CP437, align 4
  store i32 %130, i32* %6, align 4
  br label %144

131:                                              ; preds = %118
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %9, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %9, align 8
  br label %114

135:                                              ; preds = %114
  %136 = load i64, i64* %10, align 8
  %137 = load i64, i64* %8, align 8
  %138 = add i64 %137, %136
  store i64 %138, i64* %8, align 8
  br label %139

139:                                              ; preds = %135, %67
  %140 = load i64, i64* %8, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %8, align 8
  br label %31

142:                                              ; preds = %111, %99, %31
  br label %143

143:                                              ; preds = %142, %24
  br label %144

144:                                              ; preds = %143, %129
  %145 = load i32, i32* %6, align 4
  %146 = zext i32 %145 to i64
  %147 = load %struct.zip_string*, %struct.zip_string** %4, align 8
  %148 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  %149 = load i32, i32* %5, align 4
  %150 = zext i32 %149 to i64
  %151 = load i64, i64* @ZIP_ENCODING_UNKNOWN, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %177

153:                                              ; preds = %144
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @ZIP_ENCODING_UTF8_KNOWN, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %153
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @ZIP_ENCODING_UTF8_GUESSED, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load i32, i32* @ZIP_ENCODING_UTF8_KNOWN, align 4
  store i32 %162, i32* %6, align 4
  %163 = zext i32 %162 to i64
  %164 = load %struct.zip_string*, %struct.zip_string** %4, align 8
  %165 = getelementptr inbounds %struct.zip_string, %struct.zip_string* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %161, %157, %153
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* @ZIP_ENCODING_ASCII, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* @ZIP_ENCODING_ERROR, align 4
  store i32 %175, i32* %3, align 4
  br label %179

176:                                              ; preds = %170, %166
  br label %177

177:                                              ; preds = %176, %144
  %178 = load i32, i32* %6, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %177, %174, %13
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
