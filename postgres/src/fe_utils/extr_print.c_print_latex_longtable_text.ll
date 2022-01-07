; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_latex_longtable_text.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_latex_longtable_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8**, i8*, i8**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i16, i8*, i64, i64 }

@cancel_pressed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"\\begin{longtable}{\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"p{\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\\textwidth}\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" |\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"\\toprule\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" & \00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"\\small\\textbf{\\textit{\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"}}\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" \\\\\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"\\midrule\0A\\endfirsthead\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"\\midrule\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"\\endhead\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"\\bottomrule\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"\\caption[\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c" (Continued)]{\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"}\0A\\endfoot\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"]{\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"}\0A\\endlastfoot\0A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"\\bottomrule\0A\\endfoot\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"\\bottomrule\0A\\endlastfoot\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"\0A&\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"\\raggedright{\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c" \\tabularnewline\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c" \\hline\0A\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"\\end{longtable}\0A\00", align 1
@LONGTABLE_WHITESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*)* @print_latex_longtable_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_latex_longtable_text(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 4
  store i16 %21, i16* %6, align 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  store i8* %27, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %28 = load i64, i64* @cancel_pressed, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %380

31:                                               ; preds = %2
  %32 = load i16, i16* %6, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp sgt i32 %33, 3
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i16 3, i16* %6, align 2
  br label %36

36:                                               ; preds = %35, %31
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %313

43:                                               ; preds = %36
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %44)
  %46 = load i16, i16* %6, align 2
  %47 = zext i16 %46 to i32
  %48 = icmp sge i32 %47, 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %50)
  br label %52

52:                                               ; preds = %49, %43
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %142, %52
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %145

59:                                               ; preds = %53
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 108
  br i1 %68, label %69, label %117

69:                                               ; preds = %59
  %70 = load i8*, i8** %8, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %117

72:                                               ; preds = %69
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @strspn(i8* %73, i32 ptrtoint ([4 x i8]* @.str.2 to i32))
  %75 = load i8*, i8** %9, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %72
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %84)
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @strcspn(i8* %87, i32 ptrtoint ([4 x i8]* @.str.2 to i32))
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @fwrite(i8* %86, i32 %88, i32 1, i32* %89)
  %91 = load i8*, i8** %9, align 8
  store i8* %91, i8** %10, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @strcspn(i8* %92, i32 ptrtoint ([4 x i8]* @.str.2 to i32))
  %94 = load i8*, i8** %9, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %9, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %97)
  br label %116

99:                                               ; preds = %72
  %100 = load i8*, i8** %10, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %103)
  %105 = load i8*, i8** %10, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 @strcspn(i8* %106, i32 ptrtoint ([4 x i8]* @.str.2 to i32))
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @fwrite(i8* %105, i32 %107, i32 1, i32* %108)
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %110)
  br label %115

112:                                              ; preds = %99
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @fputc(i8 signext 108, i32* %113)
  br label %115

115:                                              ; preds = %112, %102
  br label %116

116:                                              ; preds = %115, %83
  br label %127

117:                                              ; preds = %69, %59
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @fputc(i8 signext %124, i32* %125)
  br label %127

127:                                              ; preds = %117, %116
  %128 = load i16, i16* %6, align 2
  %129 = zext i16 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %127
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sub i32 %135, 1
  %137 = icmp ult i32 %132, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32*, i32** %4, align 8
  %140 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %139)
  br label %141

141:                                              ; preds = %138, %131, %127
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %7, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %53

145:                                              ; preds = %53
  %146 = load i16, i16* %6, align 2
  %147 = zext i16 %146 to i32
  %148 = icmp sge i32 %147, 2
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %150)
  br label %152

152:                                              ; preds = %149, %145
  %153 = load i32*, i32** %4, align 8
  %154 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* %153)
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %312, label %157

157:                                              ; preds = %152
  %158 = load i16, i16* %6, align 2
  %159 = zext i16 %158 to i32
  %160 = icmp sge i32 %159, 2
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32* %162)
  br label %164

164:                                              ; preds = %161, %157
  store i32 0, i32* %7, align 4
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  %167 = load i8**, i8*** %166, align 8
  store i8** %167, i8*** %11, align 8
  br label %168

