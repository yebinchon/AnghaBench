; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_att2intel.c_parse.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_att2intel.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"+%d]%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d]%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca [32 x i8], align 16
  %12 = alloca [32 x i8], align 16
  %13 = alloca [32 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [4 x i8*], align 16
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @strdup(i8* %21)
  store i8* %22, i8** %14, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %256

26:                                               ; preds = %3
  %27 = load i8*, i8** %14, align 8
  %28 = call i32 @r_str_trim_head(i8* %27)
  %29 = load i8*, i8** %14, align 8
  %30 = call i8* @strchr(i8* %29, i8 signext 35)
  store i8* %30, i8** %15, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i8*, i8** %15, align 8
  store i8 0, i8* %34, align 1
  %35 = load i8*, i8** %14, align 8
  %36 = call i32 @r_str_trim(i8* %35)
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i8*, i8** %14, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 46
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %14, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 58
  br i1 %51, label %52, label %58

52:                                               ; preds = %42, %37
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @strcpy(i8* %55, i8* %56)
  store i32 1, i32* %4, align 4
  br label %256

58:                                               ; preds = %42
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @r_str_replace_char(i8* %59, i8 signext 36, i8 signext 0)
  %61 = load i8*, i8** %14, align 8
  %62 = call i32 @r_str_replace_char(i8* %61, i8 signext 37, i8 signext 0)
  %63 = load i8*, i8** %14, align 8
  %64 = call i32 @r_str_replace_char(i8* %63, i8 signext 9, i8 signext 32)
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 @r_str_replace_char(i8* %65, i8 signext 40, i8 signext 91)
  %67 = load i8*, i8** %14, align 8
  %68 = call i32 @r_str_replace_char(i8* %67, i8 signext 41, i8 signext 93)
  %69 = load i8*, i8** %14, align 8
  %70 = call i8* @strchr(i8* %69, i8 signext 91)
  store i8* %70, i8** %15, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %130

73:                                               ; preds = %58
  %74 = load i8*, i8** %15, align 8
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %14, align 8
  %76 = call i64 @r_str_lchr(i8* %75, i8 signext 32)
  %77 = inttoptr i64 %76 to i8*
  store i8* %77, i8** %17, align 8
  %78 = load i8*, i8** %17, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %73
  %81 = load i8*, i8** %14, align 8
  %82 = call i64 @r_str_lchr(i8* %81, i8 signext 44)
  %83 = inttoptr i64 %82 to i8*
  store i8* %83, i8** %17, align 8
  br label %84

84:                                               ; preds = %80, %73
  %85 = load i8*, i8** %17, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %127

87:                                               ; preds = %84
  %88 = load i8*, i8** %17, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = call i32 @atoi(i8* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i8*, i8** %15, align 8
  store i8 91, i8* %91, align 1
  %92 = load i8*, i8** %17, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8*, i8** %15, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = add nsw i32 %96, 1
  %98 = call i32 @memmove(i8* %93, i8* %94, i32 %97)
  %99 = load i8*, i8** %14, align 8
  %100 = call i64 @r_str_lchr(i8* %99, i8 signext 93)
  %101 = inttoptr i64 %100 to i8*
  store i8* %101, i8** %15, align 8
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %126

104:                                              ; preds = %87
  %105 = load i8*, i8** %15, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %126

107:                                              ; preds = %104
  %108 = load i8*, i8** %15, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = call i8* @strdup(i8* %109)
  store i8* %110, i8** %18, align 8
  %111 = load i32, i32* %9, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load i8*, i8** %15, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i8*, i8** %18, align 8
  %117 = call i32 @sprintf(i8* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %115, i8* %116)
  br label %123

118:                                              ; preds = %107
  %119 = load i8*, i8** %15, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i8*, i8** %18, align 8
  %122 = call i32 @sprintf(i8* %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %120, i8* %121)
  br label %123

123:                                              ; preds = %118, %113
  %124 = load i8*, i8** %18, align 8
  %125 = call i32 @free(i8* %124)
  br label %126

126:                                              ; preds = %123, %104, %87
  br label %129

127:                                              ; preds = %84
  %128 = load i8*, i8** %15, align 8
  store i8 91, i8* %128, align 1
  br label %129

129:                                              ; preds = %127, %126
  br label %130

130:                                              ; preds = %129, %58
  %131 = load i8*, i8** %14, align 8
  %132 = load i8, i8* %131, align 1
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %134, label %253

134:                                              ; preds = %130
  %135 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %135, align 16
  %136 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %136, align 16
  %137 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %137, align 16
  %138 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %138, align 16
  %139 = load i8*, i8** %14, align 8
  %140 = call i8* @strchr(i8* %139, i8 signext 32)
  store i8* %140, i8** %15, align 8
  %141 = load i8*, i8** %15, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %134
  %144 = load i8*, i8** %14, align 8
  %145 = call i8* @strchr(i8* %144, i8 signext 9)
  store i8* %145, i8** %15, align 8
  br label %146

146:                                              ; preds = %143, %134
  %147 = load i8*, i8** %15, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %220

149:                                              ; preds = %146
  %150 = load i8*, i8** %15, align 8
  store i8 0, i8* %150, align 1
  %151 = load i8*, i8** %15, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %15, align 8
  br label %153

153:                                              ; preds = %159, %149
  %154 = load i8*, i8** %15, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 32
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  br label %159

159:                                              ; preds = %158
  %160 = load i8*, i8** %15, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %15, align 8
  br label %153

162:                                              ; preds = %153
  %163 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %164 = load i8*, i8** %14, align 8
  %165 = call i32 @strncpy(i8* %163, i8* %164, i32 31)
  %166 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %167 = load i8*, i8** %15, align 8
  %168 = call i32 @strncpy(i8* %166, i8* %167, i32 31)
  %169 = load i8*, i8** %15, align 8
  store i8* %169, i8** %16, align 8
  %170 = load i8*, i8** %15, align 8
  %171 = call i8* @strchr(i8* %170, i8 signext 44)
  store i8* %171, i8** %15, align 8
  %172 = load i8*, i8** %15, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %174, label %219

174:                                              ; preds = %162
  %175 = load i8*, i8** %15, align 8
  store i8 0, i8* %175, align 1
  %176 = load i8*, i8** %15, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %15, align 8
  br label %178

178:                                              ; preds = %184, %174
  %179 = load i8*, i8** %15, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 32
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  br label %184

184:                                              ; preds = %183
  %185 = load i8*, i8** %15, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %15, align 8
  br label %178

187:                                              ; preds = %178
  %188 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %189 = load i8*, i8** %16, align 8
  %190 = call i32 @strncpy(i8* %188, i8* %189, i32 31)
  %191 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %192 = load i8*, i8** %15, align 8
  %193 = call i32 @strncpy(i8* %191, i8* %192, i32 31)
  %194 = load i8*, i8** %15, align 8
  %195 = call i8* @strchr(i8* %194, i8 signext 44)
  store i8* %195, i8** %15, align 8
  %196 = load i8*, i8** %15, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %218

198:                                              ; preds = %187
  %199 = load i8*, i8** %15, align 8
  store i8 0, i8* %199, align 1
  %200 = load i8*, i8** %15, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %15, align 8
  br label %202

202:                                              ; preds = %208, %198
  %203 = load i8*, i8** %15, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 32
  br i1 %206, label %207, label %211

207:                                              ; preds = %202
  br label %208

208:                                              ; preds = %207
  %209 = load i8*, i8** %15, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %15, align 8
  br label %202

211:                                              ; preds = %202
  %212 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %213 = load i8*, i8** %16, align 8
  %214 = call i32 @strncpy(i8* %212, i8* %213, i32 31)
  %215 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %216 = load i8*, i8** %15, align 8
  %217 = call i32 @strncpy(i8* %215, i8* %216, i32 31)
  br label %218

218:                                              ; preds = %211, %187
  br label %219

219:                                              ; preds = %218, %162
  br label %220

220:                                              ; preds = %219, %146
  %221 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 0
  %222 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  store i8* %222, i8** %221, align 8
  %223 = getelementptr inbounds i8*, i8** %221, i64 1
  %224 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  store i8* %224, i8** %223, align 8
  %225 = getelementptr inbounds i8*, i8** %223, i64 1
  %226 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  store i8* %226, i8** %225, align 8
  %227 = getelementptr inbounds i8*, i8** %225, i64 1
  %228 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  store i8* %228, i8** %227, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %8, align 4
  br label %229

229:                                              ; preds = %245, %220
  %230 = load i32, i32* %8, align 4
  %231 = icmp slt i32 %230, 4
  br i1 %231, label %232, label %248

232:                                              ; preds = %229
  %233 = load i32, i32* %8, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 %234
  %236 = load i8*, i8** %235, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 0
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %232
  %242 = load i32, i32* %20, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %20, align 4
  br label %244

244:                                              ; preds = %241, %232
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %8, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %8, align 4
  br label %229

248:                                              ; preds = %229
  %249 = load i32, i32* %20, align 4
  %250 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 0
  %251 = load i8*, i8** %7, align 8
  %252 = call i32 @replace(i32 %249, i8** %250, i8* %251)
  br label %253

253:                                              ; preds = %248, %130
  %254 = load i8*, i8** %14, align 8
  %255 = call i32 @free(i8* %254)
  store i32 1, i32* %4, align 4
  br label %256

256:                                              ; preds = %253, %52, %25
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @r_str_trim_head(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @r_str_trim(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @r_str_replace_char(i8*, i8 signext, i8 signext) #1

declare dso_local i64 @r_str_lchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @replace(i32, i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
