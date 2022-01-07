; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_replace.c_replace.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_replace.c_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@STRING_COPY_ERROR1 = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@REPLACE_UPDATE = common dso_local global i32 0, align 4
@REPLACE_CONFIRM = common dso_local global i32 0, align 4
@REPLACE_ADD = common dso_local global i32 0, align 4
@STRING_REPLACE_HELP9 = common dso_local global i32 0, align 4
@STRING_REPLACE_HELP10 = common dso_local global i32 0, align 4
@STRING_REPLACE_HELP11 = common dso_local global i32 0, align 4
@STRING_REPLACE_HELP5 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@STRING_REPLACE_ERROR7 = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@BUFF_SIZE = common dso_local global i32 0, align 4
@MEM_COMMIT = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@STRING_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@BREAK_INPUT = common dso_local global i32 0, align 4
@STRING_COPY_ERROR3 = common dso_local global i32 0, align 4
@MEM_RELEASE = common dso_local global i32 0, align 4
@nErrorLevel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @replace(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_8__, align 8
  %21 = alloca %struct.TYPE_8__, align 8
  %22 = alloca %struct.TYPE_8__, align 8
  %23 = alloca %struct.TYPE_8__, align 8
  %24 = alloca %struct.TYPE_8__, align 8
  %25 = alloca %struct.TYPE_8__, align 8
  %26 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = zext i32 %27 to i64
  %29 = load i32, i32* @MAX_PATH, align 4
  %30 = zext i32 %29 to i64
  %31 = load i32, i32* @MAX_PATH, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %10, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %11, align 8
  %35 = load i32, i32* @MAX_PATH, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %12, align 8
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %19, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @GetPathCase(i32* %39, i32* %37)
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @GetPathCase(i32* %41, i32* %34)
  %43 = getelementptr inbounds i32, i32* %37, i64 0
  %44 = load i32, i32* %43, align 16
  %45 = call i32 @_totupper(i32 %44)
  %46 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %45, i32* %46, align 16
  %47 = getelementptr inbounds i32, i32* %34, i64 0
  %48 = load i32, i32* %47, align 16
  %49 = call i32 @_totupper(i32 %48)
  %50 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %49, i32* %50, align 16
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* @GENERIC_READ, align 4
  %53 = load i32, i32* @FILE_SHARE_READ, align 4
  %54 = load i32, i32* @OPEN_EXISTING, align 4
  %55 = call i64 @CreateFile(i32* %51, i32 %52, i32 %53, i32* null, i32 %54, i32 0, i32* null)
  store i64 %55, i64* %13, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %4
  %60 = load i32, i32* @STRING_COPY_ERROR1, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @ConOutResPrintf(i32 %60, i32* %61)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %254

63:                                               ; preds = %4
  %64 = load i64, i64* %13, align 8
  %65 = call i32 @GetFileTime(i64 %64, %struct.TYPE_8__* %20, %struct.TYPE_8__* %22, %struct.TYPE_8__* %24)
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @GetFileAttributes(i32* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = call i64 @IsExistingFile(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %125

71:                                               ; preds = %63
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %74 = call i32 @SetFileAttributes(i32* %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @REPLACE_UPDATE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %122

79:                                               ; preds = %71
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* @GENERIC_READ, align 4
  %82 = load i32, i32* @FILE_SHARE_READ, align 4
  %83 = load i32, i32* @OPEN_EXISTING, align 4
  %84 = call i64 @CreateFile(i32* %80, i32 %81, i32 %82, i32* null, i32 %83, i32 0, i32* null)
  store i64 %84, i64* %14, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %79
  %89 = load i32, i32* @STRING_COPY_ERROR1, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @ConOutResPrintf(i32 %89, i32* %90)
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @CloseHandle(i64 %92)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %254

94:                                               ; preds = %79
  %95 = load i64, i64* %14, align 8
  %96 = call i32 @GetFileTime(i64 %95, %struct.TYPE_8__* %21, %struct.TYPE_8__* %23, %struct.TYPE_8__* %25)
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %98, %100
  br i1 %101, label %119, label %102

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %104, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %110, %112
  br i1 %113, label %119, label %114

114:                                              ; preds = %108, %102
  %115 = load i64, i64* %13, align 8
  %116 = call i32 @CloseHandle(i64 %115)
  %117 = load i64, i64* %14, align 8
  %118 = call i32 @CloseHandle(i64 %117)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %254

119:                                              ; preds = %108, %94
  %120 = load i64, i64* %14, align 8
  %121 = call i32 @CloseHandle(i64 %120)
  br label %122

122:                                              ; preds = %119, %71
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @DeleteFile(i32* %123)
  br label %125

125:                                              ; preds = %122, %63
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @REPLACE_CONFIRM, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %125
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @REPLACE_ADD, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i32, i32* @STRING_REPLACE_HELP9, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @ConOutResPrintf(i32 %136, i32* %137)
  br label %143

139:                                              ; preds = %130
  %140 = load i32, i32* @STRING_REPLACE_HELP10, align 4
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @ConOutResPrintf(i32 %140, i32* %141)
  br label %143

143:                                              ; preds = %139, %135
  %144 = call i32 @FilePromptYNA(i32 0)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i64, i64* %13, align 8
  %148 = call i32 @CloseHandle(i64 %147)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %254

149:                                              ; preds = %143
  br label %150

150:                                              ; preds = %149, %125
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @REPLACE_ADD, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* @STRING_REPLACE_HELP11, align 4
  %157 = load i32*, i32** %7, align 8
  %158 = call i32 @ConOutResPrintf(i32 %156, i32* %157)
  br label %163

159:                                              ; preds = %150
  %160 = load i32, i32* @STRING_REPLACE_HELP5, align 4
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 @ConOutResPrintf(i32 %160, i32* %161)
  br label %163

163:                                              ; preds = %159, %155
  %164 = call i32 @_tcscmp(i32* %37, i32* %34)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* @TRUE, align 4
  %168 = load i32, i32* @STRING_REPLACE_ERROR7, align 4
  %169 = call i32 @ConOutResPaging(i32 %167, i32 %168)
  %170 = load i64, i64* %13, align 8
  %171 = call i32 @CloseHandle(i64 %170)
  %172 = load i32, i32* @FALSE, align 4
  %173 = load i32*, i32** %9, align 8
  store i32 %172, i32* %173, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %254

174:                                              ; preds = %163
  %175 = load i32*, i32** %7, align 8
  %176 = load i32, i32* @GENERIC_WRITE, align 4
  %177 = load i32, i32* @CREATE_ALWAYS, align 4
  %178 = call i64 @CreateFile(i32* %175, i32 %176, i32 0, i32* null, i32 %177, i32 0, i32* null)
  store i64 %178, i64* %14, align 8
  %179 = load i64, i64* %14, align 8
  %180 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %174
  %183 = load i64, i64* %13, align 8
  %184 = call i32 @CloseHandle(i64 %183)
  %185 = load i32, i32* @TRUE, align 4
  %186 = load i32, i32* @STRING_REPLACE_ERROR7, align 4
  %187 = call i32 @ConOutResPaging(i32 %185, i32 %186)
  %188 = load i32, i32* @FALSE, align 4
  %189 = load i32*, i32** %9, align 8
  store i32 %188, i32* %189, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %254

190:                                              ; preds = %174
  %191 = load i32, i32* @BUFF_SIZE, align 4
  %192 = load i32, i32* @MEM_COMMIT, align 4
  %193 = load i32, i32* @PAGE_READWRITE, align 4
  %194 = call i32* @VirtualAlloc(i32* null, i32 %191, i32 %192, i32 %193)
  store i32* %194, i32** %18, align 8
  %195 = load i32*, i32** %18, align 8
  %196 = icmp eq i32* %195, null
  br i1 %196, label %197, label %205

197:                                              ; preds = %190
  %198 = load i64, i64* %14, align 8
  %199 = call i32 @CloseHandle(i64 %198)
  %200 = load i64, i64* %13, align 8
  %201 = call i32 @CloseHandle(i64 %200)
  %202 = load i32, i32* @TRUE, align 4
  %203 = load i32, i32* @STRING_ERROR_OUT_OF_MEMORY, align 4
  %204 = call i32 @ConOutResPaging(i32 %202, i32 %203)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %254

205:                                              ; preds = %190
  %206 = load i32*, i32** %7, align 8
  %207 = load i32, i32* %15, align 4
  %208 = call i32 @SetFileAttributes(i32* %206, i32 %207)
  %209 = load i64, i64* %14, align 8
  %210 = call i32 @SetFileTime(i64 %209, %struct.TYPE_8__* %20, %struct.TYPE_8__* %22, %struct.TYPE_8__* %24)
  br label %211

211:                                              ; preds = %242, %205
  %212 = load i64, i64* %13, align 8
  %213 = load i32*, i32** %18, align 8
  %214 = load i32, i32* @BUFF_SIZE, align 4
  %215 = call i32 @ReadFile(i64 %212, i32* %213, i32 %214, i32* %16, i32* null)
  %216 = load i32, i32* %16, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %211
  br label %246

219:                                              ; preds = %211
  %220 = load i64, i64* %14, align 8
  %221 = load i32*, i32** %18, align 8
  %222 = load i32, i32* %16, align 4
  %223 = call i32 @WriteFile(i64 %220, i32* %221, i32 %222, i32* %17, i32* null)
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* %16, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %231, label %227

227:                                              ; preds = %219
  %228 = load i32, i32* @BREAK_INPUT, align 4
  %229 = call i64 @CheckCtrlBreak(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %227, %219
  %232 = load i32, i32* @STRING_COPY_ERROR3, align 4
  %233 = call i32 @ConOutResPuts(i32 %232)
  %234 = load i32*, i32** %18, align 8
  %235 = load i32, i32* @MEM_RELEASE, align 4
  %236 = call i32 @VirtualFree(i32* %234, i32 0, i32 %235)
  %237 = load i64, i64* %14, align 8
  %238 = call i32 @CloseHandle(i64 %237)
  %239 = load i64, i64* %13, align 8
  %240 = call i32 @CloseHandle(i64 %239)
  store i32 1, i32* @nErrorLevel, align 4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %254

241:                                              ; preds = %227
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %19, align 4
  %244 = icmp ne i32 %243, 0
  %245 = xor i1 %244, true
  br i1 %245, label %211, label %246

246:                                              ; preds = %242, %218
  %247 = load i32*, i32** %18, align 8
  %248 = load i32, i32* @MEM_RELEASE, align 4
  %249 = call i32 @VirtualFree(i32* %247, i32 0, i32 %248)
  %250 = load i64, i64* %14, align 8
  %251 = call i32 @CloseHandle(i64 %250)
  %252 = load i64, i64* %13, align 8
  %253 = call i32 @CloseHandle(i64 %252)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %254

254:                                              ; preds = %246, %231, %197, %182, %166, %146, %114, %88, %59
  %255 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %255)
  %256 = load i32, i32* %5, align 4
  ret i32 %256
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetPathCase(i32*, i32*) #2

declare dso_local i32 @_totupper(i32) #2

declare dso_local i64 @CreateFile(i32*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @ConOutResPrintf(i32, i32*) #2

declare dso_local i32 @GetFileTime(i64, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*) #2

declare dso_local i32 @GetFileAttributes(i32*) #2

declare dso_local i64 @IsExistingFile(i32*) #2

declare dso_local i32 @SetFileAttributes(i32*, i32) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @DeleteFile(i32*) #2

declare dso_local i32 @FilePromptYNA(i32) #2

declare dso_local i32 @_tcscmp(i32*, i32*) #2

declare dso_local i32 @ConOutResPaging(i32, i32) #2

declare dso_local i32* @VirtualAlloc(i32*, i32, i32, i32) #2

declare dso_local i32 @SetFileTime(i64, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__*) #2

declare dso_local i32 @ReadFile(i64, i32*, i32, i32*, i32*) #2

declare dso_local i32 @WriteFile(i64, i32*, i32, i32*, i32*) #2

declare dso_local i64 @CheckCtrlBreak(i32) #2

declare dso_local i32 @ConOutResPuts(i32) #2

declare dso_local i32 @VirtualFree(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
