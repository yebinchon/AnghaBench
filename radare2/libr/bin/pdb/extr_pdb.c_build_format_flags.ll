; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_pdb.c_build_format_flags.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_pdb.c_build_format_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(%s)%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"nesttype\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"mfunction\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"arglist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*, i8**)* @build_format_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_format_flags(i32* %0, i8* %1, i32 %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i8* @strtok(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %13, align 8
  br label %17

17:                                               ; preds = %270, %5
  %18 = load i8*, i8** %13, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %272

20:                                               ; preds = %17
  %21 = load i8*, i8** %13, align 8
  %22 = call i32 @convert_to_state(i8* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  switch i32 %23, label %244 [
    i32 136, label %24
    i32 133, label %25
    i32 130, label %39
    i32 131, label %39
    i32 129, label %78
    i32 132, label %92
    i32 139, label %106
    i32 137, label %134
    i32 135, label %148
    i32 138, label %162
    i32 140, label %205
    i32 128, label %239
    i32 141, label %239
    i32 134, label %239
  ]

24:                                               ; preds = %20
  br label %270

25:                                               ; preds = %20
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 112
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  br label %273

34:                                               ; preds = %25
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 112, i8* %38, align 1
  br label %270

39:                                               ; preds = %20, %20
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 63, i8* %43, align 1
  %44 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = load i8**, i8*** %11, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strlen(i8* %48)
  %50 = add nsw i64 %46, %49
  %51 = add nsw i64 %50, 1
  %52 = add nsw i64 %51, 2
  %53 = trunc i64 %52 to i32
  %54 = call i64 @malloc(i32 %53)
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %14, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %273

59:                                               ; preds = %39
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @r_name_filter(i8* %60, i32 -1)
  %62 = load i8**, i8*** %11, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @r_name_filter(i8* %63, i32 -1)
  %65 = load i8*, i8** %14, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @strcpy(i8* %65, i8* %66)
  %68 = load i8*, i8** %14, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i8**, i8*** %11, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %69, i8* %71)
  %73 = load i8**, i8*** %11, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load i8*, i8** %14, align 8
  %77 = load i8**, i8*** %11, align 8
  store i8* %76, i8** %77, align 8
  store i32 1, i32* %6, align 4
  br label %273

78:                                               ; preds = %20
  %79 = load i8*, i8** %10, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 112
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  store i32 1, i32* %6, align 4
  br label %273

87:                                               ; preds = %78
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8 117, i8* %91, align 1
  br label %270

92:                                               ; preds = %20
  %93 = load i8*, i8** %10, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 112
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store i32 1, i32* %6, align 4
  br label %273

101:                                              ; preds = %92
  %102 = load i8*, i8** %10, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8 119, i8* %105, align 1
  store i32 1, i32* %6, align 4
  br label %273

106:                                              ; preds = %20
  %107 = load i8*, i8** %10, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 112
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  store i32 1, i32* %6, align 4
  br label %273

115:                                              ; preds = %106
  %116 = load i8*, i8** %10, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 117
  br i1 %122, label %123, label %128

123:                                              ; preds = %115
  %124 = load i8*, i8** %10, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8 98, i8* %127, align 1
  br label %133

128:                                              ; preds = %115
  %129 = load i8*, i8** %10, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  store i8 99, i8* %132, align 1
  br label %133

133:                                              ; preds = %128, %123
  store i32 1, i32* %6, align 4
  br label %273

134:                                              ; preds = %20
  %135 = load i8*, i8** %10, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 112
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  store i32 1, i32* %6, align 4
  br label %273

143:                                              ; preds = %134
  %144 = load i8*, i8** %10, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  store i8 105, i8* %147, align 1
  store i32 1, i32* %6, align 4
  br label %273

148:                                              ; preds = %20
  %149 = load i8*, i8** %10, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 112
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  store i32 1, i32* %6, align 4
  br label %273

157:                                              ; preds = %148
  %158 = load i8*, i8** %10, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  store i8 119, i8* %161, align 1
  br label %270

162:                                              ; preds = %20
  %163 = load i8*, i8** %10, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 112
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  store i32 1, i32* %6, align 4
  br label %273

