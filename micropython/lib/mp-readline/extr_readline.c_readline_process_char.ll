; ModuleID = '/home/carl/AnghaBench/micropython/lib/mp-readline/extr_readline.c_readline_process_char.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/mp-readline/extr_readline.c_readline_process_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64, i8*, i32*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i8* }

@rl = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ESEQ_NONE = common dso_local global i64 0, align 8
@CHAR_CTRL_A = common dso_local global i32 0, align 4
@CHAR_CTRL_E = common dso_local global i32 0, align 4
@CHAR_CTRL_C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@ESEQ_ESC = common dso_local global i64 0, align 8
@ESEQ_ESC_BRACKET = common dso_local global i64 0, align 8
@ESEQ_ESC_O = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"(ESC %d)\00", align 1
@ESEQ_ESC_BRACKET_DIGIT = common dso_local global i64 0, align 8
@READLINE_HIST_SIZE = common dso_local global i64 0, align 8
@readline_hist = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"(ESC [ %d)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"(ESC [ %c %d)\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"(ESC O %d)\00", align 1
@CHAR_CTRL_B = common dso_local global i32 0, align 4
@CHAR_CTRL_D = common dso_local global i32 0, align 4
@CHAR_CTRL_F = common dso_local global i32 0, align 4
@CHAR_CTRL_K = common dso_local global i32 0, align 4
@CHAR_CTRL_N = common dso_local global i32 0, align 4
@CHAR_CTRL_P = common dso_local global i32 0, align 4
@CHAR_CTRL_U = common dso_local global i32 0, align 4
@mp_plat_print = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readline_process_char(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 0), align 8
  %13 = load i64, i64* @ESEQ_NONE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %103

15:                                               ; preds = %1
  %16 = load i32, i32* @CHAR_CTRL_A, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @CHAR_CTRL_E, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %25 = call i32 @vstr_len(%struct.TYPE_9__* %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 1), align 8
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  store i32 %29, i32* %2, align 4
  br label %424

30:                                               ; preds = %23, %19, %15
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @CHAR_CTRL_A, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %279

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @CHAR_CTRL_C, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* %2, align 4
  br label %424

41:                                               ; preds = %35
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @CHAR_CTRL_E, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %296

46:                                               ; preds = %41
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, 13
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = call i32 @mp_hal_stdout_tx_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %52 = call i64 @vstr_null_terminated_str(%struct.TYPE_9__* %51)
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 1), align 8
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i32 @readline_push_history(i64 %55)
  store i32 0, i32* %2, align 4
  br label %424

57:                                               ; preds = %46
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %58, 27
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* @ESEQ_ESC, align 8
  store i64 %61, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 0), align 8
  br label %97

62:                                               ; preds = %57
  %63 = load i32, i32* %3, align 4
  %64 = icmp eq i32 %63, 8
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %3, align 4
  %67 = icmp eq i32 %66, 127
  br i1 %67, label %68, label %84

68:                                               ; preds = %65, %62
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 1), align 8
  %71 = sext i32 %70 to i64
  %72 = icmp ugt i64 %69, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  store i32 1, i32* %8, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = sub i64 %75, %77
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @vstr_cut_out_bytes(%struct.TYPE_9__* %74, i32 %79, i32 %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %83

83:                                               ; preds = %73, %68
  br label %96

84:                                               ; preds = %65
  %85 = load i32, i32* %3, align 4
  %86 = icmp sle i32 32, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32, i32* %3, align 4
  %89 = icmp sle i32 %88, 126
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @vstr_ins_char(%struct.TYPE_9__* %91, i64 %92, i32 %93)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %95

95:                                               ; preds = %90, %87, %84
  br label %96

96:                                               ; preds = %95, %83
  br label %97

97:                                               ; preds = %96, %60
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  br label %356

103:                                              ; preds = %1
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 0), align 8
  %105 = load i64, i64* @ESEQ_ESC, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = load i32, i32* %3, align 4
  switch i32 %108, label %113 [
    i32 91, label %109
    i32 79, label %111
  ]

109:                                              ; preds = %107
  %110 = load i64, i64* @ESEQ_ESC_BRACKET, align 8
  store i64 %110, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 0), align 8
  br label %117

111:                                              ; preds = %107
  %112 = load i64, i64* @ESEQ_ESC_O, align 8
  store i64 %112, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 0), align 8
  br label %117

