; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/meira/keymaps/grahampheath/extr_keymap.c_process_record_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/meira/keymaps/grahampheath/extr_keymap.c_process_record_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_LOWER = common dso_local global i32 0, align 4
@_RAISE = common dso_local global i32 0, align 4
@_ADJUST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Stepping backlight\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&fliptable;\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c":-\\\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"&shit; \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c":'-( \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"&llap; \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c":-D \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c":-P \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c":-) \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c":-( \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"<3 \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"&shrug; \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"&thumbup; \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"&thumbdown; \00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"&fingerleft; \00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"&fingerright; \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c";-) \00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"&above; \00", align 1
@tone_colemak = common dso_local global i32 0, align 4
@tone_dvorak = common dso_local global i32 0, align 4
@tone_qwerty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_record_user(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %249 [
    i32 135, label %7
    i32 148, label %15
    i32 145, label %23
    i32 136, label %31
    i32 134, label %52
    i32 151, label %73
    i32 149, label %86
    i32 150, label %87
    i32 144, label %96
    i32 147, label %105
    i32 133, label %114
    i32 146, label %123
    i32 137, label %132
    i32 140, label %141
    i32 129, label %150
    i32 138, label %159
    i32 141, label %168
    i32 139, label %177
    i32 132, label %186
    i32 130, label %195
    i32 131, label %204
    i32 143, label %213
    i32 142, label %222
    i32 128, label %231
    i32 152, label %240
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13, %7
  store i32 0, i32* %3, align 4
  br label %250

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21, %15
  store i32 0, i32* %3, align 4
  br label %250

23:                                               ; preds = %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %23
  store i32 0, i32* %3, align 4
  br label %250

31:                                               ; preds = %2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* @_LOWER, align 4
  %39 = call i32 @layer_on(i32 %38)
  %40 = load i32, i32* @_LOWER, align 4
  %41 = load i32, i32* @_RAISE, align 4
  %42 = load i32, i32* @_ADJUST, align 4
  %43 = call i32 @update_tri_layer(i32 %40, i32 %41, i32 %42)
  br label %51

44:                                               ; preds = %31
  %45 = load i32, i32* @_LOWER, align 4
  %46 = call i32 @layer_off(i32 %45)
  %47 = load i32, i32* @_LOWER, align 4
  %48 = load i32, i32* @_RAISE, align 4
  %49 = load i32, i32* @_ADJUST, align 4
  %50 = call i32 @update_tri_layer(i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %44, %37
  store i32 0, i32* %3, align 4
  br label %250

52:                                               ; preds = %2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i32, i32* @_RAISE, align 4
  %60 = call i32 @layer_on(i32 %59)
  %61 = load i32, i32* @_LOWER, align 4
  %62 = load i32, i32* @_RAISE, align 4
  %63 = load i32, i32* @_ADJUST, align 4
  %64 = call i32 @update_tri_layer(i32 %61, i32 %62, i32 %63)
  br label %72

65:                                               ; preds = %52
  %66 = load i32, i32* @_RAISE, align 4
  %67 = call i32 @layer_off(i32 %66)
  %68 = load i32, i32* @_LOWER, align 4
  %69 = load i32, i32* @_RAISE, align 4
  %70 = load i32, i32* @_ADJUST, align 4
  %71 = call i32 @update_tri_layer(i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %58
  store i32 0, i32* %3, align 4
  br label %250

73:                                               ; preds = %2
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @_ADJUST, align 4
  %81 = call i32 @layer_on(i32 %80)
  br label %85

82:                                               ; preds = %73
  %83 = load i32, i32* @_ADJUST, align 4
  %84 = call i32 @layer_off(i32 %83)
  br label %85

85:                                               ; preds = %82, %79
  store i32 0, i32* %3, align 4
  br label %250

86:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %250

87:                                               ; preds = %2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = call i32 @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %87
  store i32 0, i32* %3, align 4
  br label %250

96:                                               ; preds = %2
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = call i32 @SEND_STRING(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %96
  store i32 0, i32* %3, align 4
  br label %250

105:                                              ; preds = %2
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = call i32 @SEND_STRING(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %105
  br label %249

114:                                              ; preds = %2
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = call i32 @SEND_STRING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %114
  store i32 0, i32* %3, align 4
  br label %250

123:                                              ; preds = %2
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = call i32 @SEND_STRING(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %123
  store i32 0, i32* %3, align 4
  br label %250

132:                                              ; preds = %2
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = call i32 @SEND_STRING(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %132
  store i32 0, i32* %3, align 4
  br label %250

141:                                              ; preds = %2
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = call i32 @SEND_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %141
  store i32 0, i32* %3, align 4
  br label %250

150:                                              ; preds = %2
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = call i32 @SEND_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %150
  store i32 0, i32* %3, align 4
  br label %250

159:                                              ; preds = %2
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = call i32 @SEND_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %159
  store i32 0, i32* %3, align 4
  br label %250

168:                                              ; preds = %2
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = call i32 @SEND_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %168
  store i32 0, i32* %3, align 4
  br label %250

177:                                              ; preds = %2
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = call i32 @SEND_STRING(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %177
  store i32 0, i32* %3, align 4
  br label %250

186:                                              ; preds = %2
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %186
  %193 = call i32 @SEND_STRING(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %186
  store i32 0, i32* %3, align 4
  br label %250

195:                                              ; preds = %2
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = call i32 @SEND_STRING(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  br label %203

203:                                              ; preds = %201, %195
  store i32 0, i32* %3, align 4
  br label %250

204:                                              ; preds = %2
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %204
  %211 = call i32 @SEND_STRING(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %204
  store i32 0, i32* %3, align 4
  br label %250

213:                                              ; preds = %2
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %213
  %220 = call i32 @SEND_STRING(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  br label %221

221:                                              ; preds = %219, %213
  store i32 0, i32* %3, align 4
  br label %250

222:                                              ; preds = %2
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %222
  %229 = call i32 @SEND_STRING(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  br label %230

230:                                              ; preds = %228, %222
  store i32 0, i32* %3, align 4
  br label %250

231:                                              ; preds = %2
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %231
  %238 = call i32 @SEND_STRING(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %239

239:                                              ; preds = %237, %231
  store i32 0, i32* %3, align 4
  br label %250

240:                                              ; preds = %2
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = call i32 @SEND_STRING(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  br label %248

248:                                              ; preds = %246, %240
  store i32 0, i32* %3, align 4
  br label %250

249:                                              ; preds = %2, %113
  store i32 1, i32* %3, align 4
  br label %250

250:                                              ; preds = %249, %248, %239, %230, %221, %212, %203, %194, %185, %176, %167, %158, %149, %140, %131, %122, %104, %95, %86, %85, %72, %51, %30, %22, %14
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local i32 @layer_on(i32) #1

declare dso_local i32 @update_tri_layer(i32, i32, i32) #1

declare dso_local i32 @layer_off(i32) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @SEND_STRING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
