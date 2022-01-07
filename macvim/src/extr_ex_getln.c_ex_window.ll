; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_ex_getln.c_ex_window.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_ex_getln.c_ex_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__, i64, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__, i8* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_22__ = type { i32* }
%struct.cmdline_info = type { i32, i32, i32, i32*, i32* }

@curbuf = common dso_local global %struct.TYPE_21__* null, align 8
@curwin = common dso_local global %struct.TYPE_20__* null, align 8
@restart_edit = common dso_local global i32 0, align 4
@State = common dso_local global i32 0, align 4
@exmode_active = common dso_local global i32 0, align 4
@cmdwin_type = common dso_local global i64 0, align 8
@K_IGNORE = common dso_local global i32 0, align 4
@cmdmod = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@p_cwh = common dso_local global i64 0, align 8
@WSP_BOT = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@ECMD_ONE = common dso_local global i32 0, align 4
@ECMD_HIDE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"[Command Line]\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"bt\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"nofile\00", align 1
@OPT_LOCAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"swf\00", align 1
@FALSE = common dso_local global i8* null, align 8
@need_wait_return = common dso_local global i8* null, align 8
@HIST_CMD = common dso_local global i32 0, align 4
@HIST_DEBUG = common dso_local global i32 0, align 4
@p_wc = common dso_local global i64 0, align 8
@TAB = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"<buffer> <Tab> <C-X><C-V>\00", align 1
@INSERT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"<buffer> <Tab> a<C-X><C-V>\00", align 1
@NORMAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"ft\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"vim\00", align 1
@hislen = common dso_local global i32 0, align 4
@hisidx = common dso_local global i32* null, align 8
@history = common dso_local global %struct.TYPE_22__** null, align 8
@ccline = common dso_local global %struct.cmdline_info zeroinitializer, align 8
@SOME_VALID = common dso_local global i32 0, align 4
@RedrawingDisabled = common dso_local global i32 0, align 4
@cmdwin_result = common dso_local global i32 0, align 4
@Ctrl_C = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"E199: Active window or buffer deleted\00", align 1
@K_XF1 = common dso_local global i32 0, align 4
@K_XF2 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"qa\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"qa!\00", align 1
@CAR = common dso_local global i8 0, align 1
@DOBUF_WIPE = common dso_local global i32 0, align 4
@EVENT_CMDWINENTER = common dso_local global i32 0, align 4
@EVENT_CMDWINLEAVE = common dso_local global i32 0, align 4
@K_NOP = common dso_local global i8 0, align 1
@NUL = common dso_local global i64 0, align 8
@cmdline_star = common dso_local global i64 0, align 8
@cmdmsg_rl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ex_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ex_window() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cmdline_info, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** @curbuf, align 8
  store %struct.TYPE_21__* %15, %struct.TYPE_21__** %3, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** @curwin, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %4, align 8
  %17 = load i32, i32* @restart_edit, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @State, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @exmode_active, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i64, i64* @cmdwin_type, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %0
  %23 = call i32 (...) @beep_flush()
  %24 = load i32, i32* @K_IGNORE, align 4
  store i32 %24, i32* %1, align 4
  br label %283

25:                                               ; preds = %0
  %26 = call i32 @win_size_save(i32* %10)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cmdmod, i32 0, i32 0), align 8
  %27 = load i64, i64* @p_cwh, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @WSP_BOT, align 4
  %30 = call i64 @win_split(i32 %28, i32 %29)
  %31 = load i64, i64* @FAIL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = call i32 (...) @beep_flush()
  %35 = load i32, i32* @K_IGNORE, align 4
  store i32 %35, i32* %1, align 4
  br label %283