113:                                              ; preds = %107
  %114 = load i32, i32* %3, align 4
  %115 = call i32 (i8*, i32, ...) @DEBUG_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = load i64, i64* @ESEQ_NONE, align 8
  store i64 %116, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 0), align 8
  br label %117

117:                                              ; preds = %113, %111, %109
  br label %355

118:                                              ; preds = %103
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 0), align 8
  %120 = load i64, i64* @ESEQ_ESC_BRACKET, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %261

122:                                              ; preds = %118
  %123 = load i32, i32* %3, align 4
  %124 = icmp sle i32 48, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load i32, i32* %3, align 4
  %127 = icmp sle i32 %126, 57
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i64, i64* @ESEQ_ESC_BRACKET_DIGIT, align 8
  store i64 %129, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 0), align 8
  %130 = load i32, i32* %3, align 4
  %131 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 4), align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %130, i32* %132, align 4
  br label %260

133:                                              ; preds = %125, %122
  %134 = load i64, i64* @ESEQ_NONE, align 8
  store i64 %134, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 0), align 8
  %135 = load i32, i32* %3, align 4
  %136 = icmp eq i32 %135, 65
  br i1 %136, label %137, label %180

137:                                              ; preds = %133
  %138 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 5), align 8
  %139 = add nsw i32 %138, 1
  %140 = load i64, i64* @READLINE_HIST_SIZE, align 8
  %141 = trunc i64 %140 to i32
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %143, label %179

143:                                              ; preds = %137
  %144 = load i32, i32* @readline_hist, align 4
  %145 = call i32** @MP_STATE_PORT(i32 %144)
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 5), align 8
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32*, i32** %145, i64 %148
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %179

152:                                              ; preds = %143
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 5), align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 5), align 8
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 1), align 8
  %156 = sext i32 %155 to i64
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %160 = load i32, i32* @readline_hist, align 4
  %161 = call i32** @MP_STATE_PORT(i32 %160)
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 5), align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @vstr_add_str(%struct.TYPE_9__* %159, i32* %165)
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %168 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 1), align 8
  %169 = sext i32 %168 to i64
  %170 = sub i64 %167, %169
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 1), align 8
  %176 = sext i32 %175 to i64
  %177 = sub i64 %174, %176
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %152, %143, %137
  br label %259

180:                                              ; preds = %133
  %181 = load i32, i32* %3, align 4
  %182 = icmp eq i32 %181, 66
  br i1 %182, label %183, label %222

183:                                              ; preds = %180
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 5), align 8
  %185 = icmp sge i32 %184, 0
  br i1 %185, label %186, label %221

186:                                              ; preds = %183
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 5), align 8
  %188 = sub nsw i32 %187, 1
  store i32 %188, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 5), align 8
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 1), align 8
  %194 = sext i32 %193 to i64
  %195 = sub i64 %192, %194
  %196 = call i32 @vstr_cut_tail_bytes(%struct.TYPE_9__* %189, i64 %195)
  %197 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 5), align 8
  %198 = icmp sge i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %186
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %201 = load i32, i32* @readline_hist, align 4
  %202 = call i32** @MP_STATE_PORT(i32 %201)
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 5), align 8
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32*, i32** %202, i64 %204
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @vstr_add_str(%struct.TYPE_9__* %200, i32* %206)
  br label %208

208:                                              ; preds = %199, %186
  %209 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 1), align 8
  %211 = sext i32 %210 to i64
  %212 = sub i64 %209, %211
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %214 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 1), align 8
  %218 = sext i32 %217 to i64
  %219 = sub i64 %216, %218
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %7, align 4
  br label %221

221:                                              ; preds = %208, %183
  br label %258

222:                                              ; preds = %180
  %223 = load i32, i32* %3, align 4
  %224 = icmp eq i32 %223, 67
  br i1 %224, label %225, label %233

225:                                              ; preds = %222
  %226 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ult i64 %226, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %225
  store i32 1, i32* %7, align 4
  br label %232

232:                                              ; preds = %231, %225
  br label %257

233:                                              ; preds = %222
  %234 = load i32, i32* %3, align 4
  %235 = icmp eq i32 %234, 68
  br i1 %235, label %236, label %243

236:                                              ; preds = %233
  %237 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %238 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 1), align 8
  %239 = sext i32 %238 to i64
  %240 = icmp ugt i64 %237, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %236
  store i32 1, i32* %5, align 4
  br label %242

