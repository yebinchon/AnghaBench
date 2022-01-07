; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/label/extr_label.c_wmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/label/extr_label.c_wmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.wmain.szRootPath = private unnamed_addr constant [4 x i32] [i32 32, i32 58, i32 92, i32 0], align 16
@UNICODE_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i32] [i32 47, i32 63, i32 0], align 4
@StdOut = common dso_local global i32 0, align 4
@STRING_LABEL_HELP = common dso_local global i32 0, align 4
@MAX_LABEL_LENGTH = common dso_local global i32 0, align 4
@MAX_DRIVE_LENGTH = common dso_local global i32 0, align 4
@STRING_ERROR_INVALID_LABEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 32, i32 0], align 4
@MAX_PATH = common dso_local global i32 0, align 4
@StdErr = common dso_local global i32 0, align 4
@STRING_ERROR_INVALID_DRIVE = common dso_local global i32 0, align 4
@STRING_LABEL_TEXT1 = common dso_local global i32 0, align 4
@STRING_LABEL_TEXT2 = common dso_local global i32 0, align 4
@STRING_LABEL_TEXT3 = common dso_local global i32 0, align 4
@STRING_LABEL_TEXT4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmain(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca [80 x i32], align 16
  %8 = alloca [80 x i32], align 16
  %9 = alloca [80 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  %15 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([4 x i32]* @__const.wmain.szRootPath to i8*), i64 16, i1 false)
  %16 = call i32 (...) @ConInitStdStreams()
  %17 = load i32, i32* @UNICODE_NULL, align 4
  %18 = getelementptr inbounds [80 x i32], [80 x i32]* %8, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %31

21:                                               ; preds = %2
  %22 = load i32**, i32*** %5, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @wcscmp(i32* %24, i8* bitcast ([3 x i32]* @.str to i8*))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @StdOut, align 4
  %29 = load i32, i32* @STRING_LABEL_HELP, align 4
  %30 = call i32 @ConResPuts(i32 %28, i32 %29)
  store i32 0, i32* %3, align 4
  br label %212

31:                                               ; preds = %21, %2
  %32 = load i32, i32* %4, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %92

34:                                               ; preds = %31
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %35

35:                                               ; preds = %56, %34
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32**, i32*** %5, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i64 @wcslen(i32* %50)
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %35

59:                                               ; preds = %35
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @MAX_LABEL_LENGTH, align 4
  %62 = load i32, i32* @MAX_DRIVE_LENGTH, align 4
  %63 = add nsw i32 %61, %62
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @StdOut, align 4
  %67 = load i32, i32* @STRING_ERROR_INVALID_LABEL, align 4
  %68 = call i32 @ConResPuts(i32 %66, i32 %67)
  store i32 1, i32* %3, align 4
  br label %212

69:                                               ; preds = %59
  store i32 1, i32* %12, align 4
  br label %70

70:                                               ; preds = %88, %69
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = load i32, i32* %12, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = getelementptr inbounds [80 x i32], [80 x i32]* %7, i64 0, i64 0
  %79 = call i32 (i32*, ...) @wcscat(i32* %78, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @.str.1, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %74
  %81 = getelementptr inbounds [80 x i32], [80 x i32]* %7, i64 0, i64 0
  %82 = load i32**, i32*** %5, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 (i32*, ...) @wcscat(i32* %81, i32* %86)
  br label %88

88:                                               ; preds = %80
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %70

91:                                               ; preds = %70
  br label %92

92:                                               ; preds = %91, %31
  %93 = getelementptr inbounds [80 x i32], [80 x i32]* %7, i64 0, i64 0
  %94 = call i64 @wcslen(i32* %93)
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %92
  %97 = getelementptr inbounds [80 x i32], [80 x i32]* %7, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 58
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = getelementptr inbounds [80 x i32], [80 x i32]* %7, i64 0, i64 0
  %102 = load i32, i32* %101, align 16
  %103 = call i32 @towupper(i32 %102)
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %103, i32* %104, align 16
  %105 = getelementptr inbounds [80 x i32], [80 x i32]* %8, i64 0, i64 0
  %106 = getelementptr inbounds [80 x i32], [80 x i32]* %7, i64 0, i64 2
  %107 = call i32 @wcscpy(i32* %105, i32* %106)
  br label %112

108:                                              ; preds = %96
  %109 = getelementptr inbounds [80 x i32], [80 x i32]* %8, i64 0, i64 0
  %110 = getelementptr inbounds [80 x i32], [80 x i32]* %7, i64 0, i64 0
  %111 = call i32 @wcscpy(i32* %109, i32* %110)
  br label %112

112:                                              ; preds = %108, %100
  br label %113

113:                                              ; preds = %112, %92
  %114 = getelementptr inbounds [80 x i32], [80 x i32]* %8, i64 0, i64 0
  %115 = call i64 @wcslen(i32* %114)
  %116 = load i32, i32* @MAX_LABEL_LENGTH, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp sgt i64 %115, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load i32, i32* @StdOut, align 4
  %121 = load i32, i32* @STRING_ERROR_INVALID_LABEL, align 4
  %122 = call i32 @ConResPuts(i32 %120, i32 %121)
  store i32 1, i32* %3, align 4
  br label %212

123:                                              ; preds = %113
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %125 = load i32, i32* %124, align 16
  %126 = icmp eq i32 %125, 32
  br i1 %126, label %127, label %138

127:                                              ; preds = %123
  %128 = load i32, i32* @MAX_PATH, align 4
  %129 = zext i32 %128 to i64
  %130 = call i8* @llvm.stacksave()
  store i8* %130, i8** %13, align 8
  %131 = alloca i32, i64 %129, align 16
  store i64 %129, i64* %14, align 8
  %132 = load i32, i32* @MAX_PATH, align 4
  %133 = call i32 @GetCurrentDirectoryW(i32 %132, i32* %131)
  %134 = getelementptr inbounds i32, i32* %131, i64 0
  %135 = load i32, i32* %134, align 16
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %135, i32* %136, align 16
  %137 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %137)
  br label %138

138:                                              ; preds = %127, %123
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %140 = call i32 @IsValidPathName(i32* %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* @StdErr, align 4
  %144 = load i32, i32* @STRING_ERROR_INVALID_DRIVE, align 4
  %145 = call i32 @ConResPuts(i32 %143, i32 %144)
  store i32 1, i32* %3, align 4
  br label %212

146:                                              ; preds = %138
  %147 = getelementptr inbounds [80 x i32], [80 x i32]* %8, i64 0, i64 0
  %148 = call i64 @wcslen(i32* %147)
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %202

150:                                              ; preds = %146
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %152 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 0
  %153 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 0
  %154 = call i32 @ARRAYSIZE(i32* %153)
  %155 = call i32 @GetVolumeInformationW(i32* %151, i32* %152, i32 %154, i32* %10, i32* null, i32* null, i32* null, i32 0)
  %156 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 0
  %157 = load i32, i32* %156, align 16
  %158 = load i32, i32* @UNICODE_NULL, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %168

160:                                              ; preds = %150
  %161 = load i32, i32* @StdOut, align 4
  %162 = load i32, i32* @STRING_LABEL_TEXT1, align 4
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %164 = load i32, i32* %163, align 16
  %165 = call i32 @towupper(i32 %164)
  %166 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 0
  %167 = call i32 (i32, i32, i32, ...) @ConResPrintf(i32 %161, i32 %162, i32 %165, i32* %166)
  br label %175

168:                                              ; preds = %150
  %169 = load i32, i32* @StdOut, align 4
  %170 = load i32, i32* @STRING_LABEL_TEXT2, align 4
  %171 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %172 = load i32, i32* %171, align 16
  %173 = call i32 @towupper(i32 %172)
  %174 = call i32 (i32, i32, i32, ...) @ConResPrintf(i32 %169, i32 %170, i32 %173)
  br label %175

175:                                              ; preds = %168, %160
  %176 = load i32, i32* @StdOut, align 4
  %177 = load i32, i32* @STRING_LABEL_TEXT3, align 4
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @HIWORD(i32 %178)
  %180 = load i32, i32* %10, align 4
  %181 = call i32* @LOWORD(i32 %180)
  %182 = call i32 (i32, i32, i32, ...) @ConResPrintf(i32 %176, i32 %177, i32 %179, i32* %181)
  %183 = load i32, i32* @StdOut, align 4
  %184 = load i32, i32* @STRING_LABEL_TEXT4, align 4
  %185 = call i32 @ConResPuts(i32 %183, i32 %184)
  %186 = getelementptr inbounds [80 x i32], [80 x i32]* %8, i64 0, i64 0
  %187 = getelementptr inbounds [80 x i32], [80 x i32]* %8, i64 0, i64 0
  %188 = call i32 @ARRAYSIZE(i32* %187)
  %189 = call i32 @ConInString(i32* %186, i32 %188)
  %190 = load i32, i32* @StdOut, align 4
  %191 = call i32 @ConPuts(i32 %190, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %192 = getelementptr inbounds [80 x i32], [80 x i32]* %8, i64 0, i64 0
  %193 = call i64 @wcslen(i32* %192)
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %175
  %196 = call i64 (...) @PromptYesNo()
  %197 = load i64, i64* @FALSE, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  store i32 0, i32* %3, align 4
  br label %212

200:                                              ; preds = %195
  br label %201

201:                                              ; preds = %200, %175
  br label %202

202:                                              ; preds = %201, %146
  %203 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %204 = getelementptr inbounds [80 x i32], [80 x i32]* %8, i64 0, i64 0
  %205 = call i32 @SetVolumeLabelW(i32* %203, i32* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %202
  %208 = load i32, i32* @StdOut, align 4
  %209 = call i32 (...) @GetLastError()
  %210 = call i32 @ConFormatMessage(i32 %208, i32 %209)
  store i32 1, i32* %3, align 4
  br label %212

211:                                              ; preds = %202
  store i32 0, i32* %3, align 4
  br label %212

212:                                              ; preds = %211, %207, %199, %142, %119, %65, %27
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ConInitStdStreams(...) #2

declare dso_local i64 @wcscmp(i32*, i8*) #2

declare dso_local i32 @ConResPuts(i32, i32) #2

declare dso_local i64 @wcslen(i32*) #2

declare dso_local i32 @wcscat(i32*, ...) #2

declare dso_local i32 @towupper(i32) #2

declare dso_local i32 @wcscpy(i32*, i32*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @GetCurrentDirectoryW(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @IsValidPathName(i32*) #2

declare dso_local i32 @GetVolumeInformationW(i32*, i32*, i32, i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @ARRAYSIZE(i32*) #2

declare dso_local i32 @ConResPrintf(i32, i32, i32, ...) #2

declare dso_local i32 @HIWORD(i32) #2

declare dso_local i32* @LOWORD(i32) #2

declare dso_local i32 @ConInString(i32*, i32) #2

declare dso_local i32 @ConPuts(i32, i8*) #2

declare dso_local i64 @PromptYesNo(...) #2

declare dso_local i32 @SetVolumeLabelW(i32*, i32*) #2

declare dso_local i32 @ConFormatMessage(i32, i32) #2

declare dso_local i32 @GetLastError(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
