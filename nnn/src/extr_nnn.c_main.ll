; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_main.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8 }
%struct.stat = type { i32 }
%struct.sigaction = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"HSKiab:cde:fnop:rstvh\00", align 1
@cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@sum_bsizes = common dso_local global i32 0, align 4
@nftw_fn = common dso_local global i32 0, align 4
@S_BLKSIZE = common dso_local global i32 0, align 4
@blk_shift = common dso_local global i32 0, align 4
@printent_long = common dso_local global i32 0, align 4
@printptr = common dso_local global i32* null, align 8
@optarg = common dso_local global i8* null, align 8
@xstrverscasecmp = common dso_local global i32 0, align 4
@cmpfn = common dso_local global i32* null, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@_FAILURE = common dso_local global i32 0, align 4
@g_selpath = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@visible_str = common dso_local global i32 0, align 4
@filterfn = common dso_local global i32* null, align 8
@_SUCCESS = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@VERSION = common dso_local global i8* null, align 8
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@env_cfg = common dso_local global i8** null, align 8
@NNN_CONTEXT_COLORS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"4444\00", align 1
@copier = common dso_local global i8* null, align 8
@CTX_MAX = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"0 <= code <= 7\0A\00", align 1
@g_ctx = common dso_local global %struct.TYPE_3__* null, align 8
@cleanup = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@home = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"set HOME\0A\00", align 1
@NNN_OPENER = common dso_local global i64 0, align 8
@utils = common dso_local global i8** null, align 8
@OPENER = common dso_local global i64 0, align 8
@opener = common dso_local global i8* null, align 8
@bookmark = common dso_local global i32 0, align 4
@bmstr = common dso_local global i32 0, align 4
@NNN_BMS = common dso_local global i64 0, align 8
@BM_MAX = common dso_local global i32 0, align 4
@plug = common dso_local global i32 0, align 4
@pluginstr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"NNN_PLUG\00", align 1
@PLUGIN_MAX = common dso_local global i32 0, align 4
@initpath = common dso_local global i8* null, align 8
@messages = common dso_local global i8** null, align 8
@STR_INVBM_KEY = common dso_local global i64 0, align 8
@optind = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"file://\00", align 1
@F_NOWAIT = common dso_local global i32 0, align 4
@NNN_USE_EDITOR = common dso_local global i64 0, align 8
@envs = common dso_local global i8** null, align 8
@VISUAL = common dso_local global i64 0, align 8
@EDITOR = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"vi\00", align 1
@editor = common dso_local global i8* null, align 8
@PAGER = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"less\00", align 1
@pager = common dso_local global i8* null, align 8
@SHELL = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@shell = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@NNNLVL = common dso_local global i64 0, align 8
@idletimeout = common dso_local global i64 0, align 8
@NNN_IDLE_TIMEOUT = common dso_local global i64 0, align 8
@NNN_TRASH = common dso_local global i64 0, align 8
@NNN_COPIER = common dso_local global i64 0, align 8
@cp = common dso_local global i8* null, align 8
@mv = common dso_local global i8* null, align 8
@sigint_handler = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"completion-ignore-case\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@rl_menu_complete = common dso_local global i32 0, align 4
@cfgdir = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [9 x i8] c".history\00", align 1
@g_buf = common dso_local global i32 0, align 4
@selbufpos = common dso_local global i64 0, align 8
@pselbuf = common dso_local global i32 0, align 4
@IN_NONBLOCK = common dso_local global i32 0, align 4
@event_fd = common dso_local global i64 0, align 8
@inotify_fd = common dso_local global i64 0, align 8
@inotify_wd = common dso_local global i64 0, align 8
@kq = common dso_local global i64 0, align 8
@rl_change_environment = common dso_local global i64 0, align 8
@rl_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 4
  %13 = alloca %struct.sigaction, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %90, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %9, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %91

20:                                               ; preds = %15
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %87 [
    i32 83, label %22
    i32 100, label %27
    i32 105, label %28
    i32 97, label %29
    i32 98, label %30
    i32 99, label %32
    i32 101, label %33
    i32 102, label %35
    i32 72, label %36
    i32 110, label %37
    i32 111, label %38
    i32 112, label %39
    i32 114, label %72
    i32 115, label %74
    i32 116, label %75
    i32 75, label %76
    i32 118, label %79
    i32 104, label %84
  ]

