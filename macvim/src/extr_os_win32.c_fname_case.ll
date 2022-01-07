; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_win32.c_fname_case.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_win32.c_fname_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@_MAX_PATH = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@psepc = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [3 x i8] c"\\*\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@OK = common dso_local global i64 0, align 8
@enc_codepage = common dso_local global i32 0, align 4
@enc_dbcs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fname_case(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load i32, i32* @_MAX_PATH, align 4
  %19 = add nsw i32 %18, 2
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %5, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  %23 = load i32, i32* @_MAX_PATH, align 4
  %24 = add nsw i32 %23, 2
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %7, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @STRLEN(i8* %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i32 1, i32* %17, align 4
  br label %268

33:                                               ; preds = %2
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @slash_adjust(i8* %34)
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @_MAX_PATH, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* %17, align 4
  br label %268

40:                                               ; preds = %33
  %41 = load i8*, i8** %3, align 8
  store i8* %41, i8** %10, align 8
  store i8* %22, i8** %8, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @isalpha(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 58
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %10, align 8
  %56 = load i8, i8* %54, align 1
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %8, align 8
  store i8 %56, i8* %57, align 1
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %10, align 8
  %61 = load i8, i8* %59, align 1
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  store i8 %61, i8* %62, align 1
  br label %64

64:                                               ; preds = %53, %47, %40
  %65 = load i8, i8* @NUL, align 1
  %66 = load i8*, i8** %8, align 8
  store i8 %65, i8* %66, align 1
  br label %67

67:                                               ; preds = %264, %64
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* @NUL, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %265

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %82, %74
  %76 = load i8*, i8** %10, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8, i8* @psepc, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %10, align 8
  %85 = load i8, i8* %83, align 1
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %8, align 8
  store i8 %85, i8* %86, align 1
  br label %75

88:                                               ; preds = %75
  %89 = load i8*, i8** %8, align 8
  store i8* %89, i8** %9, align 8
  %90 = load i8*, i8** %10, align 8
  store i8* %90, i8** %11, align 8
  br label %91

91:                                               ; preds = %107, %88
  %92 = load i8*, i8** %10, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = load i8, i8* @NUL, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load i8*, i8** %10, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = load i8, i8* @psepc, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %101, %103
  br label %105

105:                                              ; preds = %98, %91
  %106 = phi i1 [ false, %91 ], [ %104, %98 ]
  br i1 %106, label %107, label %113

107:                                              ; preds = %105
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %10, align 8
  %110 = load i8, i8* %108, align 1
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %8, align 8
  store i8 %110, i8* %111, align 1
  br label %91

113:                                              ; preds = %105
  %114 = load i8, i8* @NUL, align 1
  %115 = load i8*, i8** %8, align 8
  store i8 %114, i8* %115, align 1
  %116 = call i32 @STRCPY(i8* %26, i8* %22)
  %117 = call i32 @strlen(i8* %26)
  store i32 %117, i32* %16, align 4
  %118 = load i8*, i8** %10, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = load i8, i8* @psepc, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %113
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, 2
  %127 = load i32, i32* @_MAX_PATH, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %26, i64 %131
  %133 = call i32 @STRCPY(i8* %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %134

134:                                              ; preds = %129, %124, %113
  %135 = load i8*, i8** %8, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = icmp ugt i8* %135, %136
  br i1 %137, label %138, label %264

138:                                              ; preds = %134
  %139 = load i8*, i8** %9, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 46
  br i1 %143, label %166, label %144

144:                                              ; preds = %138
  %145 = load i8*, i8** %9, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = load i8, i8* @NUL, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %148, %150
  br i1 %151, label %152, label %264

152:                                              ; preds = %144
  %153 = load i8*, i8** %9, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 46
  br i1 %157, label %166, label %158

158:                                              ; preds = %152
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 2
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = load i8, i8* @NUL, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %162, %164
  br i1 %165, label %166, label %264

166:                                              ; preds = %158, %152, %138
  %167 = call i32 @FindFirstFile(i8* %26, %struct.TYPE_4__* %13)
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %264

170:                                              ; preds = %166
  %171 = load i8*, i8** %10, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  store i32 %173, i32* %15, align 4
  %174 = load i8, i8* @NUL, align 1
  %175 = load i8*, i8** %10, align 8
  store i8 %174, i8* %175, align 1
  %176 = load i8*, i8** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = call i64 @_stricoll(i8* %176, i8* %178)
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %202, label %181

181:                                              ; preds = %170
  %182 = load i32, i32* %4, align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %253

184:                                              ; preds = %181
  %185 = load i8*, i8** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = call i64 @_stricoll(i8* %185, i8* %187)
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %253

190:                                              ; preds = %184
  %191 = load i8*, i8** %9, align 8
  %192 = ptrtoint i8* %191 to i64
  %193 = ptrtoint i8* %22 to i64
  %194 = sub i64 %192, %193
  %195 = trunc i64 %194 to i32
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @strlen(i8* %197)
  %199 = add nsw i32 %195, %198
  %200 = load i32, i32* %4, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %253

202:                                              ; preds = %190, %170
  %203 = load i8*, i8** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @STRCPY(i8* %203, i8* %205)
  br label %207

207:                                              ; preds = %251, %202
  %208 = load i32, i32* %14, align 4
  %209 = call i64 @FindNextFile(i32 %208, %struct.TYPE_4__* %13)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %252

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = load i8, i8* @NUL, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp ne i32 %215, %217
  br i1 %218, label %219, label %251

219:                                              ; preds = %211
  %220 = load i8*, i8** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i64 @strcoll(i8* %220, i8* %222)
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %246, label %225

225:                                              ; preds = %219
  %226 = load i32, i32* %4, align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %251

228:                                              ; preds = %225
  %229 = load i8*, i8** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = call i64 @_stricoll(i8* %229, i8* %231)
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %251

234:                                              ; preds = %228
  %235 = load i8*, i8** %9, align 8
  %236 = ptrtoint i8* %235 to i64
  %237 = ptrtoint i8* %22 to i64
  %238 = sub i64 %236, %237
  %239 = trunc i64 %238 to i32
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 @strlen(i8* %241)
  %243 = add nsw i32 %239, %242
  %244 = load i32, i32* %4, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %234, %219
  %247 = load i8*, i8** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @STRCPY(i8* %247, i8* %249)
  br label %252

251:                                              ; preds = %234, %228, %225, %211
  br label %207

252:                                              ; preds = %246, %207
  br label %253

253:                                              ; preds = %252, %190, %184, %181
  %254 = load i32, i32* %14, align 4
  %255 = call i32 @FindClose(i32 %254)
  %256 = load i32, i32* %15, align 4
  %257 = trunc i32 %256 to i8
  %258 = load i8*, i8** %10, align 8
  store i8 %257, i8* %258, align 1
  %259 = load i8*, i8** %9, align 8
  %260 = load i8*, i8** %9, align 8
  %261 = call i32 @strlen(i8* %260)
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %259, i64 %262
  store i8* %263, i8** %8, align 8
  br label %264

264:                                              ; preds = %253, %166, %158, %144, %134
  br label %67

265:                                              ; preds = %67
  %266 = load i8*, i8** %3, align 8
  %267 = call i32 @STRCPY(i8* %266, i8* %22)
  store i32 0, i32* %17, align 4
  br label %268

268:                                              ; preds = %265, %39, %32
  %269 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %269)
  %270 = load i32, i32* %17, align 4
  switch i32 %270, label %272 [
    i32 0, label %271
    i32 1, label %271
  ]

271:                                              ; preds = %268, %268
  ret void

272:                                              ; preds = %268
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @STRLEN(i8*) #2

declare dso_local i32 @slash_adjust(i8*) #2

declare dso_local i64 @isalpha(i8 signext) #2

declare dso_local i32 @STRCPY(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @FindFirstFile(i8*, %struct.TYPE_4__*) #2

declare dso_local i64 @_stricoll(i8*, i8*) #2

declare dso_local i64 @FindNextFile(i32, %struct.TYPE_4__*) #2

declare dso_local i64 @strcoll(i8*, i8*) #2

declare dso_local i32 @FindClose(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
