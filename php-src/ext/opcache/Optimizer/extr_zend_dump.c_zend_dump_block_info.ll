; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_dump.c_zend_dump_block_info.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_dump.c_zend_dump_block_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32, i64, i32*, i32, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"BB%d:\00", align 1
@ZEND_BB_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" start\00", align 1
@ZEND_BB_RECV_ENTRY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" recv\00", align 1
@ZEND_BB_FOLLOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c" follow\00", align 1
@ZEND_BB_TARGET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c" target\00", align 1
@ZEND_BB_EXIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c" exit\00", align 1
@ZEND_BB_ENTRY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c" entry\00", align 1
@ZEND_BB_TRY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c" try\00", align 1
@ZEND_BB_CATCH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c" catch\00", align 1
@ZEND_BB_FINALLY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c" finally\00", align 1
@ZEND_BB_FINALLY_END = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c" finally_end\00", align 1
@ZEND_DUMP_HIDE_UNREACHABLE = common dso_local global i32 0, align 4
@ZEND_BB_REACHABLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c" unreachable\00", align 1
@ZEND_BB_UNREACHABLE_FREE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c" unreachable_free\00", align 1
@ZEND_BB_LOOP_HEADER = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [13 x i8] c" loop_header\00", align 1
@ZEND_BB_IRREDUCIBLE_LOOP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c" irreducible\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c" lines=[%d-%d]\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c" empty\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"    ; from=(BB%d\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c", BB%d\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"    ; to=(BB%d\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"    ; idom=BB%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"    ; level=%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"    ; loop_header=%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"    ; children=(BB%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, i32)* @zend_dump_block_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_dump_block_info(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %16
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %7, align 8
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ZEND_BB_START, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ZEND_BB_RECV_ENTRY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %30
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ZEND_BB_FOLLOW, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ZEND_BB_TARGET, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %50
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ZEND_BB_EXIT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %60
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ZEND_BB_ENTRY, align 4
  %75 = load i32, i32* @ZEND_BB_RECV_ENTRY, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %70
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ZEND_BB_TRY, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @stderr, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %82
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ZEND_BB_CATCH, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load i32, i32* @stderr, align 4
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %92
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ZEND_BB_FINALLY, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, i32* @stderr, align 4
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %102
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @ZEND_BB_FINALLY_END, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %112
  %120 = load i32, i32* @stderr, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %112
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @ZEND_DUMP_HIDE_UNREACHABLE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %137, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %127
  %135 = load i32, i32* @stderr, align 4
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %127, %122
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @ZEND_BB_UNREACHABLE_FREE, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load i32, i32* @stderr, align 4
  %146 = call i32 (i32, i8*, ...) @fprintf(i32 %145, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %137
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @ZEND_BB_LOOP_HEADER, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load i32, i32* @stderr, align 4
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %147
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @ZEND_BB_IRREDUCIBLE_LOOP, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load i32, i32* @stderr, align 4
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %157
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %167
  %173 = load i32, i32* @stderr, align 4
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %180, %183
  %185 = sub nsw i64 %184, 1
  %186 = call i32 (i32, i8*, ...) @fprintf(i32 %173, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %176, i64 %185)
  br label %190

187:                                              ; preds = %167
  %188 = load i32, i32* @stderr, align 4
  %189 = call i32 (i32, i8*, ...) @fprintf(i32 %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  br label %190

190:                                              ; preds = %187, %172
  %191 = load i32, i32* @stderr, align 4
  %192 = call i32 (i32, i8*, ...) @fprintf(i32 %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %233

197:                                              ; preds = %190
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %200, i64 %204
  store i32* %205, i32** %8, align 8
  %206 = load i32*, i32** %8, align 8
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %206, i64 %210
  store i32* %211, i32** %9, align 8
  %212 = load i32, i32* @stderr, align 4
  %213 = load i32*, i32** %8, align 8
  %214 = load i32, i32* %213, align 4
  %215 = call i32 (i32, i8*, ...) @fprintf(i32 %212, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 %214)
  %216 = load i32*, i32** %8, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 1
  store i32* %217, i32** %8, align 8
  br label %218

218:                                              ; preds = %227, %197
  %219 = load i32*, i32** %8, align 8
  %220 = load i32*, i32** %9, align 8
  %221 = icmp ult i32* %219, %220
  br i1 %221, label %222, label %230

222:                                              ; preds = %218
  %223 = load i32, i32* @stderr, align 4
  %224 = load i32*, i32** %8, align 8
  %225 = load i32, i32* %224, align 4
  %226 = call i32 (i32, i8*, ...) @fprintf(i32 %223, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %225)
  br label %227

227:                                              ; preds = %222
  %228 = load i32*, i32** %8, align 8
  %229 = getelementptr inbounds i32, i32* %228, i32 1
  store i32* %229, i32** %8, align 8
  br label %218

230:                                              ; preds = %218
  %231 = load i32, i32* @stderr, align 4
  %232 = call i32 (i32, i8*, ...) @fprintf(i32 %231, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  br label %233

233:                                              ; preds = %230, %190
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 5
  %236 = load i64, i64* %235, align 8
  %237 = icmp sgt i64 %236, 0
  br i1 %237, label %238, label %269

238:                                              ; preds = %233
  %239 = load i32, i32* @stderr, align 4
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 6
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 (i32, i8*, ...) @fprintf(i32 %239, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 %244)
  store i32 1, i32* %10, align 4
  br label %246

246:                                              ; preds = %263, %238
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 5
  %251 = load i64, i64* %250, align 8
  %252 = icmp slt i64 %248, %251
  br i1 %252, label %253, label %266

253:                                              ; preds = %246
  %254 = load i32, i32* @stderr, align 4
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 6
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %10, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = call i32 (i32, i8*, ...) @fprintf(i32 %254, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %261)
  br label %263

263:                                              ; preds = %253
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %10, align 4
  br label %246

266:                                              ; preds = %246
  %267 = load i32, i32* @stderr, align 4
  %268 = call i32 (i32, i8*, ...) @fprintf(i32 %267, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  br label %269

269:                                              ; preds = %266, %233
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 7
  %272 = load i32, i32* %271, align 8
  %273 = icmp sge i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %269
  %275 = load i32, i32* @stderr, align 4
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 7
  %278 = load i32, i32* %277, align 8
  %279 = call i32 (i32, i8*, ...) @fprintf(i32 %275, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 %278)
  br label %280

280:                                              ; preds = %274, %269
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 8
  %283 = load i32, i32* %282, align 4
  %284 = icmp sge i32 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %280
  %286 = load i32, i32* @stderr, align 4
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 8
  %289 = load i32, i32* %288, align 4
  %290 = call i32 (i32, i8*, ...) @fprintf(i32 %286, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i32 %289)
  br label %291

291:                                              ; preds = %285, %280
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 9
  %294 = load i32, i32* %293, align 8
  %295 = icmp sge i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %291
  %297 = load i32, i32* @stderr, align 4
  %298 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 9
  %300 = load i32, i32* %299, align 8
  %301 = call i32 (i32, i8*, ...) @fprintf(i32 %297, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i32 %300)
  br label %302

302:                                              ; preds = %296, %291
  %303 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 10
  %305 = load i32, i32* %304, align 4
  %306 = icmp sge i32 %305, 0
  br i1 %306, label %307, label %340

307:                                              ; preds = %302
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 10
  %310 = load i32, i32* %309, align 4
  store i32 %310, i32* %11, align 4
  %311 = load i32, i32* @stderr, align 4
  %312 = load i32, i32* %11, align 4
  %313 = call i32 (i32, i8*, ...) @fprintf(i32 %311, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i32 %312)
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %315, align 8
  %317 = load i32, i32* %11, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 11
  %321 = load i32, i32* %320, align 8
  store i32 %321, i32* %11, align 4
  br label %322

322:                                              ; preds = %325, %307
  %323 = load i32, i32* %11, align 4
  %324 = icmp sge i32 %323, 0
  br i1 %324, label %325, label %337

325:                                              ; preds = %322
  %326 = load i32, i32* @stderr, align 4
  %327 = load i32, i32* %11, align 4
  %328 = call i32 (i32, i8*, ...) @fprintf(i32 %326, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %327)
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %330, align 8
  %332 = load i32, i32* %11, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 11
  %336 = load i32, i32* %335, align 8
  store i32 %336, i32* %11, align 4
  br label %322

337:                                              ; preds = %322
  %338 = load i32, i32* @stderr, align 4
  %339 = call i32 (i32, i8*, ...) @fprintf(i32 %338, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  br label %340

340:                                              ; preds = %337, %302
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
