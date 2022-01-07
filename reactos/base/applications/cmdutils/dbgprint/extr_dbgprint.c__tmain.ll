; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/dbgprint/extr_dbgprint.c__tmain.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/dbgprint/extr_dbgprint.c__tmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"--winetest\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" --list\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"\0A\0ARunning \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"--process\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_tmain(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca [128 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca [255 x i8], align 16
  %14 = alloca [300 x i8], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [128 x i8], align 16
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %7, align 8
  store i32 1, i32* %8, align 4
  br label %20

20:                                               ; preds = %35, %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @_tcslen(i8* %29)
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %20

38:                                               ; preds = %20
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %230

42:                                               ; preds = %38
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @_tcsstr(i8* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %129

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %129

51:                                               ; preds = %48
  %52 = getelementptr inbounds [255 x i8], [255 x i8]* %13, i64 0, i64 0
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcpy(i8* %52, i8* %55)
  %57 = getelementptr inbounds [255 x i8], [255 x i8]* %13, i64 0, i64 0
  %58 = call i32 @strcat(i8* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %59 = getelementptr inbounds [255 x i8], [255 x i8]* %13, i64 0, i64 0
  %60 = call i32* @_tpopen(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %60, i32** %15, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %128

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %124, %63
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %66 = load i32*, i32** %15, align 8
  %67 = call i64 @fgets(i8* %65, i32 128, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %125

69:                                               ; preds = %64
  %70 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %71 = load i8, i8* %70, align 16
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 32
  br i1 %73, label %74, label %124

74:                                               ; preds = %69
  %75 = getelementptr inbounds [255 x i8], [255 x i8]* %13, i64 0, i64 0
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 2
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @strcpy(i8* %75, i8* %78)
  %80 = getelementptr inbounds [255 x i8], [255 x i8]* %13, i64 0, i64 0
  %81 = call i32 @strcat(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %82 = getelementptr inbounds [255 x i8], [255 x i8]* %13, i64 0, i64 0
  %83 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %84 = getelementptr inbounds i8, i8* %83, i64 4
  %85 = call i32 @strcat(i8* %82, i8* %84)
  %86 = getelementptr inbounds [300 x i8], [300 x i8]* %14, i64 0, i64 0
  %87 = call i32 @strcpy(i8* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %88 = getelementptr inbounds [300 x i8], [300 x i8]* %14, i64 0, i64 0
  %89 = getelementptr inbounds [255 x i8], [255 x i8]* %13, i64 0, i64 0
  %90 = call i32 @strcat(i8* %88, i8* %89)
  %91 = getelementptr inbounds [300 x i8], [300 x i8]* %14, i64 0, i64 0
  %92 = call i32 @OutputDebugStringA(i8* %91)
  %93 = getelementptr inbounds [255 x i8], [255 x i8]* %13, i64 0, i64 0
  %94 = call i32* @_popen(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %94, i32** %16, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %123

97:                                               ; preds = %74
  br label %98

98:                                               ; preds = %117, %97
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %100 = load i32*, i32** %16, align 8
  %101 = call i64 @fgets(i8* %99, i32 128, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %98
  %104 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %105 = call i8* @strchr(i8* %104, i8 signext 10)
  store i8* %105, i8** %12, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i8*, i8** %12, align 8
  store i8 0, i8* %109, align 1
  br label %110

110:                                              ; preds = %108, %103
  %111 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %112 = call i32 @puts(i8* %111)
  %113 = load i8*, i8** %12, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i8*, i8** %12, align 8
  store i8 10, i8* %116, align 1
  br label %117

117:                                              ; preds = %115, %110
  %118 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %119 = call i32 @OutputDebugStringA(i8* %118)
  br label %98

120:                                              ; preds = %98
  %121 = load i32*, i32** %16, align 8
  %122 = call i32 @_pclose(i32* %121)
  br label %123

123:                                              ; preds = %120, %74
  br label %124

124:                                              ; preds = %123, %69
  br label %64

125:                                              ; preds = %64
  %126 = load i32*, i32** %15, align 8
  %127 = call i32 @_pclose(i32* %126)
  br label %128

128:                                              ; preds = %125, %51
  br label %229

129:                                              ; preds = %48, %42
  %130 = load i8**, i8*** %5, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 1
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @_tcsstr(i8* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %160

135:                                              ; preds = %129
  %136 = load i32, i32* %4, align 4
  %137 = icmp eq i32 %136, 3
  br i1 %137, label %138, label %160

138:                                              ; preds = %135
  %139 = load i8**, i8*** %5, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 2
  %141 = load i8*, i8** %140, align 8
  %142 = call i32* @_tpopen(i8* %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %142, i32** %18, align 8
  %143 = load i32*, i32** %18, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %159

145:                                              ; preds = %138
  br label %146

146:                                              ; preds = %151, %145
  %147 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %148 = load i32*, i32** %18, align 8
  %149 = call i64 @fgets(i8* %147, i32 128, i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %153 = call i32 @puts(i8* %152)
  %154 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %155 = call i32 @OutputDebugStringA(i8* %154)
  br label %146

156:                                              ; preds = %146
  %157 = load i32*, i32** %18, align 8
  %158 = call i32 @_pclose(i32* %157)
  br label %159

159:                                              ; preds = %156, %138
  br label %228

160:                                              ; preds = %135, %129
  %161 = call i32 (...) @GetProcessHeap()
  %162 = load i64, i64* %7, align 8
  %163 = add i64 %162, 1
  %164 = mul i64 %163, 1
  %165 = call i8* @HeapAlloc(i32 %161, i32 0, i64 %164)
  store i8* %165, i8** %6, align 8
  %166 = load i8*, i8** %6, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %160
  store i32 -1, i32* %3, align 4
  br label %230

169:                                              ; preds = %160
  store i64 0, i64* %9, align 8
  store i32 1, i32* %8, align 4
  br label %170

170:                                              ; preds = %217, %169
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %4, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %220

174:                                              ; preds = %170
  %175 = load i8**, i8*** %5, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @_tcslen(i8* %179)
  %181 = sext i32 %180 to i64
  store i64 %181, i64* %19, align 8
  %182 = load i8*, i8** %6, align 8
  %183 = load i64, i64* %9, align 8
  %184 = getelementptr inbounds i8, i8* %182, i64 %183
  %185 = load i8**, i8*** %5, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = load i64, i64* %19, align 8
  %191 = call i32 @_tcsncpy(i8* %184, i8* %189, i64 %190)
  %192 = load i64, i64* %19, align 8
  %193 = load i64, i64* %9, align 8
  %194 = add i64 %193, %192
  store i64 %194, i64* %9, align 8
  %195 = load i32, i32* %8, align 4
  %196 = add nsw i32 %195, 1
  %197 = load i32, i32* %4, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %174
  %200 = call signext i8 @_T(i8 signext 32)
  %201 = load i8*, i8** %6, align 8
  %202 = load i64, i64* %9, align 8
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  store i8 %200, i8* %203, align 1
  br label %214

204:                                              ; preds = %174
  %205 = call signext i8 @_T(i8 signext 10)
  %206 = load i8*, i8** %6, align 8
  %207 = load i64, i64* %9, align 8
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  store i8 %205, i8* %208, align 1
  %209 = call signext i8 @_T(i8 signext 0)
  %210 = load i8*, i8** %6, align 8
  %211 = load i64, i64* %9, align 8
  %212 = add i64 %211, 1
  %213 = getelementptr inbounds i8, i8* %210, i64 %212
  store i8 %209, i8* %213, align 1
  br label %214

214:                                              ; preds = %204, %199
  %215 = load i64, i64* %9, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %9, align 8
  br label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  br label %170

220:                                              ; preds = %170
  %221 = load i8*, i8** %6, align 8
  %222 = call i32 @_putts(i8* %221)
  %223 = load i8*, i8** %6, align 8
  %224 = call i32 @OutputDebugString(i8* %223)
  %225 = call i32 (...) @GetProcessHeap()
  %226 = load i8*, i8** %6, align 8
  %227 = call i32 @HeapFree(i32 %225, i32 0, i8* %226)
  br label %228

228:                                              ; preds = %220, %159
  br label %229

229:                                              ; preds = %228, %128
  store i32 0, i32* %3, align 4
  br label %230

230:                                              ; preds = %229, %168, %41
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i32 @_tcslen(i8*) #1

declare dso_local i64 @_tcsstr(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32* @_tpopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @OutputDebugStringA(i8*) #1

declare dso_local i32* @_popen(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @_pclose(i32*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @_tcsncpy(i8*, i8*, i64) #1

declare dso_local signext i8 @_T(i8 signext) #1

declare dso_local i32 @_putts(i8*) #1

declare dso_local i32 @OutputDebugString(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