242:                                              ; preds = %241, %236
  br label %256

243:                                              ; preds = %233
  %244 = load i32, i32* %3, align 4
  %245 = icmp eq i32 %244, 72
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  br label %279

247:                                              ; preds = %243
  %248 = load i32, i32* %3, align 4
  %249 = icmp eq i32 %248, 70
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  br label %296

251:                                              ; preds = %247
  %252 = load i32, i32* %3, align 4
  %253 = call i32 (i8*, i32, ...) @DEBUG_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %252)
  br label %254

254:                                              ; preds = %251
  br label %255

255:                                              ; preds = %254
  br label %256

256:                                              ; preds = %255, %242
  br label %257

257:                                              ; preds = %256, %232
  br label %258

258:                                              ; preds = %257, %221
  br label %259

259:                                              ; preds = %258, %179
  br label %260

260:                                              ; preds = %259, %128
  br label %354

261:                                              ; preds = %118
  %262 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 0), align 8
  %263 = load i64, i64* @ESEQ_ESC_BRACKET_DIGIT, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %337

265:                                              ; preds = %261
  %266 = load i32, i32* %3, align 4
  %267 = icmp eq i32 %266, 126
  br i1 %267, label %268, label %329

268:                                              ; preds = %265
  %269 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 4), align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  %271 = load i32, i32* %270, align 4
  %272 = icmp eq i32 %271, 49
  br i1 %272, label %278, label %273

273:                                              ; preds = %268
  %274 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 4), align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = icmp eq i32 %276, 55
  br i1 %277, label %278, label %285

278:                                              ; preds = %273, %268
  br label %279

279:                                              ; preds = %343, %278, %246, %34
  %280 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %281 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 1), align 8
  %282 = sext i32 %281 to i64
  %283 = sub i64 %280, %282
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %5, align 4
  br label %328

285:                                              ; preds = %273
  %286 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 4), align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 0
  %288 = load i32, i32* %287, align 4
  %289 = icmp eq i32 %288, 52
  br i1 %289, label %295, label %290

290:                                              ; preds = %285
  %291 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 4), align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %293, 56
  br i1 %294, label %295, label %303

295:                                              ; preds = %290, %285
  br label %296

296:                                              ; preds = %344, %295, %250, %45
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %301 = sub i64 %299, %300
  %302 = trunc i64 %301 to i32
  store i32 %302, i32* %7, align 4
  br label %327

303:                                              ; preds = %290
  %304 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 4), align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %306, 51
  br i1 %307, label %308, label %320

308:                                              ; preds = %303
  %309 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %310 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = icmp ult i64 %309, %312
  br i1 %313, label %314, label %319

314:                                              ; preds = %308
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %316 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %317 = trunc i64 %316 to i32
  %318 = call i32 @vstr_cut_out_bytes(%struct.TYPE_9__* %315, i32 %317, i32 1)
  store i32 1, i32* %6, align 4
  br label %319

319:                                              ; preds = %314, %308
  br label %326

320:                                              ; preds = %303
  %321 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 4), align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 0
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %3, align 4
  %325 = call i32 (i8*, i32, ...) @DEBUG_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %323, i32 %324)
  br label %326

326:                                              ; preds = %320, %319
  br label %327

327:                                              ; preds = %326, %296
  br label %328

328:                                              ; preds = %327, %279
  br label %335

329:                                              ; preds = %265
  %330 = load i32*, i32** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 4), align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 0
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* %3, align 4
  %334 = call i32 (i8*, i32, ...) @DEBUG_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %332, i32 %333)
  br label %335

335:                                              ; preds = %329, %328
  %336 = load i64, i64* @ESEQ_NONE, align 8
  store i64 %336, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 0), align 8
  br label %353

337:                                              ; preds = %261
  %338 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 0), align 8
  %339 = load i64, i64* @ESEQ_ESC_O, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %350

341:                                              ; preds = %337
  %342 = load i32, i32* %3, align 4
  switch i32 %342, label %345 [
    i32 72, label %343
    i32 70, label %344
  ]

343:                                              ; preds = %341
  br label %279

344:                                              ; preds = %341
  br label %296

