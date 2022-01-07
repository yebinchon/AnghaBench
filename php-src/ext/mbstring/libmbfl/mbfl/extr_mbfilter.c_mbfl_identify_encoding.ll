; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_identify_encoding.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_identify_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i8* }
%struct.TYPE_8__ = type { i32*, i64, i64, i32 (i8, %struct.TYPE_8__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mbfl_identify_encoding(%struct.TYPE_7__* %0, i32** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @mbfl_calloc(i32 %18, i32 32)
  %20 = inttoptr i64 %19 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %15, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %22 = icmp eq %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %196

24:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  %25 = load i32**, i32*** %7, align 8
  %26 = icmp ne i32** %25, null
  br i1 %26, label %27, label %52

27:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %48, %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %35
  %37 = load i32**, i32*** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @mbfl_identify_filter_init2(%struct.TYPE_8__* %36, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %44, %32
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %28

51:                                               ; preds = %28
  br label %52

52:                                               ; preds = %51, %24
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %13, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %114

61:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %108, %61
  %63 = load i64, i64* %13, align 8
  %64 = icmp ugt i64 %63, 0
  br i1 %64, label %65, label %113

65:                                               ; preds = %62
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %96, %65
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %99

70:                                               ; preds = %66
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i64 %73
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %16, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %95, label %79

79:                                               ; preds = %70
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = load i32 (i8, %struct.TYPE_8__*)*, i32 (i8, %struct.TYPE_8__*)** %81, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = load i8, i8* %83, align 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %86 = call i32 %82(i8 zeroext %84, %struct.TYPE_8__* %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %91, %79
  br label %95

95:                                               ; preds = %94, %70
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %66

99:                                               ; preds = %66
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %100, 1
  %102 = load i32, i32* %12, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  br label %113

108:                                              ; preds = %104, %99
  %109 = load i8*, i8** %14, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %14, align 8
  %111 = load i64, i64* %13, align 8
  %112 = add i64 %111, -1
  store i64 %112, i64* %13, align 8
  br label %62

113:                                              ; preds = %107, %62
  br label %114

114:                                              ; preds = %113, %52
  store i32* null, i32** %17, align 8
  store i32 0, i32* %10, align 4
  br label %115

115:                                              ; preds = %142, %114
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %145

119:                                              ; preds = %115
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %122
  store %struct.TYPE_8__* %123, %struct.TYPE_8__** %16, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %141, label %128

128:                                              ; preds = %119
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %142

137:                                              ; preds = %131, %128
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  store i32* %140, i32** %17, align 8
  br label %145

141:                                              ; preds = %119
  br label %142

142:                                              ; preds = %141, %136
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  br label %115

145:                                              ; preds = %137, %115
  %146 = load i32*, i32** %17, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %179, label %148

148:                                              ; preds = %145
  store i32 0, i32* %10, align 4
  br label %149

149:                                              ; preds = %175, %148
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %178

153:                                              ; preds = %149
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %156
  store %struct.TYPE_8__* %157, %struct.TYPE_8__** %16, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %174, label %162

162:                                              ; preds = %153
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %165, %162
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  store i32* %173, i32** %17, align 8
  br label %178

174:                                              ; preds = %165, %153
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %10, align 4
  br label %149

178:                                              ; preds = %170, %149
  br label %179

179:                                              ; preds = %178, %145
  %180 = load i32, i32* %11, align 4
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %185, %179
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %10, align 4
  %184 = icmp sge i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i64 %188
  %190 = call i32 @mbfl_identify_filter_cleanup(%struct.TYPE_8__* %189)
  br label %181

191:                                              ; preds = %181
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %193 = bitcast %struct.TYPE_8__* %192 to i8*
  %194 = call i32 @mbfl_free(i8* %193)
  %195 = load i32*, i32** %17, align 8
  store i32* %195, i32** %5, align 8
  br label %196

196:                                              ; preds = %191, %23
  %197 = load i32*, i32** %5, align 8
  ret i32* %197
}

declare dso_local i64 @mbfl_calloc(i32, i32) #1

declare dso_local i32 @mbfl_identify_filter_init2(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @mbfl_identify_filter_cleanup(%struct.TYPE_8__*) #1

declare dso_local i32 @mbfl_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
