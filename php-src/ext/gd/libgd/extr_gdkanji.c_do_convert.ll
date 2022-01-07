; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gdkanji.c_do_convert.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gdkanji.c_do_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@NEWJISSTR = common dso_local global i32 0, align 4
@OLDJISSTR = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@ESC = common dso_local global i8 0, align 1
@TRUE = common dso_local global i32 0, align 4
@SS2 = common dso_local global i8 0, align 1
@SJISSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid code specification: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"output buffer overflow at do_convert()\00", align 1
@E2BIG = common dso_local global i64 0, align 8
@EILSEQ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@EUCSTR = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @do_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_convert(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %12, align 4
  store i32 0, i32* %10, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @NEWJISSTR, align 4
  %17 = call i64 @strcmp(i8* %15, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @OLDJISSTR, align 4
  %22 = call i64 @strcmp(i8* %20, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %148

24:                                               ; preds = %19, %3
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %144, %24
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @BUFSIZ, align 4
  %36 = icmp slt i32 %34, %35
  br label %37

37:                                               ; preds = %33, %25
  %38 = phi i1 [ false, %25 ], [ %36, %33 ]
  br i1 %38, label %39, label %147

39:                                               ; preds = %37
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @ESC, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %90

49:                                               ; preds = %39
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 36
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %89

64:                                               ; preds = %49
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 40
  br i1 %71, label %72, label %88

72:                                               ; preds = %64
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 73
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = load i32, i32* @TRUE, align 4
  store i32 %84, i32* %12, align 4
  br label %87

85:                                               ; preds = %72
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %85, %83
  br label %88

88:                                               ; preds = %87, %64
  br label %89

89:                                               ; preds = %88, %59
  br label %143

90:                                               ; preds = %39
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %90
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = add nsw i32 %99, 128
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %4, align 8
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  store i8 %101, i8* %106, align 1
  br label %142

107:                                              ; preds = %90
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %107
  %111 = load i8, i8* @SS2, align 1
  %112 = load i8*, i8** %4, align 8
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  store i8 %111, i8* %116, align 1
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = add nsw i32 %122, 128
  %124 = trunc i32 %123 to i8
  %125 = load i8*, i8** %4, align 8
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  store i8 %124, i8* %129, align 1
  br label %141

130:                                              ; preds = %107
  %131 = load i8*, i8** %5, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = load i8*, i8** %4, align 8
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %136, i64 %139
  store i8 %135, i8* %140, align 1
  br label %141

141:                                              ; preds = %130, %110
  br label %142

142:                                              ; preds = %141, %93
  br label %143

143:                                              ; preds = %142, %89
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %25

147:                                              ; preds = %37
  br label %240

148:                                              ; preds = %19
  %149 = load i8*, i8** %6, align 8
  %150 = load i32, i32* @SJISSTR, align 4
  %151 = call i64 @strcmp(i8* %149, i32 %150)
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %236

153:                                              ; preds = %148
  store i32 0, i32* %9, align 4
  br label %154

154:                                              ; preds = %232, %153
  %155 = load i8*, i8** %5, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @BUFSIZ, align 4
  %165 = icmp slt i32 %163, %164
  br label %166

166:                                              ; preds = %162, %154
  %167 = phi i1 [ false, %154 ], [ %165, %162 ]
  br i1 %167, label %168, label %235

168:                                              ; preds = %166
  %169 = load i8*, i8** %5, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp slt i32 %175, 127
  br i1 %176, label %177, label %185

177:                                              ; preds = %168
  %178 = load i32, i32* %7, align 4
  %179 = trunc i32 %178 to i8
  %180 = load i8*, i8** %4, align 8
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i8, i8* %180, i64 %183
  store i8 %179, i8* %184, align 1
  br label %231

185:                                              ; preds = %168
  %186 = load i32, i32* %7, align 4
  %187 = icmp sge i32 %186, 161
  br i1 %187, label %188, label %205

188:                                              ; preds = %185
  %189 = load i32, i32* %7, align 4
  %190 = icmp sle i32 %189, 223
  br i1 %190, label %191, label %205

191:                                              ; preds = %188
  %192 = load i8, i8* @SS2, align 1
  %193 = load i8*, i8** %4, align 8
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %10, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  store i8 %192, i8* %197, align 1
  %198 = load i32, i32* %7, align 4
  %199 = trunc i32 %198 to i8
  %200 = load i8*, i8** %4, align 8
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %10, align 4
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  store i8 %199, i8* %204, align 1
  br label %230

205:                                              ; preds = %188, %185
  %206 = load i8*, i8** %5, align 8
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %206, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  store i32 %212, i32* %8, align 4
  %213 = call i32 @SJIStoJIS(i32* %7, i32* %8)
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, 128
  %216 = trunc i32 %215 to i8
  %217 = load i8*, i8** %4, align 8
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  store i8 %216, i8* %221, align 1
  %222 = load i32, i32* %8, align 4
  %223 = add nsw i32 %222, 128
  %224 = trunc i32 %223 to i8
  %225 = load i8*, i8** %4, align 8
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %10, align 4
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i8, i8* %225, i64 %228
  store i8 %224, i8* %229, align 1
  br label %230

230:                                              ; preds = %205, %191
  br label %231

231:                                              ; preds = %230, %177
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %9, align 4
  br label %154

235:                                              ; preds = %166
  br label %239

236:                                              ; preds = %148
  %237 = load i8*, i8** %6, align 8
  %238 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %237)
  br label %254

239:                                              ; preds = %235
  br label %240

240:                                              ; preds = %239, %147
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* @BUFSIZ, align 4
  %243 = icmp sge i32 %241, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %240
  %245 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %246 = load i8*, i8** %4, align 8
  %247 = load i8*, i8** %5, align 8
  %248 = call i32 @ustrcpy(i8* %246, i8* %247)
  br label %254

249:                                              ; preds = %240
  %250 = load i8*, i8** %4, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  store i8 0, i8* %253, align 1
  br label %254

254:                                              ; preds = %236, %249, %244
  ret void
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @SJIStoJIS(i32*, i32*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @ustrcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