345:                                              ; preds = %341
  %346 = load i32, i32* %3, align 4
  %347 = call i32 (i8*, i32, ...) @DEBUG_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %346)
  %348 = load i64, i64* @ESEQ_NONE, align 8
  store i64 %348, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 0), align 8
  br label %349

349:                                              ; preds = %345
  br label %352

350:                                              ; preds = %337
  %351 = load i64, i64* @ESEQ_NONE, align 8
  store i64 %351, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 0), align 8
  br label %352

352:                                              ; preds = %350, %349
  br label %353

353:                                              ; preds = %352, %335
  br label %354

354:                                              ; preds = %353, %260
  br label %355

355:                                              ; preds = %354, %117
  br label %356

356:                                              ; preds = %355, %102
  %357 = load i32, i32* %5, align 4
  %358 = icmp sgt i32 %357, 0
  br i1 %358, label %359, label %366

359:                                              ; preds = %356
  %360 = load i32, i32* %5, align 4
  %361 = call i32 @mp_hal_move_cursor_back(i32 %360)
  %362 = load i32, i32* %5, align 4
  %363 = sext i32 %362 to i64
  %364 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %365 = sub i64 %364, %363
  store i64 %365, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  br label %366

366:                                              ; preds = %359, %356
  %367 = load i32, i32* %6, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %407

369:                                              ; preds = %366
  %370 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %371 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* %4, align 8
  %374 = icmp ult i64 %372, %373
  br i1 %374, label %375, label %380

375:                                              ; preds = %369
  %376 = load i64, i64* %4, align 8
  %377 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %378 = sub i64 %376, %377
  %379 = call i32 @mp_hal_erase_line_from_cursor(i64 %378)
  br label %380

380:                                              ; preds = %375, %369
  %381 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 1
  %383 = load i8*, i8** %382, align 8
  %384 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %385 = getelementptr inbounds i8, i8* %383, i64 %384
  %386 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %390 = sub i64 %388, %389
  %391 = trunc i64 %390 to i32
  %392 = call i32 @mp_hal_stdout_tx_strn(i8* %385, i32 %391)
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %394 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %397 = load i32, i32* %7, align 4
  %398 = sext i32 %397 to i64
  %399 = add i64 %396, %398
  %400 = sub i64 %395, %399
  %401 = trunc i64 %400 to i32
  %402 = call i32 @mp_hal_move_cursor_back(i32 %401)
  %403 = load i32, i32* %7, align 4
  %404 = sext i32 %403 to i64
  %405 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %406 = add i64 %405, %404
  store i64 %406, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  br label %423

407:                                              ; preds = %366
  %408 = load i32, i32* %7, align 4
  %409 = icmp sgt i32 %408, 0
  br i1 %409, label %410, label %422

410:                                              ; preds = %407
  %411 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 6), align 8
  %412 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %411, i32 0, i32 1
  %413 = load i8*, i8** %412, align 8
  %414 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %415 = getelementptr inbounds i8, i8* %413, i64 %414
  %416 = load i32, i32* %7, align 4
  %417 = call i32 @mp_hal_stdout_tx_strn(i8* %415, i32 %416)
  %418 = load i32, i32* %7, align 4
  %419 = sext i32 %418 to i64
  %420 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  %421 = add i64 %420, %419
  store i64 %421, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @rl, i32 0, i32 2), align 8
  br label %422

422:                                              ; preds = %410, %407
  br label %423

423:                                              ; preds = %422, %380
  store i32 -1, i32* %2, align 4
  br label %424

424:                                              ; preds = %423, %49, %39, %28
  %425 = load i32, i32* %2, align 4
  ret i32 %425
}

declare dso_local i32 @vstr_len(%struct.TYPE_9__*) #1

declare dso_local i32 @mp_hal_stdout_tx_str(i8*) #1

declare dso_local i32 @readline_push_history(i64) #1

declare dso_local i64 @vstr_null_terminated_str(%struct.TYPE_9__*) #1

declare dso_local i32 @vstr_cut_out_bytes(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @vstr_ins_char(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @DEBUG_printf(i8*, i32, ...) #1

declare dso_local i32** @MP_STATE_PORT(i32) #1

declare dso_local i32 @vstr_add_str(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @vstr_cut_tail_bytes(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @mp_hal_move_cursor_back(i32) #1

declare dso_local i32 @mp_hal_erase_line_from_cursor(i64) #1

declare dso_local i32 @mp_hal_stdout_tx_strn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
