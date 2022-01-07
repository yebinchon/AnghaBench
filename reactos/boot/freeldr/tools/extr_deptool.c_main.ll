; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/tools/extr_deptool.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/tools/extr_deptool.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Usage: deptool srcfile.d\0A\00", align 1
@ERROR_NOTENOUGHPARAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"r+t\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"deptool: No such dependency file: %s\0A\00", align 1
@ERROR_DEPENDFILENOTFOUND = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"deptool: Out of memory!\0A\00", align 1
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"deptool: Dependency file read error.\0A\00", align 1
@ERROR_READERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"deptool: Dependency file write error.\0A\00", align 1
@ERROR_WRITEERROR = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ERROR_NOTENOUGHPARAMS, align 4
  store i32 %17, i32* %3, align 4
  br label %243

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @ERROR_DEPENDFILENOTFOUND, align 4
  store i32 %30, i32* %3, align 4
  br label %243

31:                                               ; preds = %18
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @SEEK_END, align 4
  %34 = call i32 @fseek(i32* %32, i32 0, i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @ftell(i32* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @rewind(i32* %37)
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @malloc(i32 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 %42, 3
  %44 = call i64 @malloc(i32 %43)
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %31
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %68, label %51

51:                                               ; preds = %48, %31
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @free(i8* %56)
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i8*, i8** %9, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @free(i8* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @fclose(i32* %65)
  %67 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %67, i32* %3, align 4
  br label %243

68:                                               ; preds = %48
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @memset(i8* %69, i32 0, i32 %70)
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 %73, 3
  %75 = call i32 @memset(i8* %72, i32 0, i32 %74)
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @fread(i8* %76, i32 1, i32 %77, i32* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i64 @ferror(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %68
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @fclose(i32* %89)
  %91 = load i32, i32* @ERROR_READERROR, align 4
  store i32 %91, i32* %3, align 4
  br label %243

92:                                               ; preds = %68
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %156, %92
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = icmp ne i8 %98, 0
  br i1 %99, label %100, label %161

100:                                              ; preds = %93
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 58
  br i1 %107, label %108, label %145

108:                                              ; preds = %100
  %109 = load i8*, i8** %9, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  store i8 32, i8* %112, align 1
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  %115 = load i8*, i8** %9, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8**, i8*** %5, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strcat(i8* %118, i8* %121)
  %123 = load i8**, i8*** %5, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strlen(i8* %125)
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %11, align 4
  %129 = load i8*, i8** %9, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  store i8 32, i8* %132, align 1
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  %135 = load i8*, i8** %9, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = call i32 @strcat(i8* %135, i8* %139)
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 2
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 2
  store i32 %144, i32* %12, align 4
  br label %161

145:                                              ; preds = %100
  %146 = load i8*, i8** %8, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = load i8*, i8** %9, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  store i8 %150, i8* %154, align 1
  br label %155

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %93

161:                                              ; preds = %108, %93
  %162 = load i8*, i8** %9, align 8
  %163 = call i32 @strcat(i8* %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %164 = load i32, i32* %12, align 4
  store i32 %164, i32* %10, align 4
  %165 = load i8*, i8** %9, align 8
  %166 = call i32 @strlen(i8* %165)
  store i32 %166, i32* %11, align 4
  br label %167

167:                                              ; preds = %210, %161
  %168 = load i8*, i8** %8, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = icmp ne i8 %172, 0
  br i1 %173, label %174, label %215

174:                                              ; preds = %167
  %175 = load i8*, i8** %8, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 92
  br i1 %181, label %182, label %185

182:                                              ; preds = %174
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %11, align 4
  br label %210

185:                                              ; preds = %174
  %186 = load i8*, i8** %8, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp eq i32 %191, 10
  br i1 %192, label %193, label %200

193:                                              ; preds = %185
  %194 = load i8*, i8** %9, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  store i8 58, i8* %197, align 1
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %11, align 4
  br label %200

200:                                              ; preds = %193, %185
  %201 = load i8*, i8** %8, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = load i8*, i8** %9, align 8
  %207 = load i32, i32* %11, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  store i8 %205, i8* %209, align 1
  br label %210

210:                                              ; preds = %200, %182
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %10, align 4
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %11, align 4
  br label %167

215:                                              ; preds = %167
  %216 = load i32*, i32** %6, align 8
  %217 = call i32 @rewind(i32* %216)
  %218 = load i8*, i8** %9, align 8
  %219 = load i8*, i8** %9, align 8
  %220 = call i32 @strlen(i8* %219)
  %221 = load i32*, i32** %6, align 8
  %222 = call i32 @fwrite(i8* %218, i32 1, i32 %220, i32* %221)
  %223 = load i32*, i32** %6, align 8
  %224 = call i64 @ferror(i32* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %215
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %228 = load i32*, i32** %6, align 8
  %229 = call i32 @fclose(i32* %228)
  %230 = load i8*, i8** %8, align 8
  %231 = call i32 @free(i8* %230)
  %232 = load i8*, i8** %9, align 8
  %233 = call i32 @free(i8* %232)
  %234 = load i32, i32* @ERROR_WRITEERROR, align 4
  store i32 %234, i32* %3, align 4
  br label %243

235:                                              ; preds = %215
  %236 = load i32*, i32** %6, align 8
  %237 = call i32 @fclose(i32* %236)
  %238 = load i8*, i8** %8, align 8
  %239 = call i32 @free(i8* %238)
  %240 = load i8*, i8** %9, align 8
  %241 = call i32 @free(i8* %240)
  %242 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %242, i32* %3, align 4
  br label %243

243:                                              ; preds = %235, %226, %83, %64, %25, %15
  %244 = load i32, i32* %3, align 4
  ret i32 %244
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