168:                                              ; preds = %189, %164
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp ult i32 %169, %172
  br i1 %173, label %174, label %194

174:                                              ; preds = %168
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32*, i32** %4, align 8
  %179 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* %178)
  br label %180

180:                                              ; preds = %177, %174
  %181 = load i32*, i32** %4, align 8
  %182 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32* %181)
  %183 = load i8**, i8*** %11, align 8
  %184 = load i8*, i8** %183, align 8
  %185 = load i32*, i32** %4, align 8
  %186 = call i32 @latex_escaped_print(i8* %184, i32* %185)
  %187 = load i32*, i32** %4, align 8
  %188 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32* %187)
  br label %189

189:                                              ; preds = %180
  %190 = load i32, i32* %7, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %7, align 4
  %192 = load i8**, i8*** %11, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i32 1
  store i8** %193, i8*** %11, align 8
  br label %168

194:                                              ; preds = %168
  %195 = load i32*, i32** %4, align 8
  %196 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32* %195)
  %197 = load i32*, i32** %4, align 8
  %198 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32* %197)
  %199 = load i16, i16* %6, align 2
  %200 = zext i16 %199 to i32
  %201 = icmp sge i32 %200, 2
  br i1 %201, label %202, label %205

202:                                              ; preds = %194
  %203 = load i32*, i32** %4, align 8
  %204 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32* %203)
  br label %205

205:                                              ; preds = %202, %194
  store i32 0, i32* %7, align 4
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 2
  %208 = load i8**, i8*** %207, align 8
  store i8** %208, i8*** %11, align 8
  br label %209

209:                                              ; preds = %230, %205
  %210 = load i32, i32* %7, align 4
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp ult i32 %210, %213
  br i1 %214, label %215, label %235

215:                                              ; preds = %209
  %216 = load i32, i32* %7, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32*, i32** %4, align 8
  %220 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* %219)
  br label %221

221:                                              ; preds = %218, %215
  %222 = load i32*, i32** %4, align 8
  %223 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32* %222)
  %224 = load i8**, i8*** %11, align 8
  %225 = load i8*, i8** %224, align 8
  %226 = load i32*, i32** %4, align 8
  %227 = call i32 @latex_escaped_print(i8* %225, i32* %226)
  %228 = load i32*, i32** %4, align 8
  %229 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32* %228)
  br label %230

230:                                              ; preds = %221
  %231 = load i32, i32* %7, align 4
  %232 = add i32 %231, 1
  store i32 %232, i32* %7, align 4
  %233 = load i8**, i8*** %11, align 8
  %234 = getelementptr inbounds i8*, i8** %233, i32 1
  store i8** %234, i8*** %11, align 8
  br label %209

235:                                              ; preds = %209
  %236 = load i32*, i32** %4, align 8
  %237 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32* %236)
  %238 = load i16, i16* %6, align 2
  %239 = zext i16 %238 to i32
  %240 = icmp ne i32 %239, 3
  br i1 %240, label %241, label %244

241:                                              ; preds = %235
  %242 = load i32*, i32** %4, align 8
  %243 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32* %242)
  br label %244

244:                                              ; preds = %241, %235
  %245 = load i32*, i32** %4, align 8
  %246 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32* %245)
  %247 = load i32, i32* %5, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %301, label %249

249:                                              ; preds = %244
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 3
  %252 = load i8*, i8** %251, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %254, label %301

254:                                              ; preds = %249
  %255 = load i16, i16* %6, align 2
  %256 = zext i16 %255 to i32
  %257 = icmp eq i32 %256, 2
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = load i32*, i32** %4, align 8
  %260 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32* %259)
  br label %261

261:                                              ; preds = %258, %254
  %262 = load i32*, i32** %4, align 8
  %263 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32* %262)
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 3
  %266 = load i8*, i8** %265, align 8
  %267 = load i32*, i32** %4, align 8
  %268 = call i32 @latex_escaped_print(i8* %266, i32* %267)
  %269 = load i32*, i32** %4, align 8
  %270 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32* %269)
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 3
  %273 = load i8*, i8** %272, align 8
  %274 = load i32*, i32** %4, align 8
  %275 = call i32 @latex_escaped_print(i8* %273, i32* %274)
  %276 = load i32*, i32** %4, align 8
  %277 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32* %276)
  %278 = load i16, i16* %6, align 2
  %279 = zext i16 %278 to i32
  %280 = icmp eq i32 %279, 2
  br i1 %280, label %281, label %284