22:                                               ; preds = %20
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 0), align 4
  %23 = load i32, i32* @sum_bsizes, align 4
  store i32 %23, i32* @nftw_fn, align 4
  %24 = load i32, i32* @S_BLKSIZE, align 4
  %25 = call i32 @ffs(i32 %24)
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* @blk_shift, align 4
  br label %27

27:                                               ; preds = %20, %22
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 1), align 4
  store i32* @printent_long, i32** @printptr, align 8
  br label %90

28:                                               ; preds = %20
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 2), align 4
  br label %90

29:                                               ; preds = %20
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 13), align 4
  br label %90

30:                                               ; preds = %20
  %31 = load i8*, i8** @optarg, align 8
  store i8* %31, i8** %7, align 8
  br label %90

32:                                               ; preds = %20
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 3), align 4
  br label %90

33:                                               ; preds = %20
  %34 = load i8*, i8** @optarg, align 8
  store i8* %34, i8** %8, align 8
  br label %90

35:                                               ; preds = %20
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 4), align 4
  br label %90

36:                                               ; preds = %20
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 5), align 4
  br label %90

37:                                               ; preds = %20
  store i32* @xstrverscasecmp, i32** @cmpfn, align 8
  br label %90

38:                                               ; preds = %20
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 6), align 4
  br label %90

39:                                               ; preds = %20
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 7), align 4
  %40 = load i8*, i8** @optarg, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 45
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i8*, i8** @optarg, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 8), align 4
  br label %71

52:                                               ; preds = %45, %39
  %53 = load i8*, i8** @optarg, align 8
  %54 = load i32, i32* @O_WRONLY, align 4
  %55 = load i32, i32* @O_CREAT, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @open(i8* %53, i32 %56, i32 384)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = call i32 (...) @xerror()
  %62 = load i32, i32* @_FAILURE, align 4
  store i32 %62, i32* %3, align 4
  br label %480

63:                                               ; preds = %52
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = call i32 @close(i64 %65)
  %67 = load i8*, i8** @optarg, align 8
  %68 = call i8* @realpath(i8* %67, i32* null)
  store i8* %68, i8** @g_selpath, align 8
  %69 = load i8*, i8** @g_selpath, align 8
  %70 = call i32 @unlink(i8* %69)
  br label %71

71:                                               ; preds = %63, %51
  br label %90

72:                                               ; preds = %20
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %10, align 4
  br label %90

74:                                               ; preds = %20
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 12), align 4
  store i32* @visible_str, i32** @filterfn, align 8
  br label %90

75:                                               ; preds = %20
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 11), align 4
  br label %90

76:                                               ; preds = %20
  %77 = call i32 (...) @check_key_collision()
  %78 = load i32, i32* @_SUCCESS, align 4
  store i32 %78, i32* %3, align 4
  br label %480

79:                                               ; preds = %20
  %80 = load i32, i32* @stdout, align 4
  %81 = load i8*, i8** @VERSION, align 8
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* @_SUCCESS, align 4
  store i32 %83, i32* %3, align 4
  br label %480

84:                                               ; preds = %20
  %85 = call i32 (...) @usage()
  %86 = load i32, i32* @_SUCCESS, align 4
  store i32 %86, i32* %3, align 4
  br label %480

87:                                               ; preds = %20
  %88 = call i32 (...) @usage()
  %89 = load i32, i32* @_FAILURE, align 4
  store i32 %89, i32* %3, align 4
  br label %480

90:                                               ; preds = %75, %74, %72, %71, %38, %37, %36, %35, %33, %32, %30, %29, %28, %27
  br label %15