36:                                               ; preds = %25
  %37 = call i64 (...) @get_cmdline_type()
  store i64 %37, i64* @cmdwin_type, align 8
  %38 = load i32, i32* @ECMD_ONE, align 4
  %39 = load i32, i32* @ECMD_HIDE, align 4
  %40 = call i32 @do_ecmd(i32 0, i32* null, i32* null, i32* null, i32 %38, i32 %39, i32* null)
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** @curbuf, align 8
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @setfname(%struct.TYPE_21__* %41, i64* bitcast ([15 x i8]* @.str to i64*), i32* null, i32 %42)
  %44 = load i32, i32* @OPT_LOCAL, align 4
  %45 = call i32 @set_option_value(i64* bitcast ([3 x i8]* @.str.1 to i64*), i64 0, i64* bitcast ([7 x i8]* @.str.2 to i64*), i32 %44)
  %46 = load i32, i32* @OPT_LOCAL, align 4
  %47 = call i32 @set_option_value(i64* bitcast ([4 x i8]* @.str.3 to i64*), i64 0, i64* null, i32 %46)
  %48 = load i32, i32* @TRUE, align 4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** @curbuf, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** @curwin, align 8
  %52 = call i32 @RESET_BINDING(%struct.TYPE_20__* %51)
  %53 = load i8*, i8** @FALSE, align 8
  store i8* %53, i8** @need_wait_return, align 8
  %54 = load i64, i64* @cmdwin_type, align 8
  %55 = call i32 @hist_char2type(i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @HIST_CMD, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %36
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @HIST_DEBUG, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %59, %36
  %64 = load i64, i64* @p_wc, align 8
  %65 = load i64, i64* @TAB, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* @INSERT, align 4
  %69 = call i32 @add_map(i64* bitcast ([26 x i8]* @.str.4 to i64*), i32 %68)
  %70 = load i32, i32* @NORMAL, align 4
  %71 = call i32 @add_map(i64* bitcast ([27 x i8]* @.str.5 to i64*), i32 %70)
  br label %72

72:                                               ; preds = %67, %63
  %73 = load i32, i32* @OPT_LOCAL, align 4
  %74 = call i32 @set_option_value(i64* bitcast ([3 x i8]* @.str.6 to i64*), i64 0, i64* bitcast ([4 x i8]* @.str.7 to i64*), i32 %73)
  br label %75

75:                                               ; preds = %72, %59
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** @curbuf, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = call i32 (...) @init_history()
  %79 = load i32, i32* @hislen, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %135

81:                                               ; preds = %75
  %82 = load i32*, i32** @hisidx, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %134

89:                                               ; preds = %81
  store i64 0, i64* %8, align 8
  br label %90

90:                                               ; preds = %125, %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* @hislen, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %95, %90
  %97 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @history, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %97, i64 %99
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %124

108:                                              ; preds = %96
  %109 = load i64, i64* %8, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %8, align 8
  %111 = trunc i64 %109 to i32
  %112 = load %struct.TYPE_22__**, %struct.TYPE_22__*** @history, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %112, i64 %114
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i8*, i8** @FALSE, align 8
  %123 = call i32 @ml_append(i32 %111, i32* %121, i32 0, i8* %122)
  br label %124

124:                                              ; preds = %108, %96
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %7, align 4
  %127 = load i32*, i32** @hisidx, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %126, %131
  br i1 %132, label %90, label %133

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %81
  br label %135

135:                                              ; preds = %134, %75
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** @curbuf, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32*, i32** getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 3), align 8
  %141 = load i32, i32* @TRUE, align 4
  %142 = call i32 @ml_replace(i32 %139, i32* %140, i32 %141)
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** @curbuf, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** @curwin, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 4
  %150 = load i32, i32* getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 0), align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** @curwin, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 4
  %154 = call i32 (...) @changed_line_abv_curs()
  %155 = call i32 (...) @invalidate_botline()
  %156 = load i32, i32* @SOME_VALID, align 4
  %157 = call i32 @redraw_later(i32 %156)
  %158 = bitcast %struct.cmdline_info* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 bitcast (%struct.cmdline_info* @ccline to i8*), i64 32, i1 false)
  store i32* null, i32** getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 4), align 8
  store i32 0, i32* @exmode_active, align 4
  %159 = load i32, i32* @NORMAL, align 4
  store i32 %159, i32* @State, align 4
  %160 = load i32, i32* @RedrawingDisabled, align 4
  store i32 %160, i32* %7, align 4
  store i32 0, i32* @RedrawingDisabled, align 4
  store i32 0, i32* @cmdwin_result, align 4
  %161 = load i32, i32* @TRUE, align 4
  %162 = load i8*, i8** @FALSE, align 8
  %163 = call i32 @main_loop(i32 %161, i8* %162)
  %164 = load i32, i32* %7, align 4
  store i32 %164, i32* @RedrawingDisabled, align 4
  %165 = bitcast %struct.cmdline_info* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.cmdline_info* @ccline to i8*), i8* align 8 %165, i64 32, i1 false)
  store i64 0, i64* @cmdwin_type, align 8
  %166 = load i32, i32* %13, align 4
  store i32 %166, i32* @exmode_active, align 4
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %168 = call i32 @win_valid(%struct.TYPE_20__* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %135
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %172 = call i64 @buf_valid(%struct.TYPE_21__* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %170, %135
  %175 = load i32, i32* @Ctrl_C, align 4
  store i32 %175, i32* @cmdwin_result, align 4
  %176 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %177 = call i32 @EMSG(i32 %176)
  br label %278

178:                                              ; preds = %170
  %179 = load i32*, i32** getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 3), align 8
  %180 = call i32 @vim_free(i32* %179)
  %181 = load i32, i32* @cmdwin_result, align 4
  %182 = load i32, i32* @K_XF1, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %188, label %184

184:                                              ; preds = %178
  %185 = load i32, i32* @cmdwin_result, align 4
  %186 = load i32, i32* @K_XF2, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %212

188:                                              ; preds = %184, %178
  %189 = load i32, i32* @cmdwin_result, align 4
  %190 = load i32, i32* @K_XF2, align 4
  %191 = icmp eq i32 %189, %190
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  store i8* %193, i8** %14, align 8
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* @HIST_CMD, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %188
  %198 = load i8*, i8** %14, align 8
  %199 = bitcast i8* %198 to i64*
  %200 = call i8* @vim_strsave(i64* %199)
  %201 = bitcast i8* %200 to i32*
  store i32* %201, i32** getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 3), align 8
  %202 = load i8, i8* @CAR, align 1
  %203 = sext i8 %202 to i32
  store i32 %203, i32* @cmdwin_result, align 4
  br label %211

