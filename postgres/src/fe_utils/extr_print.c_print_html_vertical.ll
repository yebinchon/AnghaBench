; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_html_vertical.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_html_vertical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8**, i32, i8**, i8*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i16, i8*, i32, i64, i64 }

@cancel_pressed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"<table border=\22%d\22\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"  <caption>\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"</caption>\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"\0A  <tr><td colspan=\222\22 align=\22center\22>Record %lu</td></tr>\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"\0A  <tr><td colspan=\222\22>&nbsp;</td></tr>\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"  <tr valign=\22top\22>\0A    <th>\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"</th>\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"    <td align=\22%s\22>\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"&nbsp; \00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"</td>\0A  </tr>\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"</table>\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"<p>\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"<br />\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"</p>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*)* @print_html_vertical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_html_vertical(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 6
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 4
  store i16 %21, i16* %6, align 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %7, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* @cancel_pressed, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %214

37:                                               ; preds = %2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 6
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %37
  %45 = load i32*, i32** %4, align 8
  %46 = load i16, i16* %6, align 2
  %47 = zext i16 %46 to i32
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32*, i32** %4, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %51, %44
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %56)
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %66)
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @html_escaped_print(i8* %70, i32* %71)
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %73)
  br label %75

75:                                               ; preds = %65, %60, %55
  br label %76

76:                                               ; preds = %75, %37
  store i32 0, i32* %9, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i8**, i8*** %78, align 8
  store i8** %79, i8*** %10, align 8
  br label %80

80:                                               ; preds = %162, %76
  %81 = load i8**, i8*** %10, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %167

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = urem i32 %85, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %84
  %92 = load i64, i64* @cancel_pressed, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %167

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = load i32*, i32** %4, align 8
  %100 = load i64, i64* %8, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %8, align 8
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %99, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i64 %100)
  br label %106

103:                                              ; preds = %95
  %104 = load i32*, i32** %4, align 8
  %105 = call i32 @fputs(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32* %104)
  br label %106

106:                                              ; preds = %103, %98
  br label %107

107:                                              ; preds = %106, %84
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32* %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load i8**, i8*** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = urem i32 %113, %116
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %112, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @html_escaped_print(i8* %120, i32* %121)
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32* %123)
  %125 = load i32*, i32** %4, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 4
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = urem i32 %129, %132
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %128, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 114
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)
  %141 = call i32 (i32*, i8*, ...) @fprintf(i32* %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %140)
  %142 = load i8**, i8*** %10, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = load i8**, i8*** %10, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = call i64 @strspn(i8* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %107
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32* %152)
  br label %159

154:                                              ; preds = %107
  %155 = load i8**, i8*** %10, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = load i32*, i32** %4, align 8
  %158 = call i32 @html_escaped_print(i8* %156, i32* %157)
  br label %159

159:                                              ; preds = %154, %151
  %160 = load i32*, i32** %4, align 8
  %161 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32* %160)
  br label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %9, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %9, align 4
  %165 = load i8**, i8*** %10, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i32 1
  store i8** %166, i8*** %10, align 8
  br label %80

167:                                              ; preds = %94, %80
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 6
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %214

174:                                              ; preds = %167
  %175 = load i32*, i32** %4, align 8
  %176 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32* %175)
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %211, label %179

179:                                              ; preds = %174
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 5
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = icmp ne %struct.TYPE_6__* %182, null
  br i1 %183, label %184, label %211

184:                                              ; preds = %179
  %185 = load i64, i64* @cancel_pressed, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %211, label %187

187:                                              ; preds = %184
  %188 = load i32*, i32** %4, align 8
  %189 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32* %188)
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 5
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  store %struct.TYPE_6__* %192, %struct.TYPE_6__** %11, align 8
  br label %193

193:                                              ; preds = %204, %187
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %195 = icmp ne %struct.TYPE_6__* %194, null
  br i1 %195, label %196, label %208

196:                                              ; preds = %193
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = load i32*, i32** %4, align 8
  %201 = call i32 @html_escaped_print(i8* %199, i32* %200)
  %202 = load i32*, i32** %4, align 8
  %203 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32* %202)
  br label %204

204:                                              ; preds = %196
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  store %struct.TYPE_6__* %207, %struct.TYPE_6__** %11, align 8
  br label %193

208:                                              ; preds = %193
  %209 = load i32*, i32** %4, align 8
  %210 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32* %209)
  br label %211

211:                                              ; preds = %208, %184, %179, %174
  %212 = load i32*, i32** %4, align 8
  %213 = call i32 @fputc(i8 signext 10, i32* %212)
  br label %214

214:                                              ; preds = %36, %211, %167
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @html_escaped_print(i8*, i32*) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
