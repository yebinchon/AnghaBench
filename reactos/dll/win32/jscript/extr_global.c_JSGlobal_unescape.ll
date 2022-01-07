; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_JSGlobal_unescape.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_JSGlobal_unescape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @JSGlobal_unescape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSGlobal_unescape(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 0, i64* %18, align 8
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %6
  %25 = load i32*, i32** %13, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = call i32* (...) @jsstr_undefined()
  %29 = call i32 @jsval_string(i32* %28)
  %30 = load i32*, i32** %13, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* @S_OK, align 4
  store i32 %32, i32* %7, align 4
  br label %253

33:                                               ; preds = %6
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @to_flat_string(i32* %34, i32 %37, i32** %15, i8** %17)
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %20, align 4
  %40 = call i64 @FAILED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %20, align 4
  store i32 %43, i32* %7, align 4
  br label %253

44:                                               ; preds = %33
  %45 = load i8*, i8** %17, align 8
  store i8* %45, i8** %16, align 8
  br label %46

46:                                               ; preds = %108, %44
  %47 = load i8*, i8** %16, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %111

50:                                               ; preds = %46
  %51 = load i8*, i8** %16, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 37
  br i1 %54, label %55, label %105

55:                                               ; preds = %50
  %56 = load i8*, i8** %16, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @hex_to_int(i8 signext %58)
  %60 = icmp ne i32 %59, -1
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load i8*, i8** %16, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @hex_to_int(i8 signext %64)
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i8*, i8** %16, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  store i8* %69, i8** %16, align 8
  br label %104

70:                                               ; preds = %61, %55
  %71 = load i8*, i8** %16, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 117
  br i1 %75, label %76, label %103

76:                                               ; preds = %70
  %77 = load i8*, i8** %16, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = load i8, i8* %78, align 1
  %80 = call i32 @hex_to_int(i8 signext %79)
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %103

82:                                               ; preds = %76
  %83 = load i8*, i8** %16, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 3
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @hex_to_int(i8 signext %85)
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %103

88:                                               ; preds = %82
  %89 = load i8*, i8** %16, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 4
  %91 = load i8, i8* %90, align 1
  %92 = call i32 @hex_to_int(i8 signext %91)
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load i8*, i8** %16, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 5
  %97 = load i8, i8* %96, align 1
  %98 = call i32 @hex_to_int(i8 signext %97)
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i8*, i8** %16, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 5
  store i8* %102, i8** %16, align 8
  br label %103

103:                                              ; preds = %100, %94, %88, %82, %76, %70
  br label %104

104:                                              ; preds = %103, %67
  br label %105

105:                                              ; preds = %104, %50
  %106 = load i64, i64* %18, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %18, align 8
  br label %108

108:                                              ; preds = %105
  %109 = load i8*, i8** %16, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %16, align 8
  br label %46

111:                                              ; preds = %46
  %112 = load i64, i64* %18, align 8
  %113 = call i32* @jsstr_alloc_buf(i64 %112, i8** %19)
  store i32* %113, i32** %14, align 8
  %114 = load i32*, i32** %14, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = load i32*, i32** %15, align 8
  %118 = call i32 @jsstr_release(i32* %117)
  %119 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %119, i32* %7, align 4
  br label %253

120:                                              ; preds = %111
  store i64 0, i64* %18, align 8
  %121 = load i8*, i8** %17, align 8
  store i8* %121, i8** %16, align 8
  br label %122

122:                                              ; preds = %236, %120
  %123 = load i8*, i8** %16, align 8
  %124 = load i8, i8* %123, align 1
  %125 = icmp ne i8 %124, 0
  br i1 %125, label %126, label %239

126:                                              ; preds = %122
  %127 = load i8*, i8** %16, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 37
  br i1 %130, label %131, label %227

131:                                              ; preds = %126
  %132 = load i8*, i8** %16, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = load i8, i8* %133, align 1
  %135 = call i32 @hex_to_int(i8 signext %134)
  %136 = icmp ne i32 %135, -1
  br i1 %136, label %137, label %160

137:                                              ; preds = %131
  %138 = load i8*, i8** %16, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 2
  %140 = load i8, i8* %139, align 1
  %141 = call i32 @hex_to_int(i8 signext %140)
  %142 = icmp ne i32 %141, -1
  br i1 %142, label %143, label %160

143:                                              ; preds = %137
  %144 = load i8*, i8** %16, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = call i32 @hex_to_int(i8 signext %146)
  %148 = shl i32 %147, 4
  %149 = load i8*, i8** %16, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  %151 = load i8, i8* %150, align 1
  %152 = call i32 @hex_to_int(i8 signext %151)
  %153 = add nsw i32 %148, %152
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %19, align 8
  %156 = load i64, i64* %18, align 8
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8 %154, i8* %157, align 1
  %158 = load i8*, i8** %16, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  store i8* %159, i8** %16, align 8
  br label %226

160:                                              ; preds = %137, %131
  %161 = load i8*, i8** %16, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 117
  br i1 %165, label %166, label %219

166:                                              ; preds = %160
  %167 = load i8*, i8** %16, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 2
  %169 = load i8, i8* %168, align 1
  %170 = call i32 @hex_to_int(i8 signext %169)
  %171 = icmp ne i32 %170, -1
  br i1 %171, label %172, label %219

172:                                              ; preds = %166
  %173 = load i8*, i8** %16, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 3
  %175 = load i8, i8* %174, align 1
  %176 = call i32 @hex_to_int(i8 signext %175)
  %177 = icmp ne i32 %176, -1
  br i1 %177, label %178, label %219

178:                                              ; preds = %172
  %179 = load i8*, i8** %16, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 4
  %181 = load i8, i8* %180, align 1
  %182 = call i32 @hex_to_int(i8 signext %181)
  %183 = icmp ne i32 %182, -1
  br i1 %183, label %184, label %219

184:                                              ; preds = %178
  %185 = load i8*, i8** %16, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 5
  %187 = load i8, i8* %186, align 1
  %188 = call i32 @hex_to_int(i8 signext %187)
  %189 = icmp ne i32 %188, -1
  br i1 %189, label %190, label %219

190:                                              ; preds = %184
  %191 = load i8*, i8** %16, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 2
  %193 = load i8, i8* %192, align 1
  %194 = call i32 @hex_to_int(i8 signext %193)
  %195 = shl i32 %194, 12
  %196 = load i8*, i8** %16, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 3
  %198 = load i8, i8* %197, align 1
  %199 = call i32 @hex_to_int(i8 signext %198)
  %200 = shl i32 %199, 8
  %201 = add nsw i32 %195, %200
  %202 = load i8*, i8** %16, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 4
  %204 = load i8, i8* %203, align 1
  %205 = call i32 @hex_to_int(i8 signext %204)
  %206 = shl i32 %205, 4
  %207 = add nsw i32 %201, %206
  %208 = load i8*, i8** %16, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 5
  %210 = load i8, i8* %209, align 1
  %211 = call i32 @hex_to_int(i8 signext %210)
  %212 = add nsw i32 %207, %211
  %213 = trunc i32 %212 to i8
  %214 = load i8*, i8** %19, align 8
  %215 = load i64, i64* %18, align 8
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8 %213, i8* %216, align 1
  %217 = load i8*, i8** %16, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 5
  store i8* %218, i8** %16, align 8
  br label %225

219:                                              ; preds = %184, %178, %172, %166, %160
  %220 = load i8*, i8** %16, align 8
  %221 = load i8, i8* %220, align 1
  %222 = load i8*, i8** %19, align 8
  %223 = load i64, i64* %18, align 8
  %224 = getelementptr inbounds i8, i8* %222, i64 %223
  store i8 %221, i8* %224, align 1
  br label %225

225:                                              ; preds = %219, %190
  br label %226

226:                                              ; preds = %225, %143
  br label %233

227:                                              ; preds = %126
  %228 = load i8*, i8** %16, align 8
  %229 = load i8, i8* %228, align 1
  %230 = load i8*, i8** %19, align 8
  %231 = load i64, i64* %18, align 8
  %232 = getelementptr inbounds i8, i8* %230, i64 %231
  store i8 %229, i8* %232, align 1
  br label %233

233:                                              ; preds = %227, %226
  %234 = load i64, i64* %18, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %18, align 8
  br label %236

236:                                              ; preds = %233
  %237 = load i8*, i8** %16, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %16, align 8
  br label %122

239:                                              ; preds = %122
  %240 = load i32*, i32** %15, align 8
  %241 = call i32 @jsstr_release(i32* %240)
  %242 = load i32*, i32** %13, align 8
  %243 = icmp ne i32* %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %239
  %245 = load i32*, i32** %14, align 8
  %246 = call i32 @jsval_string(i32* %245)
  %247 = load i32*, i32** %13, align 8
  store i32 %246, i32* %247, align 4
  br label %251

248:                                              ; preds = %239
  %249 = load i32*, i32** %14, align 8
  %250 = call i32 @jsstr_release(i32* %249)
  br label %251

251:                                              ; preds = %248, %244
  %252 = load i32, i32* @S_OK, align 4
  store i32 %252, i32* %7, align 4
  br label %253

253:                                              ; preds = %251, %116, %42, %31
  %254 = load i32, i32* %7, align 4
  ret i32 %254
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32* @jsstr_undefined(...) #1

declare dso_local i32 @to_flat_string(i32*, i32, i32**, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @hex_to_int(i8 signext) #1

declare dso_local i32* @jsstr_alloc_buf(i64, i8**) #1

declare dso_local i32 @jsstr_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