204:                                              ; preds = %188
  store i32* null, i32** getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 3), align 8
  %205 = call i32 @stuffcharReadbuff(i8 signext 58)
  %206 = load i8*, i8** %14, align 8
  %207 = bitcast i8* %206 to i64*
  %208 = call i32 @stuffReadbuff(i64* %207)
  %209 = load i8, i8* @CAR, align 1
  %210 = call i32 @stuffcharReadbuff(i8 signext %209)
  br label %211

211:                                              ; preds = %204, %197
  br label %232

212:                                              ; preds = %184
  %213 = load i32, i32* @cmdwin_result, align 4
  %214 = load i32, i32* @K_XF2, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %212
  %217 = call i8* @vim_strsave(i64* bitcast ([3 x i8]* @.str.9 to i64*))
  %218 = bitcast i8* %217 to i32*
  store i32* %218, i32** getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 3), align 8
  %219 = load i8, i8* @CAR, align 1
  %220 = sext i8 %219 to i32
  store i32 %220, i32* @cmdwin_result, align 4
  br label %231

221:                                              ; preds = %212
  %222 = load i32, i32* @cmdwin_result, align 4
  %223 = load i32, i32* @Ctrl_C, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  store i32* null, i32** getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 3), align 8
  br label %230

226:                                              ; preds = %221
  %227 = call i64* (...) @ml_get_curline()
  %228 = call i8* @vim_strsave(i64* %227)
  %229 = bitcast i8* %228 to i32*
  store i32* %229, i32** getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 3), align 8
  br label %230

230:                                              ; preds = %226, %225
  br label %231

231:                                              ; preds = %230, %216
  br label %232

232:                                              ; preds = %231, %211
  %233 = load i32*, i32** getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 3), align 8
  %234 = icmp eq i32* %233, null
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = load i32, i32* @Ctrl_C, align 4
  store i32 %236, i32* @cmdwin_result, align 4
  br label %260

237:                                              ; preds = %232
  %238 = load i32*, i32** getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 3), align 8
  %239 = call i64 @STRLEN(i32* %238)
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 1), align 4
  %241 = load i32, i32* getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 1), align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 2), align 8
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** @curwin, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 0), align 8
  %247 = load i32, i32* getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 0), align 8
  %248 = load i32, i32* getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 1), align 4
  %249 = icmp sgt i32 %247, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %237
  %251 = load i32, i32* getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 1), align 4
  store i32 %251, i32* getelementptr inbounds (%struct.cmdline_info, %struct.cmdline_info* @ccline, i32 0, i32 0), align 8
  br label %252

