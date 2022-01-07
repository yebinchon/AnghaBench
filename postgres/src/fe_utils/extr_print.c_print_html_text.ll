; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_html_text.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_html_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8**, i8**, i32, i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i16, i8*, i64, i64 }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_8__* }

@cancel_pressed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"<table border=\22%d\22\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c">\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"  <caption>\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"</caption>\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"  <tr>\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"    <th align=\22center\22>\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"</th>\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"  </tr>\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"  <tr valign=\22top\22>\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"    <td align=\22%s\22>\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"&nbsp; \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"</td>\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"</table>\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"<p>\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"<br />\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"</p>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*)* @print_html_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_html_text(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 4
  store i16 %21, i16* %6, align 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %7, align 8
  %27 = load i64, i64* @cancel_pressed, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %218

30:                                               ; preds = %2
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %97

37:                                               ; preds = %30
  %38 = load i32*, i32** %4, align 8
  %39 = load i16, i16* %6, align 2
  %40 = zext i16 %39 to i32
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32*, i32** %4, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %37
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @html_escaped_print(i8* %63, i32* %64)
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %66)
  br label %68

68:                                               ; preds = %58, %53, %48
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %96, label %71

71:                                               ; preds = %68
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* %72)
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  store i8** %76, i8*** %9, align 8
  br label %77

77:                                               ; preds = %90, %71
  %78 = load i8**, i8*** %9, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32* %82)
  %84 = load i8**, i8*** %9, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @html_escaped_print(i8* %85, i32* %86)
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %88)
  br label %90

90:                                               ; preds = %81
  %91 = load i8**, i8*** %9, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i32 1
  store i8** %92, i8*** %9, align 8
  br label %77

93:                                               ; preds = %77
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %94)
  br label %96

96:                                               ; preds = %93, %68
  br label %97

97:                                               ; preds = %96, %30
  store i32 0, i32* %8, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i8**, i8*** %99, align 8
  store i8** %100, i8*** %9, align 8
  br label %101

101:                                              ; preds = %168, %97
  %102 = load i8**, i8*** %9, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %173

105:                                              ; preds = %101
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = urem i32 %106, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load i64, i64* @cancel_pressed, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  br label %173

116:                                              ; preds = %112
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32* %117)
  br label %119

119:                                              ; preds = %116, %105
  %120 = load i32*, i32** %4, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 4
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = urem i32 %124, %127
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %123, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 114
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0)
  %136 = call i32 (i32*, i8*, ...) @fprintf(i32* %120, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %135)
  %137 = load i8**, i8*** %9, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = load i8**, i8*** %9, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = call i64 @strspn(i8* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %119
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32* %147)
  br label %154

149:                                              ; preds = %119
  %150 = load i8**, i8*** %9, align 8
  %151 = load i8*, i8** %150, align 8
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 @html_escaped_print(i8* %151, i32* %152)
  br label %154

154:                                              ; preds = %149, %146
  %155 = load i32*, i32** %4, align 8
  %156 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32* %155)
  %157 = load i32, i32* %8, align 4
  %158 = add i32 %157, 1
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = urem i32 %158, %161
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %154
  %165 = load i32*, i32** %4, align 8
  %166 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %165)
  br label %167

167:                                              ; preds = %164, %154
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %8, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %8, align 4
  %171 = load i8**, i8*** %9, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i32 1
  store i8** %172, i8*** %9, align 8
  br label %101

173:                                              ; preds = %115, %101
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 5
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %218

180:                                              ; preds = %173
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %182 = call %struct.TYPE_8__* @footers_with_default(%struct.TYPE_9__* %181)
  store %struct.TYPE_8__* %182, %struct.TYPE_8__** %10, align 8
  %183 = load i32*, i32** %4, align 8
  %184 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32* %183)
  %185 = load i32, i32* %5, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %215, label %187

187:                                              ; preds = %180
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %189 = icmp ne %struct.TYPE_8__* %188, null
  br i1 %189, label %190, label %215

190:                                              ; preds = %187
  %191 = load i64, i64* @cancel_pressed, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %215, label %193

193:                                              ; preds = %190
  %194 = load i32*, i32** %4, align 8
  %195 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32* %194)
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %196, %struct.TYPE_8__** %11, align 8
  br label %197

197:                                              ; preds = %208, %193
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %199 = icmp ne %struct.TYPE_8__* %198, null
  br i1 %199, label %200, label %212

200:                                              ; preds = %197
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = load i32*, i32** %4, align 8
  %205 = call i32 @html_escaped_print(i8* %203, i32* %204)
  %206 = load i32*, i32** %4, align 8
  %207 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32* %206)
  br label %208

208:                                              ; preds = %200
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  store %struct.TYPE_8__* %211, %struct.TYPE_8__** %11, align 8
  br label %197

212:                                              ; preds = %197
  %213 = load i32*, i32** %4, align 8
  %214 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i32* %213)
  br label %215

215:                                              ; preds = %212, %190, %187, %180
  %216 = load i32*, i32** %4, align 8
  %217 = call i32 @fputc(i8 signext 10, i32* %216)
  br label %218

218:                                              ; preds = %29, %215, %173
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @html_escaped_print(i8*, i32*) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @footers_with_default(%struct.TYPE_9__*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