281:                                              ; preds = %261
  %282 = load i32*, i32** %4, align 8
  %283 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32* %282)
  br label %284

284:                                              ; preds = %281, %261
  %285 = load i32*, i32** %4, align 8
  %286 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32* %285)
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 3
  %289 = load i8*, i8** %288, align 8
  %290 = load i32*, i32** %4, align 8
  %291 = call i32 @latex_escaped_print(i8* %289, i32* %290)
  %292 = load i32*, i32** %4, align 8
  %293 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32* %292)
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 3
  %296 = load i8*, i8** %295, align 8
  %297 = load i32*, i32** %4, align 8
  %298 = call i32 @latex_escaped_print(i8* %296, i32* %297)
  %299 = load i32*, i32** %4, align 8
  %300 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32* %299)
  br label %311

301:                                              ; preds = %249, %244
  %302 = load i16, i16* %6, align 2
  %303 = zext i16 %302 to i32
  %304 = icmp sge i32 %303, 2
  br i1 %304, label %305, label %310

305:                                              ; preds = %301
  %306 = load i32*, i32** %4, align 8
  %307 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i32* %306)
  %308 = load i32*, i32** %4, align 8
  %309 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), i32* %308)
  br label %310

310:                                              ; preds = %305, %301
  br label %311

311:                                              ; preds = %310, %284
  br label %312

312:                                              ; preds = %311, %152
  br label %313

313:                                              ; preds = %312, %36
  store i32 0, i32* %7, align 4
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 4
  %316 = load i8**, i8*** %315, align 8
  store i8** %316, i8*** %11, align 8
  br label %317

317:                                              ; preds = %365, %313
  %318 = load i8**, i8*** %11, align 8
  %319 = load i8*, i8** %318, align 8
  %320 = icmp ne i8* %319, null
  br i1 %320, label %321, label %370

321:                                              ; preds = %317
  %322 = load i32, i32* %7, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %334

324:                                              ; preds = %321
  %325 = load i32, i32* %7, align 4
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = urem i32 %325, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %324
  %332 = load i32*, i32** %4, align 8
  %333 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i32* %332)
  br label %334

334:                                              ; preds = %331, %324, %321
  %335 = load i32*, i32** %4, align 8
  %336 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32* %335)
  %337 = load i8**, i8*** %11, align 8
  %338 = load i8*, i8** %337, align 8
  %339 = load i32*, i32** %4, align 8
  %340 = call i32 @latex_escaped_print(i8* %338, i32* %339)
  %341 = load i32*, i32** %4, align 8
  %342 = call i32 @fputc(i8 signext 125, i32* %341)
  %343 = load i32, i32* %7, align 4
  %344 = add i32 %343, 1
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = urem i32 %344, %347
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %360

350:                                              ; preds = %334
  %351 = load i32*, i32** %4, align 8
  %352 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i32* %351)
  %353 = load i16, i16* %6, align 2
  %354 = zext i16 %353 to i32
  %355 = icmp eq i32 %354, 3
  br i1 %355, label %356, label %359

356:                                              ; preds = %350
  %357 = load i32*, i32** %4, align 8
  %358 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32* %357)
  br label %359

359:                                              ; preds = %356, %350
  br label %360

360:                                              ; preds = %359, %334
  %361 = load i64, i64* @cancel_pressed, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %360
  br label %370

364:                                              ; preds = %360
  br label %365

365:                                              ; preds = %364
  %366 = load i32, i32* %7, align 4
  %367 = add i32 %366, 1
  store i32 %367, i32* %7, align 4
  %368 = load i8**, i8*** %11, align 8
  %369 = getelementptr inbounds i8*, i8** %368, i32 1
  store i8** %369, i8*** %11, align 8
  br label %317

370:                                              ; preds = %363, %317
  %371 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 5
  %373 = load %struct.TYPE_4__*, %struct.TYPE_4__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 3
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %370
  %378 = load i32*, i32** %4, align 8
  %379 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32* %378)
  br label %380

380:                                              ; preds = %30, %377, %370
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @strcspn(i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @latex_escaped_print(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
