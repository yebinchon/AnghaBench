; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_troff_ms_vertical.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_print.c_print_troff_ms_vertical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8**, i32, i8**, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i16, i32, i64, i64 }

@cancel_pressed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c".LP\0A.DS C\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\0A.DE\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c".LP\0A.TS\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"center box;\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"center;\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"c l;\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"_\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".T&\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"c s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"\\fIRecord %lu\\fP\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"c l.\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"c | l.\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c".TE\0A.DS L\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c".DE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*)* @print_troff_ms_vertical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_troff_ms_vertical(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i16, align 2
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 4
  store i16 %21, i16* %6, align 2
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %7, align 8
  store i16 0, i16* %10, align 2
  %29 = load i64, i64* @cancel_pressed, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  br label %238

32:                                               ; preds = %2
  %33 = load i16, i16* %6, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp sgt i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i16 2, i16* %6, align 2
  br label %37

37:                                               ; preds = %36, %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %81

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @troff_ms_escaped_print(i8* %57, i32* %58)
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %60)
  br label %62

62:                                               ; preds = %52, %47, %44
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %63)
  %65 = load i16, i16* %6, align 2
  %66 = zext i16 %65 to i32
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %69)
  br label %74

71:                                               ; preds = %62
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %78)
  br label %80

80:                                               ; preds = %77, %74
  br label %82

81:                                               ; preds = %37
  store i16 2, i16* %10, align 2
  br label %82

82:                                               ; preds = %81, %80
  store i32 0, i32* %8, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i8**, i8*** %84, align 8
  store i8** %85, i8*** %9, align 8
  br label %86

86:                                               ; preds = %190, %82
  %87 = load i8**, i8*** %9, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %195

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = urem i32 %91, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %142

97:                                               ; preds = %90
  %98 = load i64, i64* @cancel_pressed, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %195

101:                                              ; preds = %97
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %134, label %104

104:                                              ; preds = %101
  %105 = load i16, i16* %10, align 2
  %106 = zext i16 %105 to i32
  %107 = icmp ne i32 %106, 1
  br i1 %107, label %108, label %128

108:                                              ; preds = %104
  %109 = load i16, i16* %6, align 2
  %110 = zext i16 %109 to i32
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i64, i64* %7, align 8
  %114 = icmp ugt i64 %113, 1
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %116)
  br label %118

118:                                              ; preds = %115, %112, %108
  %119 = load i16, i16* %10, align 2
  %120 = zext i16 %119 to i32
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %123)
  br label %125

125:                                              ; preds = %122, %118
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32* %126)
  store i16 1, i16* %10, align 2
  br label %128

128:                                              ; preds = %125, %104
  %129 = load i32*, i32** %4, align 8
  %130 = load i64, i64* %7, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %7, align 8
  %132 = trunc i64 %130 to i32
  %133 = call i32 @fprintf(i32* %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %128, %101
  %135 = load i16, i16* %6, align 2
  %136 = zext i16 %135 to i32
  %137 = icmp sge i32 %136, 1
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i32*, i32** %4, align 8
  %140 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* %139)
  br label %141

141:                                              ; preds = %138, %134
  br label %142

142:                                              ; preds = %141, %90
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %168, label %145

145:                                              ; preds = %142
  %146 = load i16, i16* %10, align 2
  %147 = zext i16 %146 to i32
  %148 = icmp ne i32 %147, 2
  br i1 %148, label %149, label %167

149:                                              ; preds = %145
  %150 = load i16, i16* %10, align 2
  %151 = zext i16 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i32*, i32** %4, align 8
  %155 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %154)
  br label %156

156:                                              ; preds = %153, %149
  %157 = load i16, i16* %6, align 2
  %158 = zext i16 %157 to i32
  %159 = icmp ne i32 %158, 1
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32*, i32** %4, align 8
  %162 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32* %161)
  br label %166

163:                                              ; preds = %156
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32* %164)
  br label %166

166:                                              ; preds = %163, %160
  store i16 2, i16* %10, align 2
  br label %167

167:                                              ; preds = %166, %145
  br label %168

168:                                              ; preds = %167, %142
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 3
  %171 = load i8**, i8*** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = urem i32 %172, %175
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %171, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = load i32*, i32** %4, align 8
  %181 = call i32 @troff_ms_escaped_print(i8* %179, i32* %180)
  %182 = load i32*, i32** %4, align 8
  %183 = call i32 @fputc(i8 signext 9, i32* %182)
  %184 = load i8**, i8*** %9, align 8
  %185 = load i8*, i8** %184, align 8
  %186 = load i32*, i32** %4, align 8
  %187 = call i32 @troff_ms_escaped_print(i8* %185, i32* %186)
  %188 = load i32*, i32** %4, align 8
  %189 = call i32 @fputc(i8 signext 10, i32* %188)
  br label %190

190:                                              ; preds = %168
  %191 = load i32, i32* %8, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %8, align 4
  %193 = load i8**, i8*** %9, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i32 1
  store i8** %194, i8*** %9, align 8
  br label %86

195:                                              ; preds = %100, %86
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 5
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %238

202:                                              ; preds = %195
  %203 = load i32*, i32** %4, align 8
  %204 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32* %203)
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 4
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = icmp ne %struct.TYPE_6__* %207, null
  br i1 %208, label %209, label %235

209:                                              ; preds = %202
  %210 = load i32, i32* %5, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %235, label %212

212:                                              ; preds = %209
  %213 = load i64, i64* @cancel_pressed, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %235, label %215

215:                                              ; preds = %212
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 4
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  store %struct.TYPE_6__* %218, %struct.TYPE_6__** %11, align 8
  br label %219

219:                                              ; preds = %230, %215
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %221 = icmp ne %struct.TYPE_6__* %220, null
  br i1 %221, label %222, label %234

222:                                              ; preds = %219
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = load i32*, i32** %4, align 8
  %227 = call i32 @troff_ms_escaped_print(i8* %225, i32* %226)
  %228 = load i32*, i32** %4, align 8
  %229 = call i32 @fputc(i8 signext 10, i32* %228)
  br label %230

230:                                              ; preds = %222
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  store %struct.TYPE_6__* %233, %struct.TYPE_6__** %11, align 8
  br label %219

234:                                              ; preds = %219
  br label %235

235:                                              ; preds = %234, %212, %209, %202
  %236 = load i32*, i32** %4, align 8
  %237 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* %236)
  br label %238

238:                                              ; preds = %31, %235, %195
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @troff_ms_escaped_print(i8*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