171:                                              ; preds = %162
  %172 = load i8*, i8** %10, align 8
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  store i8 69, i8* %175, align 1
  %176 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %176, i8** %13, align 8
  %177 = load i8*, i8** %13, align 8
  %178 = call i64 @strlen(i8* %177)
  %179 = load i8**, i8*** %11, align 8
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @strlen(i8* %180)
  %182 = add nsw i64 %178, %181
  %183 = add nsw i64 %182, 1
  %184 = add nsw i64 %183, 2
  %185 = trunc i64 %184 to i32
  %186 = call i64 @malloc(i32 %185)
  %187 = inttoptr i64 %186 to i8*
  store i8* %187, i8** %14, align 8
  %188 = load i8*, i8** %14, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %171
  store i32 0, i32* %6, align 4
  br label %273

191:                                              ; preds = %171
  %192 = load i8*, i8** %14, align 8
  %193 = load i8*, i8** %13, align 8
  %194 = call i32 @strcpy(i8* %192, i8* %193)
  %195 = load i8*, i8** %14, align 8
  %196 = load i8*, i8** %13, align 8
  %197 = load i8**, i8*** %11, align 8
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @sprintf(i8* %195, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %196, i8* %198)
  %200 = load i8**, i8*** %11, align 8
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @free(i8* %201)
  %203 = load i8*, i8** %14, align 8
  %204 = load i8**, i8*** %11, align 8
  store i8* %203, i8** %204, align 8
  store i32 1, i32* %6, align 4
  br label %273

205:                                              ; preds = %20
  %206 = load i8*, i8** %10, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  store i8 66, i8* %209, align 1
  %210 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %210, i8** %13, align 8
  %211 = load i8*, i8** %13, align 8
  %212 = call i64 @strlen(i8* %211)
  %213 = load i8**, i8*** %11, align 8
  %214 = load i8*, i8** %213, align 8
  %215 = call i64 @strlen(i8* %214)
  %216 = add nsw i64 %212, %215
  %217 = add nsw i64 %216, 1
  %218 = add nsw i64 %217, 2
  %219 = trunc i64 %218 to i32
  %220 = call i64 @malloc(i32 %219)
  %221 = inttoptr i64 %220 to i8*
  store i8* %221, i8** %14, align 8
  %222 = load i8*, i8** %14, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %205
  store i32 0, i32* %6, align 4
  br label %273

225:                                              ; preds = %205
  %226 = load i8*, i8** %14, align 8
  %227 = load i8*, i8** %13, align 8
  %228 = call i32 @strcpy(i8* %226, i8* %227)
  %229 = load i8*, i8** %14, align 8
  %230 = load i8*, i8** %13, align 8
  %231 = load i8**, i8*** %11, align 8
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @sprintf(i8* %229, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %230, i8* %232)
  %234 = load i8**, i8*** %11, align 8
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 @free(i8* %235)
  %237 = load i8*, i8** %14, align 8
  %238 = load i8**, i8*** %11, align 8
  store i8* %237, i8** %238, align 8
  store i32 1, i32* %6, align 4
  br label %273

239:                                              ; preds = %20, %20, %20
  %240 = load i8*, i8** %10, align 8
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  store i8 112, i8* %243, align 1
  store i32 1, i32* %6, align 4
  br label %273

244:                                              ; preds = %20
  %245 = load i8*, i8** %13, align 8
  %246 = call i32 @strcmp(i8* %245, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %264

248:                                              ; preds = %244
  %249 = load i8*, i8** %13, align 8
  %250 = call i32 @strcmp(i8* %249, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %264

252:                                              ; preds = %248
  %253 = load i8*, i8** %13, align 8
  %254 = call i32 @strcmp(i8* %253, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %252
  %257 = load i8*, i8** %13, align 8
  %258 = call i32 @strcmp(i8* %257, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %256
  %261 = load i8*, i8** %13, align 8
  %262 = call i32 @strcmp(i8* %261, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %260, %256, %252, %248, %244
  br label %270

265:                                              ; preds = %260
  %266 = load i8*, i8** %10, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  store i8 65, i8* %269, align 1
  store i32 0, i32* %6, align 4
  br label %273

270:                                              ; preds = %264, %157, %87, %34, %24
  %271 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %271, i8** %13, align 8
  br label %17

272:                                              ; preds = %17
  store i32 1, i32* %6, align 4
  br label %273

273:                                              ; preds = %272, %265, %239, %225, %224, %191, %190, %170, %156, %143, %142, %133, %114, %101, %100, %86, %59, %58, %33
  %274 = load i32, i32* %6, align 4
  ret i32 %274
}

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @convert_to_state(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @r_name_filter(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
