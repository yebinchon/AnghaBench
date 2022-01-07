; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_canvas_line.c_draw_horizontal_line.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_canvas_line.c_draw_horizontal_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@useUtf8 = common dso_local global i64 0, align 8
@useUtf8Curvy = common dso_local global i32 0, align 4
@RUNECODESTR_CURVE_CORNER_BL = common dso_local global i8* null, align 8
@RUNECODESTR_CURVE_CORNER_TR = common dso_local global i8* null, align 8
@RUNECODESTR_CORNER_BL = common dso_local global i8* null, align 8
@RUNECODESTR_CORNER_TR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@RUNECODESTR_CURVE_CORNER_TL = common dso_local global i8* null, align 8
@RUNECODESTR_CURVE_CORNER_BR = common dso_local global i8* null, align 8
@RUNECODESTR_CORNER_TL = common dso_local global i8* null, align 8
@RUNECODESTR_CORNER_BR = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32, i32)* @draw_horizontal_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_horizontal_line(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %227

20:                                               ; preds = %6
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %227

29:                                               ; preds = %20
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %227

41:                                               ; preds = %29
  %42 = load i32, i32* %11, align 4
  switch i32 %42, label %164 [
    i32 136, label %43
    i32 135, label %58
    i32 129, label %73
    i32 134, label %88
    i32 131, label %103
    i32 132, label %118
    i32 133, label %133
    i32 128, label %148
    i32 130, label %163
  ]

43:                                               ; preds = %41
  %44 = load i64, i64* @useUtf8, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load i32, i32* @useUtf8Curvy, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i8*, i8** @RUNECODESTR_CURVE_CORNER_BL, align 8
  store i8* %50, i8** %13, align 8
  %51 = load i8*, i8** @RUNECODESTR_CURVE_CORNER_TR, align 8
  store i8* %51, i8** %14, align 8
  br label %55

52:                                               ; preds = %46
  %53 = load i8*, i8** @RUNECODESTR_CORNER_BL, align 8
  store i8* %53, i8** %13, align 8
  %54 = load i8*, i8** @RUNECODESTR_CORNER_TR, align 8
  store i8* %54, i8** %14, align 8
  br label %55

55:                                               ; preds = %52, %49
  br label %57

56:                                               ; preds = %43
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %57

57:                                               ; preds = %56, %55
  br label %172

58:                                               ; preds = %41
  %59 = load i64, i64* @useUtf8, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i32, i32* @useUtf8Curvy, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i8*, i8** @RUNECODESTR_CURVE_CORNER_TL, align 8
  store i8* %65, i8** %13, align 8
  %66 = load i8*, i8** @RUNECODESTR_CURVE_CORNER_BR, align 8
  store i8* %66, i8** %14, align 8
  br label %70

67:                                               ; preds = %61
  %68 = load i8*, i8** @RUNECODESTR_CORNER_TL, align 8
  store i8* %68, i8** %13, align 8
  %69 = load i8*, i8** @RUNECODESTR_CORNER_BR, align 8
  store i8* %69, i8** %14, align 8
  br label %70

70:                                               ; preds = %67, %64
  br label %72

71:                                               ; preds = %58
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %72

72:                                               ; preds = %71, %70
  br label %172

73:                                               ; preds = %41
  %74 = load i64, i64* @useUtf8, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i32, i32* @useUtf8Curvy, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i8*, i8** @RUNECODESTR_CURVE_CORNER_BL, align 8
  store i8* %80, i8** %13, align 8
  %81 = load i8*, i8** @RUNECODESTR_CURVE_CORNER_BR, align 8
  store i8* %81, i8** %14, align 8
  br label %85

82:                                               ; preds = %76
  %83 = load i8*, i8** @RUNECODESTR_CORNER_BL, align 8
  store i8* %83, i8** %13, align 8
  %84 = load i8*, i8** @RUNECODESTR_CORNER_BR, align 8
  store i8* %84, i8** %14, align 8
  br label %85

85:                                               ; preds = %82, %79
  br label %87

86:                                               ; preds = %73
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %87

87:                                               ; preds = %86, %85
  br label %172

88:                                               ; preds = %41
  %89 = load i64, i64* @useUtf8, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i32, i32* @useUtf8Curvy, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i8*, i8** @RUNECODESTR_CURVE_CORNER_TL, align 8
  store i8* %95, i8** %13, align 8
  %96 = load i8*, i8** @RUNECODESTR_CURVE_CORNER_TR, align 8
  store i8* %96, i8** %14, align 8
  br label %100

97:                                               ; preds = %91
  %98 = load i8*, i8** @RUNECODESTR_CORNER_TL, align 8
  store i8* %98, i8** %13, align 8
  %99 = load i8*, i8** @RUNECODESTR_CORNER_TR, align 8
  store i8* %99, i8** %14, align 8
  br label %100

100:                                              ; preds = %97, %94
  br label %102

101:                                              ; preds = %88
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %102

102:                                              ; preds = %101, %100
  br label %172

103:                                              ; preds = %41
  %104 = load i64, i64* @useUtf8, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load i32, i32* %12, align 4
  %108 = call i8* @utf8_line_horiz(i32 %107)
  store i8* %108, i8** %13, align 8
  %109 = load i32, i32* @useUtf8Curvy, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i8*, i8** @RUNECODESTR_CURVE_CORNER_TR, align 8
  store i8* %112, i8** %14, align 8
  br label %115

113:                                              ; preds = %106
  %114 = load i8*, i8** @RUNECODESTR_CORNER_TR, align 8
  store i8* %114, i8** %14, align 8
  br label %115

115:                                              ; preds = %113, %111
  br label %117

116:                                              ; preds = %103
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  br label %117

117:                                              ; preds = %116, %115
  br label %172

118:                                              ; preds = %41
  %119 = load i64, i64* @useUtf8, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %118
  %122 = load i32, i32* %12, align 4
  %123 = call i8* @utf8_line_horiz(i32 %122)
  store i8* %123, i8** %13, align 8
  %124 = load i32, i32* @useUtf8Curvy, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i8*, i8** @RUNECODESTR_CURVE_CORNER_BR, align 8
  store i8* %127, i8** %14, align 8
  br label %130

128:                                              ; preds = %121
  %129 = load i8*, i8** @RUNECODESTR_CORNER_BR, align 8
  store i8* %129, i8** %14, align 8
  br label %130

130:                                              ; preds = %128, %126
  br label %132

131:                                              ; preds = %118
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %132

132:                                              ; preds = %131, %130
  br label %172

133:                                              ; preds = %41
  %134 = load i64, i64* @useUtf8, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = load i32, i32* @useUtf8Curvy, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i8*, i8** @RUNECODESTR_CURVE_CORNER_TL, align 8
  store i8* %140, i8** %13, align 8
  br label %143

141:                                              ; preds = %136
  %142 = load i8*, i8** @RUNECODESTR_CORNER_TL, align 8
  store i8* %142, i8** %13, align 8
  br label %143

143:                                              ; preds = %141, %139
  %144 = load i32, i32* %12, align 4
  %145 = call i8* @utf8_line_horiz(i32 %144)
  store i8* %145, i8** %14, align 8
  br label %147

146:                                              ; preds = %133
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  br label %147

147:                                              ; preds = %146, %143
  br label %172

148:                                              ; preds = %41
  %149 = load i64, i64* @useUtf8, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %148
  %152 = load i32, i32* @useUtf8Curvy, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i8*, i8** @RUNECODESTR_CURVE_CORNER_BL, align 8
  store i8* %155, i8** %13, align 8
  br label %158

156:                                              ; preds = %151
  %157 = load i8*, i8** @RUNECODESTR_CORNER_BL, align 8
  store i8* %157, i8** %13, align 8
  br label %158

158:                                              ; preds = %156, %154
  %159 = load i32, i32* %12, align 4
  %160 = call i8* @utf8_line_horiz(i32 %159)
  store i8* %160, i8** %14, align 8
  br label %162

161:                                              ; preds = %148
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  br label %162

162:                                              ; preds = %161, %158
  br label %172

163:                                              ; preds = %41
  br label %164

164:                                              ; preds = %41, %163
  %165 = load i64, i64* @useUtf8, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32, i32* %12, align 4
  %169 = call i8* @utf8_line_horiz(i32 %168)
  store i8* %169, i8** %14, align 8
  store i8* %169, i8** %13, align 8
  br label %171

170:                                              ; preds = %164
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %171

171:                                              ; preds = %170, %167
  br label %172

172:                                              ; preds = %171, %162, %147, %132, %117, %102, %87, %72, %57
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %9, align 4
  %175 = call i64 @G(i32 %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i8*, i8** %13, align 8
  %179 = call i32 @W(i8* %178)
  br label %180

180:                                              ; preds = %177, %172
  %181 = load i64, i64* @useUtf8, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* %12, align 4
  %185 = call i8* @utf8_line_horiz(i32 %184)
  br label %187

186:                                              ; preds = %180
  br label %187

187:                                              ; preds = %186, %183
  %188 = phi i8* [ %185, %183 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %186 ]
  store i8* %188, i8** %16, align 8
  %189 = call i32 @r_cons_break_push(i32* null, i32* null)
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %15, align 4
  br label %192

192:                                              ; preds = %212, %187
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %194, %195
  %197 = sub nsw i32 %196, 1
  %198 = icmp slt i32 %193, %197
  br i1 %198, label %199, label %215

199:                                              ; preds = %192
  %200 = call i64 (...) @r_cons_is_breaked()
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  br label %215

203:                                              ; preds = %199
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* %9, align 4
  %206 = call i64 @G(i32 %204, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i8*, i8** %16, align 8
  %210 = call i32 @W(i8* %209)
  br label %211

211:                                              ; preds = %208, %203
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %15, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %15, align 4
  br label %192

215:                                              ; preds = %202, %192
  %216 = call i32 (...) @r_cons_break_pop()
  %217 = load i32, i32* %8, align 4
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %217, %218
  %220 = sub nsw i32 %219, 1
  %221 = load i32, i32* %9, align 4
  %222 = call i64 @G(i32 %220, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %215
  %225 = load i8*, i8** %14, align 8
  %226 = call i32 @W(i8* %225)
  br label %227

227:                                              ; preds = %19, %28, %40, %224, %215
  ret void
}

declare dso_local i8* @utf8_line_horiz(i32) #1

declare dso_local i64 @G(i32, i32) #1

declare dso_local i32 @W(i8*) #1

declare dso_local i32 @r_cons_break_push(i32*, i32*) #1

declare dso_local i64 @r_cons_is_breaked(...) #1

declare dso_local i32 @r_cons_break_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
