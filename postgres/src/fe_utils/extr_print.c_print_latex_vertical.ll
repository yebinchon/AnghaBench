; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_latex_vertical.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_latex_vertical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8**, i32, i8**, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i16, i32, i64, i64 }

@cancel_pressed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"\\begin{center}\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\0A\\end{center}\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"\\begin{tabular}{\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"c|l\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"|c|l|\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"\\hline\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"\\multicolumn{2}{|c|}{\\textit{Record %lu}} \\\\\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"\\multicolumn{2}{c}{\\textit{Record %lu}} \\\\\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c" & \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" \\\\\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"\\end{tabular}\0A\0A\\noindent \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*)* @print_latex_vertical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_latex_vertical(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i16, i16* %19, align 4
  store i16 %20, i16* %6, align 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* @cancel_pressed, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  br label %215

31:                                               ; preds = %2
  %32 = load i16, i16* %6, align 2
  %33 = zext i16 %32 to i32
  %34 = icmp sgt i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i16 2, i16* %6, align 2
  br label %36

36:                                               ; preds = %35, %31
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %89

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %43
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @latex_escaped_print(i8* %56, i32* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %59)
  br label %61

61:                                               ; preds = %51, %46, %43
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %62)
  %64 = load i16, i16* %6, align 2
  %65 = zext i16 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %68)
  br label %86

70:                                               ; preds = %61
  %71 = load i16, i16* %6, align 2
  %72 = zext i16 %71 to i32
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %75)
  br label %85

77:                                               ; preds = %70
  %78 = load i16, i16* %6, align 2
  %79 = zext i16 %78 to i32
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %82)
  br label %84

84:                                               ; preds = %81, %77
  br label %85

85:                                               ; preds = %84, %74
  br label %86

86:                                               ; preds = %85, %67
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %87)
  br label %89

89:                                               ; preds = %86, %36
  store i32 0, i32* %8, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i8**, i8*** %91, align 8
  store i8** %92, i8*** %9, align 8
  br label %93

93:                                               ; preds = %160, %89
  %94 = load i8**, i8*** %9, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %165

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = urem i32 %98, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %138

104:                                              ; preds = %97
  %105 = load i64, i64* @cancel_pressed, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %165

108:                                              ; preds = %104
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %130, label %111

111:                                              ; preds = %108
  %112 = load i16, i16* %6, align 2
  %113 = zext i16 %112 to i32
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %116)
  %118 = load i32*, i32** %4, align 8
  %119 = load i64, i64* %7, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %7, align 8
  %121 = trunc i64 %119 to i32
  %122 = call i32 @fprintf(i32* %118, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  br label %129

123:                                              ; preds = %111
  %124 = load i32*, i32** %4, align 8
  %125 = load i64, i64* %7, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %7, align 8
  %127 = trunc i64 %125 to i32
  %128 = call i32 @fprintf(i32* %124, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %123, %115
  br label %130

130:                                              ; preds = %129, %108
  %131 = load i16, i16* %6, align 2
  %132 = zext i16 %131 to i32
  %133 = icmp sge i32 %132, 1
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %135)
  br label %137

137:                                              ; preds = %134, %130
  br label %138

138:                                              ; preds = %137, %97
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  %141 = load i8**, i8*** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = urem i32 %142, %145
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %141, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @latex_escaped_print(i8* %149, i32* %150)
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32* %152)
  %154 = load i8**, i8*** %9, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = load i32*, i32** %4, align 8
  %157 = call i32 @latex_escaped_print(i8* %155, i32* %156)
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32* %158)
  br label %160

160:                                              ; preds = %138
  %161 = load i32, i32* %8, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %8, align 4
  %163 = load i8**, i8*** %9, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i32 1
  store i8** %164, i8*** %9, align 8
  br label %93

165:                                              ; preds = %107, %93
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 5
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %215

172:                                              ; preds = %165
  %173 = load i16, i16* %6, align 2
  %174 = zext i16 %173 to i32
  %175 = icmp eq i32 %174, 2
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i32*, i32** %4, align 8
  %178 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %177)
  br label %179

179:                                              ; preds = %176, %172
  %180 = load i32*, i32** %4, align 8
  %181 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32* %180)
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 4
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  %185 = icmp ne %struct.TYPE_6__* %184, null
  br i1 %185, label %186, label %212

186:                                              ; preds = %179
  %187 = load i32, i32* %5, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %212, label %189

189:                                              ; preds = %186
  %190 = load i64, i64* @cancel_pressed, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %212, label %192

192:                                              ; preds = %189
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 4
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %194, align 8
  store %struct.TYPE_6__* %195, %struct.TYPE_6__** %10, align 8
  br label %196

196:                                              ; preds = %207, %192
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %198 = icmp ne %struct.TYPE_6__* %197, null
  br i1 %198, label %199, label %211

199:                                              ; preds = %196
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = load i32*, i32** %4, align 8
  %204 = call i32 @latex_escaped_print(i8* %202, i32* %203)
  %205 = load i32*, i32** %4, align 8
  %206 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32* %205)
  br label %207

207:                                              ; preds = %199
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %209, align 8
  store %struct.TYPE_6__* %210, %struct.TYPE_6__** %10, align 8
  br label %196

211:                                              ; preds = %196
  br label %212

212:                                              ; preds = %211, %189, %186, %179
  %213 = load i32*, i32** %4, align 8
  %214 = call i32 @fputc(i8 signext 10, i32* %213)
  br label %215

215:                                              ; preds = %30, %212, %165
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @latex_escaped_print(i8*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
