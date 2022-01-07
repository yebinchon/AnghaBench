; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_latex_text.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_latex_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i8*, i8**, i8**, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i16, i64, i64 }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_8__* }

@cancel_pressed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"\\begin{center}\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\0A\\end{center}\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\\begin{tabular}{\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" |\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"\\hline\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" & \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"\\textit{\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" \\\\\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"\\end{tabular}\0A\0A\\noindent \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*)* @print_latex_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_latex_text(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i16, i16* %19, align 4
  store i16 %20, i16* %6, align 2
  %21 = load i64, i64* @cancel_pressed, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %246

24:                                               ; preds = %2
  %25 = load i16, i16* %6, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp sgt i32 %26, 3
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i16 3, i16* %6, align 2
  br label %29

29:                                               ; preds = %28, %24
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %155

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %36
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @latex_escaped_print(i8* %49, i32* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %52)
  br label %54

54:                                               ; preds = %44, %39, %36
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %55)
  %57 = load i16, i16* %6, align 2
  %58 = zext i16 %57 to i32
  %59 = icmp sge i32 %58, 2
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %61)
  br label %63

63:                                               ; preds = %60, %54
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %94, %63
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %70, label %97

70:                                               ; preds = %64
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @fputc(i8 signext %77, i32* %78)
  %80 = load i16, i16* %6, align 2
  %81 = zext i16 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %70
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = sub i32 %87, 1
  %89 = icmp ult i32 %84, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %91)
  br label %93

93:                                               ; preds = %90, %83, %70
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %64

97:                                               ; preds = %64
  %98 = load i16, i16* %6, align 2
  %99 = zext i16 %98 to i32
  %100 = icmp sge i32 %99, 2
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* %102)
  br label %104

104:                                              ; preds = %101, %97
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %105)
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %104
  %110 = load i16, i16* %6, align 2
  %111 = zext i16 %110 to i32
  %112 = icmp sge i32 %111, 2
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %114)
  br label %116

116:                                              ; preds = %113, %109, %104
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %154, label %119

119:                                              ; preds = %116
  store i32 0, i32* %7, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 3
  %122 = load i8**, i8*** %121, align 8
  store i8** %122, i8*** %8, align 8
  br label %123

123:                                              ; preds = %144, %119
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp ult i32 %124, %127
  br i1 %128, label %129, label %149

129:                                              ; preds = %123
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* %136)
  %138 = load i8**, i8*** %8, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @latex_escaped_print(i8* %139, i32* %140)
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @fputc(i8 signext 125, i32* %142)
  br label %144

144:                                              ; preds = %135
  %145 = load i32, i32* %7, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %7, align 4
  %147 = load i8**, i8*** %8, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i32 1
  store i8** %148, i8*** %8, align 8
  br label %123

149:                                              ; preds = %123
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %150)
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %152)
  br label %154

154:                                              ; preds = %149, %116
  br label %155

155:                                              ; preds = %154, %29
  store i32 0, i32* %7, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 4
  %158 = load i8**, i8*** %157, align 8
  store i8** %158, i8*** %8, align 8
  br label %159

159:                                              ; preds = %193, %155
  %160 = load i8**, i8*** %8, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %198

163:                                              ; preds = %159
  %164 = load i8**, i8*** %8, align 8
  %165 = load i8*, i8** %164, align 8
  %166 = load i32*, i32** %4, align 8
  %167 = call i32 @latex_escaped_print(i8* %165, i32* %166)
  %168 = load i32, i32* %7, align 4
  %169 = add i32 %168, 1
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = urem i32 %169, %172
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %163
  %176 = load i32*, i32** %4, align 8
  %177 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %176)
  %178 = load i16, i16* %6, align 2
  %179 = zext i16 %178 to i32
  %180 = icmp eq i32 %179, 3
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load i32*, i32** %4, align 8
  %183 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %182)
  br label %184

184:                                              ; preds = %181, %175
  %185 = load i64, i64* @cancel_pressed, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %198

188:                                              ; preds = %184
  br label %192

189:                                              ; preds = %163
  %190 = load i32*, i32** %4, align 8
  %191 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* %190)
  br label %192

192:                                              ; preds = %189, %188
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %7, align 4
  %195 = add i32 %194, 1
  store i32 %195, i32* %7, align 4
  %196 = load i8**, i8*** %8, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i32 1
  store i8** %197, i8*** %8, align 8
  br label %159

198:                                              ; preds = %187, %159
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 5
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %246

205:                                              ; preds = %198
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %207 = call %struct.TYPE_8__* @footers_with_default(%struct.TYPE_9__* %206)
  store %struct.TYPE_8__* %207, %struct.TYPE_8__** %9, align 8
  %208 = load i16, i16* %6, align 2
  %209 = zext i16 %208 to i32
  %210 = icmp eq i32 %209, 2
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = load i32*, i32** %4, align 8
  %213 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %212)
  br label %214

214:                                              ; preds = %211, %205
  %215 = load i32*, i32** %4, align 8
  %216 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32* %215)
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %218 = icmp ne %struct.TYPE_8__* %217, null
  br i1 %218, label %219, label %243

219:                                              ; preds = %214
  %220 = load i32, i32* %5, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %243, label %222

222:                                              ; preds = %219
  %223 = load i64, i64* @cancel_pressed, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %243, label %225

225:                                              ; preds = %222
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %226, %struct.TYPE_8__** %10, align 8
  br label %227

227:                                              ; preds = %238, %225
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %229 = icmp ne %struct.TYPE_8__* %228, null
  br i1 %229, label %230, label %242

230:                                              ; preds = %227
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = load i32*, i32** %4, align 8
  %235 = call i32 @latex_escaped_print(i8* %233, i32* %234)
  %236 = load i32*, i32** %4, align 8
  %237 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %236)
  br label %238

238:                                              ; preds = %230
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %240, align 8
  store %struct.TYPE_8__* %241, %struct.TYPE_8__** %10, align 8
  br label %227

242:                                              ; preds = %227
  br label %243

243:                                              ; preds = %242, %222, %219, %214
  %244 = load i32*, i32** %4, align 8
  %245 = call i32 @fputc(i8 signext 10, i32* %244)
  br label %246

246:                                              ; preds = %23, %243, %198
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @latex_escaped_print(i8*, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local %struct.TYPE_8__* @footers_with_default(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
