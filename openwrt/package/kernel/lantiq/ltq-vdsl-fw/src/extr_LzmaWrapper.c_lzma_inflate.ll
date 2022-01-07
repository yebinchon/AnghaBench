; ModuleID = '/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-vdsl-fw/src/extr_LzmaWrapper.c_lzma_inflate.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/kernel/lantiq/ltq-vdsl-fw/src/extr_LzmaWrapper.c_lzma_inflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@LZMA_PROPERTIES_SIZE = common dso_local global i32 0, align 4
@rpos = common dso_local global i32 0, align 4
@dpos = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Too big compressed stream\0A\00", align 1
@LZMA_RESULT_DATA_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@kCantReadMessage = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Stream with EOS marker is not supported\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Too big uncompressed stream\00", align 1
@LZMA_RESULT_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Incorrect stream properties\00", align 1
@kCantAllocateMessage = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"\0ADecoding error = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzma_inflate(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_3__, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %14, align 4
  %27 = load i32, i32* @LZMA_PROPERTIES_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %18, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %19, align 8
  store i32 0, i32* @rpos, align 4
  store i64 0, i64* @dpos, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %21, align 8
  %33 = load i64, i64* %21, align 8
  %34 = trunc i64 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %21, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @LZMA_RESULT_DATA_ERROR, align 4
  store i32 %40, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %203

41:                                               ; preds = %4
  %42 = load i64, i64* %21, align 8
  %43 = load i32, i32* @LZMA_PROPERTIES_SIZE, align 4
  %44 = add nsw i32 %43, 8
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %42, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %15, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = trunc i64 %28 to i32
  %50 = call i32 @MyReadFileAndCheck(i8* %48, i8* %30, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %41
  %53 = load i8*, i8** @kCantReadMessage, align 8
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @LZMA_RESULT_DATA_ERROR, align 4
  store i32 %55, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %203

56:                                               ; preds = %41
  store i32 0, i32* %23, align 4
  br label %57

57:                                               ; preds = %94, %56
  %58 = load i32, i32* %23, align 4
  %59 = icmp slt i32 %58, 8
  br i1 %59, label %60, label %97

60:                                               ; preds = %57
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @MyReadFileAndCheck(i8* %61, i8* %24, i32 1)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** @kCantReadMessage, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  %67 = load i32, i32* @LZMA_RESULT_DATA_ERROR, align 4
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %203

68:                                               ; preds = %60
  %69 = load i8, i8* %24, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp ne i32 %70, 255
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %72, %68
  %74 = load i32, i32* %23, align 4
  %75 = icmp slt i32 %74, 4
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i8, i8* %24, align 1
  %78 = zext i8 %77 to i32
  %79 = load i32, i32* %23, align 4
  %80 = mul nsw i32 %79, 8
  %81 = shl i32 %78, %80
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %93

84:                                               ; preds = %73
  %85 = load i8, i8* %24, align 1
  %86 = zext i8 %85 to i32
  %87 = load i32, i32* %23, align 4
  %88 = sub nsw i32 %87, 4
  %89 = mul nsw i32 %88, 8
  %90 = shl i32 %86, %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %84, %76
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %23, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %23, align 4
  br label %57

97:                                               ; preds = %57
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @LZMA_RESULT_DATA_ERROR, align 4
  store i32 %102, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %203

103:                                              ; preds = %97
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %107, %103
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* @LZMA_RESULT_DATA_ERROR, align 4
  store i32 %113, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %203

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %116 = load i32, i32* @LZMA_PROPERTIES_SIZE, align 4
  %117 = call i64 @LzmaDecodeProperties(i32* %115, i8* %30, i32 %116)
  %118 = load i64, i64* @LZMA_RESULT_OK, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* @LZMA_RESULT_DATA_ERROR, align 4
  store i32 %122, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %203

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %125 = call i32 @LzmaGetNumProbs(i32* %124)
  %126 = sext i32 %125 to i64
  %127 = mul i64 %126, 4
  %128 = trunc i64 %127 to i32
  %129 = call i64 @malloc(i32 %128)
  %130 = inttoptr i64 %129 to i32*
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32* %130, i32** %131, align 8
  %132 = load i32, i32* %12, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %123
  store i8* null, i8** %13, align 8
  br label %144

135:                                              ; preds = %123
  %136 = load i32, i32* %12, align 4
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store i8* null, i8** %13, align 8
  br label %143

141:                                              ; preds = %135
  %142 = load i8*, i8** %8, align 8
  store i8* %142, i8** %13, align 8
  br label %143

143:                                              ; preds = %141, %140
  br label %144

144:                                              ; preds = %143, %134
  %145 = load i32, i32* %15, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i8* null, i8** %16, align 8
  br label %161

148:                                              ; preds = %144
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* @rpos, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* %7, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store i8* null, i8** %16, align 8
  br label %160

155:                                              ; preds = %148
  %156 = load i8*, i8** %6, align 8
  %157 = load i32, i32* @rpos, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  store i8* %159, i8** %16, align 8
  br label %160

160:                                              ; preds = %155, %154
  br label %161

161:                                              ; preds = %160, %147
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = icmp eq i32* %163, null
  br i1 %164, label %177, label %165

165:                                              ; preds = %161
  %166 = load i8*, i8** %13, align 8
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %168, %165
  %172 = load i8*, i8** %16, align 8
  %173 = icmp eq i8* %172, null
  br i1 %173, label %174, label %184

174:                                              ; preds = %171
  %175 = load i32, i32* %15, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %174, %168, %161
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @free(i32* %179)
  %181 = load i8*, i8** @kCantAllocateMessage, align 8
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %181)
  %183 = load i32, i32* @LZMA_RESULT_DATA_ERROR, align 4
  store i32 %183, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %203

184:                                              ; preds = %174, %171
  %185 = load i8*, i8** %16, align 8
  %186 = load i32, i32* %15, align 4
  %187 = load i8*, i8** %13, align 8
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @LzmaDecode(%struct.TYPE_3__* %17, i8* %185, i32 %186, i32* %25, i8* %187, i32 %188, i32* %26)
  store i32 %189, i32* %20, align 4
  %190 = load i32, i32* %20, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %184
  %193 = load i32, i32* %20, align 4
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %193)
  store i32 1, i32* %20, align 4
  br label %198

195:                                              ; preds = %184
  %196 = load i32, i32* %26, align 4
  %197 = load i32*, i32** %9, align 8
  store i32 %196, i32* %197, align 4
  br label %198

198:                                              ; preds = %195, %192
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @free(i32* %200)
  %202 = load i32, i32* %20, align 4
  store i32 %202, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %203

203:                                              ; preds = %198, %177, %120, %111, %100, %64, %52, %38
  %204 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @MyReadFileAndCheck(i8*, i8*, i32) #2

declare dso_local i64 @LzmaDecodeProperties(i32*, i8*, i32) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @LzmaGetNumProbs(i32*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @LzmaDecode(%struct.TYPE_3__*, i8*, i32, i32*, i8*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
