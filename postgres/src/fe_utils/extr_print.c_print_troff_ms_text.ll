; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_troff_ms_text.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_troff_ms_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32, i8*, i8**, i8**, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i16, i64, i64 }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_8__* }

@cancel_pressed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c".LP\0A.DS C\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\0A.DE\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c".LP\0A.TS\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"center box;\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"center;\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\\fI\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\\fP\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\0A_\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c".TE\0A.DS L\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c".DE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*)* @print_troff_ms_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_troff_ms_text(%struct.TYPE_9__* %0, i32* %1) #0 {
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
  br label %216

24:                                               ; preds = %2
  %25 = load i16, i16* %6, align 2
  %26 = zext i16 %25 to i32
  %27 = icmp sgt i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i16 2, i16* %6, align 2
  br label %29

29:                                               ; preds = %28, %24
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 5
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %139

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
  %46 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @troff_ms_escaped_print(i8* %49, i32* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %52)
  br label %54

54:                                               ; preds = %44, %39, %36
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %55)
  %57 = load i16, i16* %6, align 2
  %58 = zext i16 %57 to i32
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %61)
  br label %66

63:                                               ; preds = %54
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %64)
  br label %66

66:                                               ; preds = %63, %60
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %97, %66
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %67
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @fputc(i8 signext %80, i32* %81)
  %83 = load i16, i16* %6, align 2
  %84 = zext i16 %83 to i32
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %73
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sub i32 %90, 1
  %92 = icmp ult i32 %87, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %94)
  br label %96

96:                                               ; preds = %93, %86, %73
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %67

100:                                              ; preds = %67
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %101)
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %138, label %105

105:                                              ; preds = %100
  store i32 0, i32* %7, align 4
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 3
  %108 = load i8**, i8*** %107, align 8
  store i8** %108, i8*** %8, align 8
  br label %109

109:                                              ; preds = %130, %105
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ult i32 %110, %113
  br i1 %114, label %115, label %135

115:                                              ; preds = %109
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @fputc(i8 signext 9, i32* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32* %122)
  %124 = load i8**, i8*** %8, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @troff_ms_escaped_print(i8* %125, i32* %126)
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* %128)
  br label %130

130:                                              ; preds = %121
  %131 = load i32, i32* %7, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %7, align 4
  %133 = load i8**, i8*** %8, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i32 1
  store i8** %134, i8*** %8, align 8
  br label %109

135:                                              ; preds = %109
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* %136)
  br label %138

138:                                              ; preds = %135, %100
  br label %139

139:                                              ; preds = %138, %29
  store i32 0, i32* %7, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 4
  %142 = load i8**, i8*** %141, align 8
  store i8** %142, i8*** %8, align 8
  br label %143

143:                                              ; preds = %170, %139
  %144 = load i8**, i8*** %8, align 8
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %175

147:                                              ; preds = %143
  %148 = load i8**, i8*** %8, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @troff_ms_escaped_print(i8* %149, i32* %150)
  %152 = load i32, i32* %7, align 4
  %153 = add i32 %152, 1
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = urem i32 %153, %156
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %147
  %160 = load i32*, i32** %4, align 8
  %161 = call i32 @fputc(i8 signext 10, i32* %160)
  %162 = load i64, i64* @cancel_pressed, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  br label %175

165:                                              ; preds = %159
  br label %169

166:                                              ; preds = %147
  %167 = load i32*, i32** %4, align 8
  %168 = call i32 @fputc(i8 signext 9, i32* %167)
  br label %169

169:                                              ; preds = %166, %165
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %7, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %7, align 4
  %173 = load i8**, i8*** %8, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i32 1
  store i8** %174, i8*** %8, align 8
  br label %143

175:                                              ; preds = %164, %143
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 5
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %216

182:                                              ; preds = %175
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %184 = call %struct.TYPE_8__* @footers_with_default(%struct.TYPE_9__* %183)
  store %struct.TYPE_8__* %184, %struct.TYPE_8__** %9, align 8
  %185 = load i32*, i32** %4, align 8
  %186 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32* %185)
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %188 = icmp ne %struct.TYPE_8__* %187, null
  br i1 %188, label %189, label %213

189:                                              ; preds = %182
  %190 = load i32, i32* %5, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %213, label %192

192:                                              ; preds = %189
  %193 = load i64, i64* @cancel_pressed, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %213, label %195

195:                                              ; preds = %192
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %196, %struct.TYPE_8__** %10, align 8
  br label %197

197:                                              ; preds = %208, %195
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %199 = icmp ne %struct.TYPE_8__* %198, null
  br i1 %199, label %200, label %212

200:                                              ; preds = %197
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = load i32*, i32** %4, align 8
  %205 = call i32 @troff_ms_escaped_print(i8* %203, i32* %204)
  %206 = load i32*, i32** %4, align 8
  %207 = call i32 @fputc(i8 signext 10, i32* %206)
  br label %208

208:                                              ; preds = %200
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  store %struct.TYPE_8__* %211, %struct.TYPE_8__** %10, align 8
  br label %197

212:                                              ; preds = %197
  br label %213

213:                                              ; preds = %212, %192, %189, %182
  %214 = load i32*, i32** %4, align 8
  %215 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32* %214)
  br label %216

216:                                              ; preds = %23, %213, %175
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @troff_ms_escaped_print(i8*, i32*) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local %struct.TYPE_8__* @footers_with_default(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
