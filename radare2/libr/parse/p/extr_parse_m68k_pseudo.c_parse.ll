; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_m68k_pseudo.c_parse.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/p/extr_parse_m68k_pseudo.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"jr ra\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c".l\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c".w\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c".b\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"+ =\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" +=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [5 x i8*], align 16
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @WSZ, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %29 = load i32, i32* @WSZ, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  %32 = load i32, i32* @WSZ, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %13, align 8
  %35 = load i32, i32* @WSZ, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %14, align 8
  %38 = load i32, i32* @WSZ, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %15, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %3
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strcpy(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %243

47:                                               ; preds = %3
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i8* @malloc(i32 %49)
  store i8* %50, i8** %16, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %243

53:                                               ; preds = %47
  %54 = load i8*, i8** %16, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i32 @memcpy(i8* %54, i8* %55, i32 %57)
  %59 = load i8*, i8** %16, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @r_str_replace_in(i8* %59, i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %63 = load i8*, i8** %16, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  %66 = call i32 @r_str_replace_in(i8* %63, i32 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %67 = load i8*, i8** %16, align 8
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @r_str_replace_in(i8* %67, i32 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %71 = load i8*, i8** %16, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  %74 = call i32 @r_str_replace_in(i8* %71, i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %75 = load i8*, i8** %16, align 8
  %76 = call i32 @r_str_trim(i8* %75)
  %77 = load i8*, i8** %16, align 8
  %78 = load i8, i8* %77, align 1
  %79 = icmp ne i8 %78, 0
  br i1 %79, label %80, label %240

80:                                               ; preds = %53
  %81 = getelementptr inbounds i8, i8* %28, i64 0
  store i8 0, i8* %81, align 16
  %82 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 0, i8* %82, align 16
  %83 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 0, i8* %83, align 16
  %84 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 0, i8* %84, align 16
  %85 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 0, i8* %85, align 16
  %86 = load i8*, i8** %16, align 8
  %87 = call i8* @strchr(i8* %86, i8 signext 32)
  store i8* %87, i8** %17, align 8
  %88 = load i8*, i8** %17, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %80
  %91 = load i8*, i8** %16, align 8
  %92 = call i8* @strchr(i8* %91, i8 signext 9)
  store i8* %92, i8** %17, align 8
  br label %93

93:                                               ; preds = %90, %80
  %94 = load i8*, i8** %17, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %202

96:                                               ; preds = %93
  %97 = load i8*, i8** %17, align 8
  store i8 0, i8* %97, align 1
  %98 = load i8*, i8** %17, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %17, align 8
  br label %100

100:                                              ; preds = %106, %96
  %101 = load i8*, i8** %17, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 32
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105
  %107 = load i8*, i8** %17, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %17, align 8
  br label %100

109:                                              ; preds = %100
  %110 = load i8*, i8** %16, align 8
  %111 = load i32, i32* @WSZ, align 4
  %112 = sub nsw i32 %111, 1
  %113 = call i32 @strncpy(i8* %28, i8* %110, i32 %112)
  %114 = load i8*, i8** %17, align 8
  %115 = load i32, i32* @WSZ, align 4
  %116 = sub nsw i32 %115, 1
  %117 = call i32 @strncpy(i8* %31, i8* %114, i32 %116)
  %118 = load i8*, i8** %17, align 8
  store i8* %118, i8** %18, align 8
  %119 = load i8*, i8** %17, align 8
  %120 = call i8* @strchr(i8* %119, i8 signext 44)
  store i8* %120, i8** %17, align 8
  %121 = load i8*, i8** %17, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %201

123:                                              ; preds = %109
  %124 = load i8*, i8** %17, align 8
  store i8 0, i8* %124, align 1
  %125 = load i8*, i8** %17, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %17, align 8
  br label %127

127:                                              ; preds = %133, %123
  %128 = load i8*, i8** %17, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 32
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132
  %134 = load i8*, i8** %17, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %17, align 8
  br label %127

136:                                              ; preds = %127
  %137 = load i8*, i8** %18, align 8
  %138 = load i32, i32* @WSZ, align 4
  %139 = sub nsw i32 %138, 1
  %140 = call i32 @strncpy(i8* %31, i8* %137, i32 %139)
  %141 = load i8*, i8** %17, align 8
  %142 = load i32, i32* @WSZ, align 4
  %143 = sub nsw i32 %142, 1
  %144 = call i32 @strncpy(i8* %34, i8* %141, i32 %143)
  %145 = load i8*, i8** %17, align 8
  store i8* %145, i8** %18, align 8
  %146 = load i8*, i8** %17, align 8
  %147 = call i8* @strchr(i8* %146, i8 signext 44)
  store i8* %147, i8** %17, align 8
  %148 = load i8*, i8** %17, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %200

150:                                              ; preds = %136
  %151 = load i8*, i8** %17, align 8
  store i8 0, i8* %151, align 1
  %152 = load i8*, i8** %17, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %17, align 8
  br label %154

154:                                              ; preds = %160, %150
  %155 = load i8*, i8** %17, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 32
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  br label %160

160:                                              ; preds = %159
  %161 = load i8*, i8** %17, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %17, align 8
  br label %154

163:                                              ; preds = %154
  %164 = load i8*, i8** %18, align 8
  %165 = load i32, i32* @WSZ, align 4
  %166 = sub nsw i32 %165, 1
  %167 = call i32 @strncpy(i8* %34, i8* %164, i32 %166)
  %168 = load i8*, i8** %17, align 8
  %169 = load i32, i32* @WSZ, align 4
  %170 = sub nsw i32 %169, 1
  %171 = call i32 @strncpy(i8* %37, i8* %168, i32 %170)
  %172 = load i8*, i8** %17, align 8
  store i8* %172, i8** %18, align 8
  %173 = load i8*, i8** %17, align 8
  %174 = call i8* @strchr(i8* %173, i8 signext 44)
  store i8* %174, i8** %17, align 8
  %175 = load i8*, i8** %17, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %199

177:                                              ; preds = %163
  %178 = load i8*, i8** %17, align 8
  store i8 0, i8* %178, align 1
  %179 = load i8*, i8** %17, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %17, align 8
  br label %181

181:                                              ; preds = %187, %177
  %182 = load i8*, i8** %17, align 8
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 32
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  br label %187

187:                                              ; preds = %186
  %188 = load i8*, i8** %17, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %17, align 8
  br label %181

190:                                              ; preds = %181
  %191 = load i8*, i8** %18, align 8
  %192 = load i32, i32* @WSZ, align 4
  %193 = sub nsw i32 %192, 1
  %194 = call i32 @strncpy(i8* %37, i8* %191, i32 %193)
  %195 = load i8*, i8** %17, align 8
  %196 = load i32, i32* @WSZ, align 4
  %197 = sub nsw i32 %196, 1
  %198 = call i32 @strncpy(i8* %40, i8* %195, i32 %197)
  br label %199

199:                                              ; preds = %190, %163
  br label %200

200:                                              ; preds = %199, %136
  br label %201

201:                                              ; preds = %200, %109
  br label %202

202:                                              ; preds = %201, %93
  %203 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 0
  store i8* %28, i8** %203, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 1
  store i8* %31, i8** %204, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 1
  store i8* %34, i8** %205, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 1
  store i8* %37, i8** %206, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 1
  store i8* %40, i8** %207, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %8, align 4
  br label %208

208:                                              ; preds = %224, %202
  %209 = load i32, i32* %8, align 4
  %210 = icmp slt i32 %209, 5
  br i1 %210, label %211, label %227

211:                                              ; preds = %208
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 %213
  %215 = load i8*, i8** %214, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 0
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %211
  %221 = load i32, i32* %21, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %21, align 4
  br label %223

223:                                              ; preds = %220, %211
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %8, align 4
  br label %208

227:                                              ; preds = %208
  %228 = load i32, i32* %21, align 4
  %229 = getelementptr inbounds [5 x i8*], [5 x i8*]* %20, i64 0, i64 0
  %230 = load i8*, i8** %7, align 8
  %231 = call i32 @replace(i32 %228, i8** %229, i8* %230)
  %232 = load i8*, i8** %7, align 8
  %233 = call i8* @strstr(i8* %232, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i8* %233, i8** %22, align 8
  %234 = load i8*, i8** %22, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %227
  %237 = load i8*, i8** %22, align 8
  %238 = call i32 @memcpy(i8* %237, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  br label %239

239:                                              ; preds = %236, %227
  br label %240

240:                                              ; preds = %239, %53
  %241 = load i8*, i8** %16, align 8
  %242 = call i32 @free(i8* %241)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %243

243:                                              ; preds = %240, %52, %44
  %244 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %244)
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @r_str_replace_in(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @r_str_trim(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @replace(i32, i8**, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