252:                                              ; preds = %250, %237
  %253 = load i32, i32* @cmdwin_result, align 4
  %254 = load i32, i32* @K_IGNORE, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = call i32 (...) @set_cmdspos_cursor()
  %258 = call i32 (...) @redrawcmd()
  br label %259

259:                                              ; preds = %256, %252
  br label %260

260:                                              ; preds = %259, %235
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** @curwin, align 8
  store %struct.TYPE_20__* %261, %struct.TYPE_20__** %6, align 8
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** @curbuf, align 8
  store %struct.TYPE_21__* %262, %struct.TYPE_21__** %5, align 8
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %264 = call i32 @win_goto(%struct.TYPE_20__* %263)
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %266 = load i32, i32* @TRUE, align 4
  %267 = call i32 @win_close(%struct.TYPE_20__* %265, i32 %266)
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %269 = call i64 @buf_valid(%struct.TYPE_21__* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %260
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %273 = load i32, i32* @DOBUF_WIPE, align 4
  %274 = load i8*, i8** @FALSE, align 8
  %275 = call i32 @close_buffer(i32* null, %struct.TYPE_21__* %272, i32 %273, i8* %274)
  br label %276

276:                                              ; preds = %271, %260
  %277 = call i32 @win_size_restore(i32* %10)
  br label %278

278:                                              ; preds = %276, %174
  %279 = call i32 @ga_clear(i32* %10)
  %280 = load i32, i32* %11, align 4
  store i32 %280, i32* @restart_edit, align 4
  %281 = load i32, i32* %12, align 4
  store i32 %281, i32* @State, align 4
  %282 = load i32, i32* @cmdwin_result, align 4
  store i32 %282, i32* %1, align 4
  br label %283

283:                                              ; preds = %278, %33, %22
  %284 = load i32, i32* %1, align 4
  ret i32 %284
}

declare dso_local i32 @beep_flush(...) #1

declare dso_local i32 @win_size_save(i32*) #1

declare dso_local i64 @win_split(i32, i32) #1

declare dso_local i64 @get_cmdline_type(...) #1

declare dso_local i32 @do_ecmd(i32, i32*, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @setfname(%struct.TYPE_21__*, i64*, i32*, i32) #1

declare dso_local i32 @set_option_value(i64*, i64, i64*, i32) #1

declare dso_local i32 @RESET_BINDING(%struct.TYPE_20__*) #1

declare dso_local i32 @hist_char2type(i64) #1

declare dso_local i32 @add_map(i64*, i32) #1

declare dso_local i32 @init_history(...) #1

declare dso_local i32 @ml_append(i32, i32*, i32, i8*) #1

declare dso_local i32 @ml_replace(i32, i32*, i32) #1

declare dso_local i32 @changed_line_abv_curs(...) #1

declare dso_local i32 @invalidate_botline(...) #1

declare dso_local i32 @redraw_later(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @main_loop(i32, i8*) #1

declare dso_local i32 @win_valid(%struct.TYPE_20__*) #1

declare dso_local i64 @buf_valid(%struct.TYPE_21__*) #1

declare dso_local i32 @EMSG(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @vim_free(i32*) #1

declare dso_local i8* @vim_strsave(i64*) #1

declare dso_local i32 @stuffcharReadbuff(i8 signext) #1

declare dso_local i32 @stuffReadbuff(i64*) #1

declare dso_local i64* @ml_get_curline(...) #1

declare dso_local i64 @STRLEN(i32*) #1

declare dso_local i32 @set_cmdspos_cursor(...) #1

declare dso_local i32 @redrawcmd(...) #1

declare dso_local i32 @win_goto(%struct.TYPE_20__*) #1

declare dso_local i32 @win_close(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @close_buffer(i32*, %struct.TYPE_21__*, i32, i8*) #1

declare dso_local i32 @win_size_restore(i32*) #1

declare dso_local i32 @ga_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