91:                                               ; preds = %15
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 7), align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @STDIN_FILENO, align 4
  %96 = call i64 @isatty(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32, i32* @STDOUT_FILENO, align 4
  %100 = call i64 @isatty(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98, %94
  %103 = call i32 @exit(i32 1) #3
  unreachable

104:                                              ; preds = %98, %91
  %105 = load i8**, i8*** @env_cfg, align 8
  %106 = load i64, i64* @NNN_CONTEXT_COLORS, align 8
  %107 = getelementptr inbounds i8*, i8** %105, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @xgetenv(i8* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %109, i8** @copier, align 8
  store i32 0, i32* %9, align 4
  br label %110

110:                                              ; preds = %151, %104
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @CTX_MAX, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %154

114:                                              ; preds = %110
  %115 = load i8*, i8** @copier, align 8
  %116 = load i8, i8* %115, align 1
  %117 = icmp ne i8 %116, 0
  br i1 %117, label %118, label %145

118:                                              ; preds = %114
  %119 = load i8*, i8** @copier, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp slt i32 %121, 48
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load i8*, i8** @copier, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp sgt i32 %126, 55
  br i1 %127, label %128, label %132

128:                                              ; preds = %123, %118
  %129 = load i32, i32* @stderr, align 4
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32, i32* @_FAILURE, align 4
  store i32 %131, i32* %3, align 4
  br label %480

132:                                              ; preds = %123
  %133 = load i8*, i8** @copier, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = sub nsw i32 %135, 48
  %137 = trunc i32 %136 to i8
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_ctx, align 8
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  store i8 %137, i8* %142, align 1
  %143 = load i8*, i8** @copier, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** @copier, align 8
  br label %151

145:                                              ; preds = %114
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_ctx, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  store i8 4, i8* %150, align 1
  br label %151

151:                                              ; preds = %145, %132
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %110

154:                                              ; preds = %110
  %155 = load i32, i32* @cleanup, align 4
  %156 = call i32 @atexit(i32 %155)
  %157 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %157, i8** @home, align 8
  %158 = load i8*, i8** @home, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %164, label %160

160:                                              ; preds = %154
  %161 = load i32, i32* @stderr, align 4
  %162 = call i32 (i32, i8*, ...) @fprintf(i32 %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %163 = load i32, i32* @_FAILURE, align 4
  store i32 %163, i32* %3, align 4
  br label %480

164:                                              ; preds = %154
  %165 = load i8*, i8** @home, align 8
  %166 = call i32 @DPRINTF_S(i8* %165)
  %167 = call i32 (...) @setup_config()
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %164
  %170 = load i32, i32* @_FAILURE, align 4
  store i32 %170, i32* %3, align 4
  br label %480

171:                                              ; preds = %164
  %172 = load i8**, i8*** @env_cfg, align 8
  %173 = load i64, i64* @NNN_OPENER, align 8
  %174 = getelementptr inbounds i8*, i8** %172, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = load i8**, i8*** @utils, align 8
  %177 = load i64, i64* @OPENER, align 8
  %178 = getelementptr inbounds i8*, i8** %176, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i8* @xgetenv(i8* %175, i8* %179)
  store i8* %180, i8** @opener, align 8
  %181 = load i8*, i8** @opener, align 8
  %182 = call i32 @DPRINTF_S(i8* %181)
  %183 = load i32, i32* @bookmark, align 4
  %184 = load i8**, i8*** @env_cfg, align 8
  %185 = load i64, i64* @NNN_BMS, align 8
  %186 = getelementptr inbounds i8*, i8** %184, i64 %185
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* @BM_MAX, align 4
  %189 = call i32 @parsekvpair(i32 %183, i32* @bmstr, i8* %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %171
  %192 = load i32, i32* @stderr, align 4
  %193 = load i8**, i8*** @env_cfg, align 8
  %194 = load i64, i64* @NNN_BMS, align 8
  %195 = getelementptr inbounds i8*, i8** %193, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %196)
  %198 = load i32, i32* @_FAILURE, align 4
  store i32 %198, i32* %3, align 4
  br label %480

199:                                              ; preds = %171
  %200 = load i32, i32* @plug, align 4
  %201 = load i32, i32* @PLUGIN_MAX, align 4
  %202 = call i32 @parsekvpair(i32 %200, i32* @pluginstr, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %199
  %205 = load i32, i32* @stderr, align 4
  %206 = call i32 (i32, i8*, ...) @fprintf(i32 %205, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %207 = load i32, i32* @_FAILURE, align 4
  store i32 %207, i32* %3, align 4
  br label %480

208:                                              ; preds = %199
  %209 = load i8*, i8** %7, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %235

211:                                              ; preds = %208
  %212 = load i8*, i8** %7, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 1
  %214 = load i8, i8* %213, align 1
  %215 = icmp ne i8 %214, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %211
  %217 = load i32, i32* @bookmark, align 4
  %218 = load i8*, i8** %7, align 8
  %219 = load i8, i8* %218, align 1
  %220 = load i32, i32* @BM_MAX, align 4
  %221 = load i32, i32* @TRUE, align 4
  %222 = call i8* @get_kv_val(i32 %217, i32* null, i8 signext %219, i32 %220, i32 %221)
  store i8* %222, i8** @initpath, align 8
  br label %223

223:                                              ; preds = %216, %211
  %224 = load i8*, i8** @initpath, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %234, label %226

226:                                              ; preds = %223
  %227 = load i32, i32* @stderr, align 4
  %228 = load i8**, i8*** @messages, align 8
  %229 = load i64, i64* @STR_INVBM_KEY, align 8
  %230 = getelementptr inbounds i8*, i8** %228, i64 %229
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (i32, i8*, ...) @fprintf(i32 %227, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %231)
  %233 = load i32, i32* @_FAILURE, align 4
  store i32 %233, i32* %3, align 4
  br label %480

234:                                              ; preds = %223
  br label %292

235:                                              ; preds = %208
  %236 = load i32, i32* %4, align 4
  %237 = load i32, i32* @optind, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %246

239:                                              ; preds = %235
  %240 = load i32, i32* @PATH_MAX, align 4
  %241 = call i8* @getcwd(i32* null, i32 %240)
  store i8* %241, i8** @initpath, align 8
  %242 = load i8*, i8** @initpath, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %239
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** @initpath, align 8
  br label %245

245:                                              ; preds = %244, %239
  br label %291

246:                                              ; preds = %235
  %247 = load i8**, i8*** %5, align 8
  %248 = load i32, i32* @optind, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8*, i8** %247, i64 %249
  %251 = load i8*, i8** %250, align 8
  store i8* %251, i8** %7, align 8
  %252 = load i8*, i8** %7, align 8
  %253 = call i32 @strlen(i8* %252)
  %254 = icmp sgt i32 %253, 7
  br i1 %254, label %255, label %262

255:                                              ; preds = %246
  %256 = load i8*, i8** %7, align 8
  %257 = call i32 @strncmp(i8* %256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 7)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %255
  %260 = load i8*, i8** %7, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 7
  store i8* %261, i8** %7, align 8
  br label %262

262:                                              ; preds = %259, %255, %246
  %263 = load i8*, i8** %7, align 8
  %264 = call i8* @realpath(i8* %263, i32* null)
  store i8* %264, i8** @initpath, align 8
  %265 = load i8*, i8** @initpath, align 8
  %266 = call i32 @DPRINTF_S(i8* %265)
  %267 = load i8*, i8** @initpath, align 8
  %268 = icmp ne i8* %267, null
  br i1 %268, label %272, label %269

269:                                              ; preds = %262
  %270 = call i32 (...) @xerror()
  %271 = load i32, i32* @_FAILURE, align 4
  store i32 %271, i32* %3, align 4
  br label %480

272:                                              ; preds = %262
  %273 = load i8*, i8** @initpath, align 8
  %274 = call i32 @stat(i8* %273, %struct.stat* %12)
  %275 = icmp eq i32 %274, -1
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = call i32 (...) @xerror()
  %278 = load i32, i32* @_FAILURE, align 4
  store i32 %278, i32* %3, align 4
  br label %480

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i64 @S_ISREG(i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %279
  %285 = load i8*, i8** @opener, align 8
  %286 = load i8*, i8** %7, align 8
  %287 = load i32, i32* @F_NOWAIT, align 4
  %288 = call i32 @spawn(i8* %285, i8* %286, i32* null, i32* null, i32 %287)
  %289 = load i32, i32* @_SUCCESS, align 4
  store i32 %289, i32* %3, align 4
  br label %480

290:                                              ; preds = %279
  br label %291

291:                                              ; preds = %290, %245
  br label %292

292:                                              ; preds = %291, %234
  %293 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 3), align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %303, label %295

295:                                              ; preds = %292
  %296 = load i8**, i8*** @env_cfg, align 8
  %297 = load i64, i64* @NNN_USE_EDITOR, align 8
  %298 = getelementptr inbounds i8*, i8** %296, i64 %297
  %299 = load i8*, i8** %298, align 8
  %300 = call i64 @xgetenv_set(i8* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %295
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 9), align 4
  br label %303

303:                                              ; preds = %302, %295, %292
  %304 = load i8**, i8*** @envs, align 8
  %305 = load i64, i64* @VISUAL, align 8
  %306 = getelementptr inbounds i8*, i8** %304, i64 %305
  %307 = load i8*, i8** %306, align 8
  %308 = load i8**, i8*** @envs, align 8
  %309 = load i64, i64* @EDITOR, align 8
  %310 = getelementptr inbounds i8*, i8** %308, i64 %309
  %311 = load i8*, i8** %310, align 8
  %312 = call i8* @xgetenv(i8* %311, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %313 = call i8* @xgetenv(i8* %307, i8* %312)
  store i8* %313, i8** @editor, align 8
  %314 = load i8**, i8*** @envs, align 8
  %315 = load i64, i64* @VISUAL, align 8
  %316 = getelementptr inbounds i8*, i8** %314, i64 %315
  %317 = load i8*, i8** %316, align 8
  %318 = call i8* @getenv(i8* %317)
  %319 = call i32 @DPRINTF_S(i8* %318)
  %320 = load i8**, i8*** @envs, align 8
  %321 = load i64, i64* @EDITOR, align 8
  %322 = getelementptr inbounds i8*, i8** %320, i64 %321
  %323 = load i8*, i8** %322, align 8
  %324 = call i8* @getenv(i8* %323)
  %325 = call i32 @DPRINTF_S(i8* %324)
  %326 = load i8*, i8** @editor, align 8
  %327 = call i32 @DPRINTF_S(i8* %326)
  %328 = load i8**, i8*** @envs, align 8
  %329 = load i64, i64* @PAGER, align 8
  %330 = getelementptr inbounds i8*, i8** %328, i64 %329
  %331 = load i8*, i8** %330, align 8
  %332 = call i8* @xgetenv(i8* %331, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i8* %332, i8** @pager, align 8
  %333 = load i8*, i8** @pager, align 8
  %334 = call i32 @DPRINTF_S(i8* %333)
  %335 = load i8**, i8*** @envs, align 8
  %336 = load i64, i64* @SHELL, align 8
  %337 = getelementptr inbounds i8*, i8** %335, i64 %336
  %338 = load i8*, i8** %337, align 8
  %339 = call i8* @xgetenv(i8* %338, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i8* %339, i8** @shell, align 8
  %340 = load i8*, i8** @shell, align 8
  %341 = call i32 @DPRINTF_S(i8* %340)
  %342 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %343 = call i32 @DPRINTF_S(i8* %342)
  %344 = load i8**, i8*** @env_cfg, align 8
  %345 = load i64, i64* @NNNLVL, align 8
  %346 = getelementptr inbounds i8*, i8** %344, i64 %345
  %347 = load i8*, i8** %346, align 8
  %348 = call i8* @getenv(i8* %347)
  %349 = call i64 @xatoi(i8* %348)
  store i64 %349, i64* @idletimeout, align 8
  %350 = load i8**, i8*** @env_cfg, align 8
  %351 = load i64, i64* @NNNLVL, align 8
  %352 = getelementptr inbounds i8*, i8** %350, i64 %351
  %353 = load i8*, i8** %352, align 8
  %354 = load i64, i64* @idletimeout, align 8
  %355 = add nsw i64 %354, 1
  store i64 %355, i64* @idletimeout, align 8
  %356 = call i32 @xitoa(i64 %355)
  %357 = call i32 @setenv(i8* %353, i32 %356, i32 1)
  %358 = load i8**, i8*** @env_cfg, align 8
  %359 = load i64, i64* @NNN_IDLE_TIMEOUT, align 8
  %360 = getelementptr inbounds i8*, i8** %358, i64 %359
  %361 = load i8*, i8** %360, align 8
  %362 = call i8* @getenv(i8* %361)
  %363 = call i64 @xatoi(i8* %362)
  store i64 %363, i64* @idletimeout, align 8
  %364 = load i64, i64* @idletimeout, align 8
  %365 = call i32 @DPRINTF_U(i64 %364)
  %366 = load i8**, i8*** @env_cfg, align 8
  %367 = load i64, i64* @NNN_TRASH, align 8
  %368 = getelementptr inbounds i8*, i8** %366, i64 %367
  %369 = load i8*, i8** %368, align 8
  %370 = call i64 @xgetenv_set(i8* %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %303
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 10), align 4
  br label %373

373:                                              ; preds = %372, %303
  %374 = call i32 (...) @set_tmp_path()
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %378, label %376

376:                                              ; preds = %373
  %377 = load i32, i32* @_FAILURE, align 4
  store i32 %377, i32* %3, align 4
  br label %480

378:                                              ; preds = %373
  %379 = load i8**, i8*** @env_cfg, align 8
  %380 = load i64, i64* @NNN_COPIER, align 8
  %381 = getelementptr inbounds i8*, i8** %379, i64 %380
  %382 = load i8*, i8** %381, align 8
  %383 = call i8* @getenv(i8* %382)
  store i8* %383, i8** @copier, align 8
  %384 = load i32, i32* %10, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %405, label %386

386:                                              ; preds = %378
  %387 = load i8*, i8** @cp, align 8
  %388 = getelementptr inbounds i8, i8* %387, i64 4
  %389 = load i8, i8* %388, align 1
  %390 = load i8*, i8** @cp, align 8
  %391 = getelementptr inbounds i8, i8* %390, i64 5
  store i8 %389, i8* %391, align 1
  %392 = load i8*, i8** @cp, align 8
  %393 = getelementptr inbounds i8, i8* %392, i64 4
  store i8 32, i8* %393, align 1
  %394 = load i8*, i8** @cp, align 8
  %395 = getelementptr inbounds i8, i8* %394, i64 2
  store i8 32, i8* %395, align 1
  %396 = load i8*, i8** @mv, align 8
  %397 = getelementptr inbounds i8, i8* %396, i64 4
  %398 = load i8, i8* %397, align 1
  %399 = load i8*, i8** @mv, align 8
  %400 = getelementptr inbounds i8, i8* %399, i64 5
  store i8 %398, i8* %400, align 1
  %401 = load i8*, i8** @mv, align 8
  %402 = getelementptr inbounds i8, i8* %401, i64 4
  store i8 32, i8* %402, align 1
  %403 = load i8*, i8** @mv, align 8
  %404 = getelementptr inbounds i8, i8* %403, i64 2
  store i8 32, i8* %404, align 1
  br label %405

405:                                              ; preds = %386, %378
  %406 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %13, i32 0, i32 0
  %407 = load i32, i32* @sigint_handler, align 4
  store i32 %407, i32* %406, align 4
  %408 = load i32, i32* @SIGINT, align 4
  %409 = call i64 @sigaction(i32 %408, %struct.sigaction* %13, i32* null)
  %410 = icmp slt i64 %409, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %405
  %412 = call i32 (...) @xerror()
  %413 = load i32, i32* @_FAILURE, align 4
  store i32 %413, i32* %3, align 4
  br label %480

414:                                              ; preds = %405
  %415 = load i32, i32* @SIGQUIT, align 4
  %416 = load i32, i32* @SIG_IGN, align 4
  %417 = call i32 @signal(i32 %415, i32 %416)
  %418 = load i8*, i8** @initpath, align 8
  %419 = call i32 @xdiraccess(i8* %418)
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %424, label %421

421:                                              ; preds = %414
  %422 = call i32 (...) @xerror()
  %423 = load i32, i32* @_FAILURE, align 4
  store i32 %423, i32* %3, align 4
  br label %480

424:                                              ; preds = %414
  %425 = load i32, i32* @LC_ALL, align 4
  %426 = call i32 @setlocale(i32 %425, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0))
  %427 = call i32 @rl_variable_bind(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %428 = load i32, i32* @rl_menu_complete, align 4
  %429 = call i32 @rl_bind_key(i8 signext 9, i32 %428)
  %430 = load i32, i32* @cfgdir, align 4
  %431 = load i32, i32* @g_buf, align 4
  %432 = call i32 @mkpath(i32 %430, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %431)
  %433 = load i32, i32* @g_buf, align 4
  %434 = call i32 @read_history(i32 %433)
  %435 = call i32 @initcurses(i32* %6)
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %439, label %437

437:                                              ; preds = %424
  %438 = load i32, i32* @_FAILURE, align 4
  store i32 %438, i32* %3, align 4
  br label %480

439:                                              ; preds = %424
  %440 = load i8*, i8** @initpath, align 8
  %441 = load i8*, i8** %8, align 8
  %442 = call i32 @browse(i8* %440, i8* %441)
  %443 = load i32, i32* %6, align 4
  %444 = call i32 @mousemask(i32 %443, i32* null)
  %445 = call i32 (...) @exitcurses()
  %446 = load i32, i32* @cfgdir, align 4
  %447 = load i32, i32* @g_buf, align 4
  %448 = call i32 @mkpath(i32 %446, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %447)
  %449 = load i32, i32* @g_buf, align 4
  %450 = call i32 @write_history(i32 %449)
  %451 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 8), align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %466

453:                                              ; preds = %439
  %454 = load i64, i64* @selbufpos, align 8
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %465

456:                                              ; preds = %453
  %457 = call i32 @seltofile(i32 1, i32* null)
  store i32 %457, i32* %9, align 4
  %458 = load i32, i32* %9, align 4
  %459 = load i64, i64* @selbufpos, align 8
  %460 = trunc i64 %459 to i32
  %461 = icmp ne i32 %458, %460
  br i1 %461, label %462, label %464

462:                                              ; preds = %456
  %463 = call i32 (...) @xerror()
  br label %464

464:                                              ; preds = %462, %456
  br label %465

465:                                              ; preds = %464, %453
  br label %476

466:                                              ; preds = %439
  %467 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfg, i32 0, i32 7), align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %475, label %469

469:                                              ; preds = %466
  %470 = load i8*, i8** @g_selpath, align 8
  %471 = icmp ne i8* %470, null
  br i1 %471, label %472, label %475

472:                                              ; preds = %469
  %473 = load i8*, i8** @g_selpath, align 8
  %474 = call i32 @unlink(i8* %473)
  br label %475

475:                                              ; preds = %472, %469, %466
  br label %476

476:                                              ; preds = %475, %465
  %477 = load i32, i32* @pselbuf, align 4
  %478 = call i32 @free(i32 %477)
  %479 = load i32, i32* @_SUCCESS, align 4
  store i32 %479, i32* %3, align 4
  br label %480

480:                                              ; preds = %476, %437, %421, %411, %376, %284, %276, %269, %226, %204, %191, %169, %160, %128, %87, %84, %79, %76, %60
  %481 = load i32, i32* %3, align 4
  ret i32 %481
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @xerror(...) #1

declare dso_local i32 @close(i64) #1

declare dso_local i8* @realpath(i8*, i32*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @check_key_collision(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @isatty(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @xgetenv(i8*, i8*) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @DPRINTF_S(i8*) #1

declare dso_local i32 @setup_config(...) #1

declare dso_local i32 @parsekvpair(i32, i32*, i8*, i32) #1

declare dso_local i8* @get_kv_val(i32, i32*, i8 signext, i32, i32) #1

declare dso_local i8* @getcwd(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @spawn(i8*, i8*, i32*, i32*, i32) #1

declare dso_local i64 @xgetenv_set(i8*) #1

declare dso_local i64 @xatoi(i8*) #1

declare dso_local i32 @setenv(i8*, i32, i32) #1

declare dso_local i32 @xitoa(i64) #1

declare dso_local i32 @DPRINTF_U(i64) #1

declare dso_local i32 @set_tmp_path(...) #1

declare dso_local i64 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @xdiraccess(i8*) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @rl_variable_bind(i8*, i8*) #1

declare dso_local i32 @rl_bind_key(i8 signext, i32) #1

declare dso_local i32 @mkpath(i32, i8*, i32) #1

declare dso_local i32 @read_history(i32) #1

declare dso_local i32 @initcurses(i32*) #1

declare dso_local i32 @browse(i8*, i8*) #1

declare dso_local i32 @mousemask(i32, i32*) #1

declare dso_local i32 @exitcurses(...) #1

declare dso_local i32 @write_history(i32) #1

declare dso_local i32 @seltofile(i32, i32*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
