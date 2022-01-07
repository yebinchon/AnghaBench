; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_dump.c_zend_dump_op_array.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_dump.c_zend_dump_op_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }
%struct.TYPE_34__ = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_32__*, %struct.TYPE_31__*, i32*, %struct.TYPE_26__* }
%struct.TYPE_32__ = type { i64, i32, i32, i32 }
%struct.TYPE_31__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_24__ = type { i32, i32*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i32, i32 }
%struct.TYPE_33__ = type { i32, i64 }
%struct.TYPE_35__ = type { i32, i64, i32, %struct.TYPE_30__, %struct.TYPE_29__* }
%struct.TYPE_30__ = type { i32, i32, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }

@ZEND_DUMP_CFG = common dso_local global i32 0, align 4
@ZEND_DUMP_SSA = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c": ; (lines=%d, args=%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c", vars=%d, tmps=%d\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c", ssa_vars=%d\00", align 1
@ZEND_FUNC_INDIRECT_VAR_ACCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c", dynamic\00", align 1
@ZEND_FUNC_RECURSIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c", recursive\00", align 1
@ZEND_FUNC_RECURSIVE_DIRECTLY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c" directly\00", align 1
@ZEND_FUNC_RECURSIVE_INDIRECTLY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c" indirectly\00", align 1
@ZEND_FUNC_IRREDUCIBLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c", irreducable\00", align 1
@ZEND_FUNC_NO_LOOPS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c", no_loops\00", align 1
@ZEND_FUNC_HAS_EXTENDED_STMT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c", extended_stmt\00", align 1
@ZEND_FUNC_HAS_EXTENDED_FCALL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c", extended_fcall\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c", no_return_value\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c", return_value\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"    ; (%s)\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"    ; %s:%u-%u\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"    ; arg %d \00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"    ; return \00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"    ; \00", align 1
@IS_CV = common dso_local global i32 0, align 4
@ZEND_DUMP_HIDE_UNREACHABLE = common dso_local global i32 0, align 4
@ZEND_BB_REACHABLE = common dso_local global i32 0, align 4
@ZEND_DUMP_LIVE_RANGES = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [14 x i8] c"LIVE RANGES:\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"        %u: L%u - L%u \00", align 1
@ZEND_LIVE_MASK = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [11 x i8] c"(tmp/var)\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"(loop)\0A\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"(silence)\0A\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"(rope)\0A\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"(new)\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"EXCEPTION TABLE:\0A\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"        BB%u\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c", BB%u\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c", -\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c", BB%u\0A\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c", -\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"        L%u\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c", L%u\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c", L%u\0A\00", align 1
@ZEND_JIT_FUNC_INLINE = common dso_local global i32 0, align 4
@ZEND_JIT_FUNC_NO_FRAME = common dso_local global i32 0, align 4
@ZEND_JIT_FUNC_NO_IN_MEM_CVS = common dso_local global i32 0, align 4
@ZEND_JIT_FUNC_NO_SYMTAB = common dso_local global i32 0, align 4
@ZEND_JIT_FUNC_NO_USED_ARGS = common dso_local global i32 0, align 4
@info = common dso_local global %struct.TYPE_27__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_dump_op_array(%struct.TYPE_34__* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca %struct.TYPE_35__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %11, align 8
  store %struct.TYPE_35__* null, %struct.TYPE_35__** %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ZEND_DUMP_CFG, align 4
  %23 = load i32, i32* @ZEND_DUMP_SSA, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %29, %struct.TYPE_24__** %10, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  %33 = icmp ne %struct.TYPE_25__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i8* null, i8** %8, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %10, align 8
  br label %35

35:                                               ; preds = %34, %27
  br label %36

36:                                               ; preds = %35, %4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ZEND_DUMP_SSA, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %8, align 8
  %43 = bitcast i8* %42 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %43, %struct.TYPE_33__** %11, align 8
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %46 = call %struct.TYPE_35__* @ZEND_FUNC_INFO(%struct.TYPE_34__* %45)
  store %struct.TYPE_35__* %46, %struct.TYPE_35__** %12, align 8
  %47 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %48 = icmp ne %struct.TYPE_35__* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %57 = call i32 @zend_dump_op_array_name(%struct.TYPE_34__* %56)
  %58 = load i32, i32* @stderr, align 4
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %67 = icmp ne %struct.TYPE_35__* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %53
  %69 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* @stderr, align 4
  %75 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  br label %79

79:                                               ; preds = %73, %68, %53
  %80 = load i32, i32* @stderr, align 4
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %86)
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %89 = icmp ne %struct.TYPE_33__* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load i32, i32* @stderr, align 4
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %79
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @ZEND_FUNC_INDIRECT_VAR_ACCESS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @stderr, align 4
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* @ZEND_FUNC_RECURSIVE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %104
  %110 = load i32, i32* @stderr, align 4
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* @ZEND_FUNC_RECURSIVE_DIRECTLY, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load i32, i32* @stderr, align 4
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %109
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @ZEND_FUNC_RECURSIVE_INDIRECTLY, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* @stderr, align 4
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %119
  br label %128

128:                                              ; preds = %127, %104
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @ZEND_FUNC_IRREDUCIBLE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load i32, i32* @stderr, align 4
  %135 = call i32 (i32, i8*, ...) @fprintf(i32 %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %128
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @ZEND_FUNC_NO_LOOPS, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* @stderr, align 4
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %136
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @ZEND_FUNC_HAS_EXTENDED_STMT, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i32, i32* @stderr, align 4
  %151 = call i32 (i32, i8*, ...) @fprintf(i32 %150, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %144
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* @ZEND_FUNC_HAS_EXTENDED_FCALL, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i32, i32* @stderr, align 4
  %159 = call i32 (i32, i8*, ...) @fprintf(i32 %158, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %152
  %161 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %162 = icmp ne %struct.TYPE_35__* %161, null
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i32, i32* @stderr, align 4
  %170 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %183

171:                                              ; preds = %163, %160
  %172 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %173 = icmp ne %struct.TYPE_35__* %172, null
  br i1 %173, label %174, label %182

174:                                              ; preds = %171
  %175 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = load i32, i32* @stderr, align 4
  %181 = call i32 (i32, i8*, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  br label %182

182:                                              ; preds = %179, %174, %171
  br label %183

183:                                              ; preds = %182, %168
  %184 = load i32, i32* @stderr, align 4
  %185 = call i32 (i32, i8*, ...) @fprintf(i32 %184, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %186 = load i8*, i8** %7, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load i32, i32* @stderr, align 4
  %190 = load i8*, i8** %7, align 8
  %191 = call i32 (i32, i8*, ...) @fprintf(i32 %189, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* %190)
  br label %192

192:                                              ; preds = %188, %183
  %193 = load i32, i32* @stderr, align 4
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %194, i32 0, i32 11
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i32, i8*, ...) @fprintf(i32 %193, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* %198, i32 %201, i32 %204)
  %206 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %207 = icmp ne %struct.TYPE_35__* %206, null
  br i1 %207, label %208, label %272

208:                                              ; preds = %192
  %209 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp sgt i64 %211, 0
  br i1 %212, label %213, label %272

213:                                              ; preds = %208
  store i32 0, i32* %14, align 4
  br label %214

214:                                              ; preds = %268, %213
  %215 = load i32, i32* %14, align 4
  %216 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %220 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @MIN(i32 %218, i64 %221)
  %223 = icmp slt i32 %215, %222
  br i1 %223, label %224, label %271

224:                                              ; preds = %214
  %225 = load i32, i32* @stderr, align 4
  %226 = load i32, i32* %14, align 4
  %227 = call i32 (i32, i8*, ...) @fprintf(i32 %225, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 %226)
  %228 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %228, i32 0, i32 4
  %230 = load %struct.TYPE_29__*, %struct.TYPE_29__** %229, align 8
  %231 = load i32, i32* %14, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %237, i32 0, i32 4
  %239 = load %struct.TYPE_29__*, %struct.TYPE_29__** %238, align 8
  %240 = load i32, i32* %14, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %246, i32 0, i32 4
  %248 = load %struct.TYPE_29__*, %struct.TYPE_29__** %247, align 8
  %249 = load i32, i32* %14, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %6, align 4
  %256 = call i32 @zend_dump_type_info(i32 %236, i32 %245, i32 %254, i32 %255)
  %257 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %257, i32 0, i32 4
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %258, align 8
  %260 = load i32, i32* %14, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 0
  %265 = call i32 @zend_dump_range(i32* %264)
  %266 = load i32, i32* @stderr, align 4
  %267 = call i32 (i32, i8*, ...) @fprintf(i32 %266, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %268

268:                                              ; preds = %224
  %269 = load i32, i32* %14, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %14, align 4
  br label %214

271:                                              ; preds = %214
  br label %272

272:                                              ; preds = %271, %208, %192
  %273 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %274 = icmp ne %struct.TYPE_35__* %273, null
  br i1 %274, label %275, label %298

275:                                              ; preds = %272
  %276 = load i32, i32* @stderr, align 4
  %277 = call i32 (i32, i8*, ...) @fprintf(i32 %276, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  %278 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %279 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %6, align 4
  %291 = call i32 @zend_dump_type_info(i32 %281, i32 %285, i32 %289, i32 %290)
  %292 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %293 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %293, i32 0, i32 0
  %295 = call i32 @zend_dump_range(i32* %294)
  %296 = load i32, i32* @stderr, align 4
  %297 = call i32 (i32, i8*, ...) @fprintf(i32 %296, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %298

298:                                              ; preds = %275, %272
  %299 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %300 = icmp ne %struct.TYPE_33__* %299, null
  br i1 %300, label %301, label %329

301:                                              ; preds = %298
  %302 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %303 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %329

306:                                              ; preds = %301
  store i32 0, i32* %9, align 4
  br label %307

307:                                              ; preds = %325, %306
  %308 = load i32, i32* %9, align 4
  %309 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = icmp slt i32 %308, %311
  br i1 %312, label %313, label %328

313:                                              ; preds = %307
  %314 = load i32, i32* @stderr, align 4
  %315 = call i32 (i32, i8*, ...) @fprintf(i32 %314, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %316 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %317 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %318 = load i32, i32* %9, align 4
  %319 = load i32, i32* @IS_CV, align 4
  %320 = load i32, i32* %9, align 4
  %321 = load i32, i32* %6, align 4
  %322 = call i32 @zend_dump_ssa_var(%struct.TYPE_34__* %316, %struct.TYPE_33__* %317, i32 %318, i32 %319, i32 %320, i32 %321)
  %323 = load i32, i32* @stderr, align 4
  %324 = call i32 (i32, i8*, ...) @fprintf(i32 %323, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %325

325:                                              ; preds = %313
  %326 = load i32, i32* %9, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %9, align 4
  br label %307

328:                                              ; preds = %307
  br label %329

329:                                              ; preds = %328, %301, %298
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %331 = icmp ne %struct.TYPE_24__* %330, null
  br i1 %331, label %332, label %601

332:                                              ; preds = %329
  store i32 0, i32* %15, align 4
  br label %333

333:                                              ; preds = %393, %332
  %334 = load i32, i32* %15, align 4
  %335 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %336 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = icmp slt i32 %334, %337
  br i1 %338, label %339, label %396

339:                                              ; preds = %333
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %340, i32 0, i32 2
  %342 = load %struct.TYPE_25__*, %struct.TYPE_25__** %341, align 8
  %343 = load i32, i32* %15, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %342, i64 %344
  store %struct.TYPE_25__* %345, %struct.TYPE_25__** %16, align 8
  %346 = load i32, i32* %6, align 4
  %347 = load i32, i32* @ZEND_DUMP_HIDE_UNREACHABLE, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %357

350:                                              ; preds = %339
  %351 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %352 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %392

357:                                              ; preds = %350, %339
  %358 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %359 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %360 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %361 = load i32, i32* %15, align 4
  %362 = load i32, i32* %6, align 4
  %363 = call i32 @zend_dump_block_header(%struct.TYPE_24__* %358, %struct.TYPE_34__* %359, %struct.TYPE_33__* %360, i32 %361, i32 %362)
  %364 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %364, i32 0, i32 10
  %366 = load i32*, i32** %365, align 8
  %367 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %366, i64 %370
  store i32* %371, i32** %17, align 8
  %372 = load i32*, i32** %17, align 8
  %373 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %374 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %372, i64 %376
  store i32* %377, i32** %18, align 8
  br label %378

378:                                              ; preds = %382, %357
  %379 = load i32*, i32** %17, align 8
  %380 = load i32*, i32** %18, align 8
  %381 = icmp ult i32* %379, %380
  br i1 %381, label %382, label %391

382:                                              ; preds = %378
  %383 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %384 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %385 = load i32*, i32** %17, align 8
  %386 = load i32, i32* %6, align 4
  %387 = load i8*, i8** %8, align 8
  %388 = call i32 @zend_dump_op(%struct.TYPE_34__* %383, %struct.TYPE_25__* %384, i32* %385, i32 %386, i8* %387)
  %389 = load i32*, i32** %17, align 8
  %390 = getelementptr inbounds i32, i32* %389, i32 1
  store i32* %390, i32** %17, align 8
  br label %378

391:                                              ; preds = %378
  br label %392

392:                                              ; preds = %391, %350
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %15, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %15, align 4
  br label %333

396:                                              ; preds = %333
  %397 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %397, i32 0, i32 6
  %399 = load i32, i32* %398, align 8
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %476

401:                                              ; preds = %396
  %402 = load i32, i32* %6, align 4
  %403 = load i32, i32* @ZEND_DUMP_LIVE_RANGES, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %476

406:                                              ; preds = %401
  %407 = load i32, i32* @stderr, align 4
  %408 = call i32 (i32, i8*, ...) @fprintf(i32 %407, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %409

409:                                              ; preds = %472, %406
  %410 = load i32, i32* %9, align 4
  %411 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %411, i32 0, i32 6
  %413 = load i32, i32* %412, align 8
  %414 = icmp slt i32 %410, %413
  br i1 %414, label %415, label %475

415:                                              ; preds = %409
  %416 = load i32, i32* @stderr, align 4
  %417 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %418 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %417, i32 0, i32 9
  %419 = load %struct.TYPE_31__*, %struct.TYPE_31__** %418, align 8
  %420 = load i32, i32* %9, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %419, i64 %421
  %423 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* @ZEND_LIVE_MASK, align 4
  %426 = xor i32 %425, -1
  %427 = and i32 %424, %426
  %428 = call i32 @EX_VAR_TO_NUM(i32 %427)
  %429 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %429, i32 0, i32 9
  %431 = load %struct.TYPE_31__*, %struct.TYPE_31__** %430, align 8
  %432 = load i32, i32* %9, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %431, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %438 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %437, i32 0, i32 9
  %439 = load %struct.TYPE_31__*, %struct.TYPE_31__** %438, align 8
  %440 = load i32, i32* %9, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %439, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 4
  %445 = call i32 (i32, i8*, ...) @fprintf(i32 %416, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 %428, i32 %436, i32 %444)
  %446 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %446, i32 0, i32 9
  %448 = load %struct.TYPE_31__*, %struct.TYPE_31__** %447, align 8
  %449 = load i32, i32* %9, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %448, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = load i32, i32* @ZEND_LIVE_MASK, align 4
  %455 = and i32 %453, %454
  switch i32 %455, label %471 [
    i32 128, label %456
    i32 132, label %459
    i32 129, label %462
    i32 130, label %465
    i32 131, label %468
  ]

456:                                              ; preds = %415
  %457 = load i32, i32* @stderr, align 4
  %458 = call i32 (i32, i8*, ...) @fprintf(i32 %457, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  br label %471

459:                                              ; preds = %415
  %460 = load i32, i32* @stderr, align 4
  %461 = call i32 (i32, i8*, ...) @fprintf(i32 %460, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  br label %471

462:                                              ; preds = %415
  %463 = load i32, i32* @stderr, align 4
  %464 = call i32 (i32, i8*, ...) @fprintf(i32 %463, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  br label %471

465:                                              ; preds = %415
  %466 = load i32, i32* @stderr, align 4
  %467 = call i32 (i32, i8*, ...) @fprintf(i32 %466, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  br label %471

468:                                              ; preds = %415
  %469 = load i32, i32* @stderr, align 4
  %470 = call i32 (i32, i8*, ...) @fprintf(i32 %469, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  br label %471

471:                                              ; preds = %415, %468, %465, %462, %459, %456
  br label %472

472:                                              ; preds = %471
  %473 = load i32, i32* %9, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %9, align 4
  br label %409

475:                                              ; preds = %409
  br label %476

476:                                              ; preds = %475, %401, %396
  %477 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %478 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %477, i32 0, i32 7
  %479 = load i32, i32* %478, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %600

481:                                              ; preds = %476
  %482 = load i32, i32* @stderr, align 4
  %483 = call i32 (i32, i8*, ...) @fprintf(i32 %482, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %484

484:                                              ; preds = %596, %481
  %485 = load i32, i32* %9, align 4
  %486 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %487 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %486, i32 0, i32 7
  %488 = load i32, i32* %487, align 4
  %489 = icmp slt i32 %485, %488
  br i1 %489, label %490, label %599

490:                                              ; preds = %484
  %491 = load i32, i32* @stderr, align 4
  %492 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %493 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %492, i32 0, i32 1
  %494 = load i32*, i32** %493, align 8
  %495 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %496 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %495, i32 0, i32 8
  %497 = load %struct.TYPE_32__*, %struct.TYPE_32__** %496, align 8
  %498 = load i32, i32* %9, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %497, i64 %499
  %501 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %500, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = getelementptr inbounds i32, i32* %494, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = call i32 (i32, i8*, ...) @fprintf(i32 %491, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i32 %504)
  %506 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %507 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %506, i32 0, i32 8
  %508 = load %struct.TYPE_32__*, %struct.TYPE_32__** %507, align 8
  %509 = load i32, i32* %9, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %508, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 8
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %532

515:                                              ; preds = %490
  %516 = load i32, i32* @stderr, align 4
  %517 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %518 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %517, i32 0, i32 1
  %519 = load i32*, i32** %518, align 8
  %520 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %521 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %520, i32 0, i32 8
  %522 = load %struct.TYPE_32__*, %struct.TYPE_32__** %521, align 8
  %523 = load i32, i32* %9, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %522, i64 %524
  %526 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 8
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i32, i32* %519, i64 %528
  %530 = load i32, i32* %529, align 4
  %531 = call i32 (i32, i8*, ...) @fprintf(i32 %516, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i32 %530)
  br label %535

532:                                              ; preds = %490
  %533 = load i32, i32* @stderr, align 4
  %534 = call i32 (i32, i8*, ...) @fprintf(i32 %533, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  br label %535

535:                                              ; preds = %532, %515
  %536 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %537 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %536, i32 0, i32 8
  %538 = load %struct.TYPE_32__*, %struct.TYPE_32__** %537, align 8
  %539 = load i32, i32* %9, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %538, i64 %540
  %542 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %541, i32 0, i32 2
  %543 = load i32, i32* %542, align 4
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %562

545:                                              ; preds = %535
  %546 = load i32, i32* @stderr, align 4
  %547 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %548 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %547, i32 0, i32 1
  %549 = load i32*, i32** %548, align 8
  %550 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %551 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %550, i32 0, i32 8
  %552 = load %struct.TYPE_32__*, %struct.TYPE_32__** %551, align 8
  %553 = load i32, i32* %9, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %552, i64 %554
  %556 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %555, i32 0, i32 2
  %557 = load i32, i32* %556, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32, i32* %549, i64 %558
  %560 = load i32, i32* %559, align 4
  %561 = call i32 (i32, i8*, ...) @fprintf(i32 %546, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i32 %560)
  br label %565

562:                                              ; preds = %535
  %563 = load i32, i32* @stderr, align 4
  %564 = call i32 (i32, i8*, ...) @fprintf(i32 %563, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  br label %565

565:                                              ; preds = %562, %545
  %566 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %567 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %566, i32 0, i32 8
  %568 = load %struct.TYPE_32__*, %struct.TYPE_32__** %567, align 8
  %569 = load i32, i32* %9, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %568, i64 %570
  %572 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %571, i32 0, i32 3
  %573 = load i32, i32* %572, align 8
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %592

575:                                              ; preds = %565
  %576 = load i32, i32* @stderr, align 4
  %577 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %578 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %577, i32 0, i32 1
  %579 = load i32*, i32** %578, align 8
  %580 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %581 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %580, i32 0, i32 8
  %582 = load %struct.TYPE_32__*, %struct.TYPE_32__** %581, align 8
  %583 = load i32, i32* %9, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %582, i64 %584
  %586 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %585, i32 0, i32 3
  %587 = load i32, i32* %586, align 8
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i32, i32* %579, i64 %588
  %590 = load i32, i32* %589, align 4
  %591 = call i32 (i32, i8*, ...) @fprintf(i32 %576, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i32 %590)
  br label %595

592:                                              ; preds = %565
  %593 = load i32, i32* @stderr, align 4
  %594 = call i32 (i32, i8*, ...) @fprintf(i32 %593, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  br label %595

595:                                              ; preds = %592, %575
  br label %596

596:                                              ; preds = %595
  %597 = load i32, i32* %9, align 4
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %9, align 4
  br label %484

599:                                              ; preds = %484
  br label %600

600:                                              ; preds = %599, %476
  br label %805

601:                                              ; preds = %329
  %602 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %603 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %602, i32 0, i32 10
  %604 = load i32*, i32** %603, align 8
  store i32* %604, i32** %19, align 8
  %605 = load i32*, i32** %19, align 8
  %606 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %607 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %606, i32 0, i32 0
  %608 = load i32, i32* %607, align 8
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i32, i32* %605, i64 %609
  store i32* %610, i32** %20, align 8
  br label %611

611:                                              ; preds = %615, %601
  %612 = load i32*, i32** %19, align 8
  %613 = load i32*, i32** %20, align 8
  %614 = icmp ult i32* %612, %613
  br i1 %614, label %615, label %623

615:                                              ; preds = %611
  %616 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %617 = load i32*, i32** %19, align 8
  %618 = load i32, i32* %6, align 4
  %619 = load i8*, i8** %8, align 8
  %620 = call i32 @zend_dump_op(%struct.TYPE_34__* %616, %struct.TYPE_25__* null, i32* %617, i32 %618, i8* %619)
  %621 = load i32*, i32** %19, align 8
  %622 = getelementptr inbounds i32, i32* %621, i32 1
  store i32* %622, i32** %19, align 8
  br label %611

623:                                              ; preds = %611
  %624 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %625 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %624, i32 0, i32 6
  %626 = load i32, i32* %625, align 8
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %703

628:                                              ; preds = %623
  %629 = load i32, i32* %6, align 4
  %630 = load i32, i32* @ZEND_DUMP_LIVE_RANGES, align 4
  %631 = and i32 %629, %630
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %703

633:                                              ; preds = %628
  %634 = load i32, i32* @stderr, align 4
  %635 = call i32 (i32, i8*, ...) @fprintf(i32 %634, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %636

636:                                              ; preds = %699, %633
  %637 = load i32, i32* %9, align 4
  %638 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %639 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %638, i32 0, i32 6
  %640 = load i32, i32* %639, align 8
  %641 = icmp slt i32 %637, %640
  br i1 %641, label %642, label %702

642:                                              ; preds = %636
  %643 = load i32, i32* @stderr, align 4
  %644 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %645 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %644, i32 0, i32 9
  %646 = load %struct.TYPE_31__*, %struct.TYPE_31__** %645, align 8
  %647 = load i32, i32* %9, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %646, i64 %648
  %650 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %649, i32 0, i32 0
  %651 = load i32, i32* %650, align 4
  %652 = load i32, i32* @ZEND_LIVE_MASK, align 4
  %653 = xor i32 %652, -1
  %654 = and i32 %651, %653
  %655 = call i32 @EX_VAR_TO_NUM(i32 %654)
  %656 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %657 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %656, i32 0, i32 9
  %658 = load %struct.TYPE_31__*, %struct.TYPE_31__** %657, align 8
  %659 = load i32, i32* %9, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %658, i64 %660
  %662 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %661, i32 0, i32 1
  %663 = load i32, i32* %662, align 4
  %664 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %665 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %664, i32 0, i32 9
  %666 = load %struct.TYPE_31__*, %struct.TYPE_31__** %665, align 8
  %667 = load i32, i32* %9, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %666, i64 %668
  %670 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %669, i32 0, i32 2
  %671 = load i32, i32* %670, align 4
  %672 = call i32 (i32, i8*, ...) @fprintf(i32 %643, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 %655, i32 %663, i32 %671)
  %673 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %674 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %673, i32 0, i32 9
  %675 = load %struct.TYPE_31__*, %struct.TYPE_31__** %674, align 8
  %676 = load i32, i32* %9, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %675, i64 %677
  %679 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %678, i32 0, i32 0
  %680 = load i32, i32* %679, align 4
  %681 = load i32, i32* @ZEND_LIVE_MASK, align 4
  %682 = and i32 %680, %681
  switch i32 %682, label %698 [
    i32 128, label %683
    i32 132, label %686
    i32 129, label %689
    i32 130, label %692
    i32 131, label %695
  ]

683:                                              ; preds = %642
  %684 = load i32, i32* @stderr, align 4
  %685 = call i32 (i32, i8*, ...) @fprintf(i32 %684, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  br label %698

686:                                              ; preds = %642
  %687 = load i32, i32* @stderr, align 4
  %688 = call i32 (i32, i8*, ...) @fprintf(i32 %687, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  br label %698

689:                                              ; preds = %642
  %690 = load i32, i32* @stderr, align 4
  %691 = call i32 (i32, i8*, ...) @fprintf(i32 %690, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  br label %698

692:                                              ; preds = %642
  %693 = load i32, i32* @stderr, align 4
  %694 = call i32 (i32, i8*, ...) @fprintf(i32 %693, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0))
  br label %698

695:                                              ; preds = %642
  %696 = load i32, i32* @stderr, align 4
  %697 = call i32 (i32, i8*, ...) @fprintf(i32 %696, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  br label %698

698:                                              ; preds = %642, %695, %692, %689, %686, %683
  br label %699

699:                                              ; preds = %698
  %700 = load i32, i32* %9, align 4
  %701 = add nsw i32 %700, 1
  store i32 %701, i32* %9, align 4
  br label %636

702:                                              ; preds = %636
  br label %703

703:                                              ; preds = %702, %628, %623
  %704 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %705 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %704, i32 0, i32 7
  %706 = load i32, i32* %705, align 4
  %707 = icmp ne i32 %706, 0
  br i1 %707, label %708, label %804

708:                                              ; preds = %703
  %709 = load i32, i32* @stderr, align 4
  %710 = call i32 (i32, i8*, ...) @fprintf(i32 %709, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %711

711:                                              ; preds = %800, %708
  %712 = load i32, i32* %9, align 4
  %713 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %714 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %713, i32 0, i32 7
  %715 = load i32, i32* %714, align 4
  %716 = icmp slt i32 %712, %715
  br i1 %716, label %717, label %803

717:                                              ; preds = %711
  %718 = load i32, i32* @stderr, align 4
  %719 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %720 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %719, i32 0, i32 8
  %721 = load %struct.TYPE_32__*, %struct.TYPE_32__** %720, align 8
  %722 = load i32, i32* %9, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %721, i64 %723
  %725 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %724, i32 0, i32 0
  %726 = load i64, i64* %725, align 8
  %727 = call i32 (i32, i8*, ...) @fprintf(i32 %718, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i64 %726)
  %728 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %729 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %728, i32 0, i32 8
  %730 = load %struct.TYPE_32__*, %struct.TYPE_32__** %729, align 8
  %731 = load i32, i32* %9, align 4
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %730, i64 %732
  %734 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %733, i32 0, i32 1
  %735 = load i32, i32* %734, align 8
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %737, label %748

737:                                              ; preds = %717
  %738 = load i32, i32* @stderr, align 4
  %739 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %740 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %739, i32 0, i32 8
  %741 = load %struct.TYPE_32__*, %struct.TYPE_32__** %740, align 8
  %742 = load i32, i32* %9, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %741, i64 %743
  %745 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %744, i32 0, i32 1
  %746 = load i32, i32* %745, align 8
  %747 = call i32 (i32, i8*, ...) @fprintf(i32 %738, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i32 %746)
  br label %751

748:                                              ; preds = %717
  %749 = load i32, i32* @stderr, align 4
  %750 = call i32 (i32, i8*, ...) @fprintf(i32 %749, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  br label %751

751:                                              ; preds = %748, %737
  %752 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %753 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %752, i32 0, i32 8
  %754 = load %struct.TYPE_32__*, %struct.TYPE_32__** %753, align 8
  %755 = load i32, i32* %9, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %754, i64 %756
  %758 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %757, i32 0, i32 2
  %759 = load i32, i32* %758, align 4
  %760 = icmp ne i32 %759, 0
  br i1 %760, label %761, label %772

761:                                              ; preds = %751
  %762 = load i32, i32* @stderr, align 4
  %763 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %764 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %763, i32 0, i32 8
  %765 = load %struct.TYPE_32__*, %struct.TYPE_32__** %764, align 8
  %766 = load i32, i32* %9, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %765, i64 %767
  %769 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %768, i32 0, i32 2
  %770 = load i32, i32* %769, align 4
  %771 = call i32 (i32, i8*, ...) @fprintf(i32 %762, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i32 %770)
  br label %775

772:                                              ; preds = %751
  %773 = load i32, i32* @stderr, align 4
  %774 = call i32 (i32, i8*, ...) @fprintf(i32 %773, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0))
  br label %775

775:                                              ; preds = %772, %761
  %776 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %777 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %776, i32 0, i32 8
  %778 = load %struct.TYPE_32__*, %struct.TYPE_32__** %777, align 8
  %779 = load i32, i32* %9, align 4
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %778, i64 %780
  %782 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %781, i32 0, i32 3
  %783 = load i32, i32* %782, align 8
  %784 = icmp ne i32 %783, 0
  br i1 %784, label %785, label %796

785:                                              ; preds = %775
  %786 = load i32, i32* @stderr, align 4
  %787 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %788 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %787, i32 0, i32 8
  %789 = load %struct.TYPE_32__*, %struct.TYPE_32__** %788, align 8
  %790 = load i32, i32* %9, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %789, i64 %791
  %793 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %792, i32 0, i32 3
  %794 = load i32, i32* %793, align 8
  %795 = call i32 (i32, i8*, ...) @fprintf(i32 %786, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i32 %794)
  br label %799

796:                                              ; preds = %775
  %797 = load i32, i32* @stderr, align 4
  %798 = call i32 (i32, i8*, ...) @fprintf(i32 %797, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  br label %799

799:                                              ; preds = %796, %785
  br label %800

800:                                              ; preds = %799
  %801 = load i32, i32* %9, align 4
  %802 = add nsw i32 %801, 1
  store i32 %802, i32* %9, align 4
  br label %711

803:                                              ; preds = %711
  br label %804

804:                                              ; preds = %803, %703
  br label %805

805:                                              ; preds = %804, %600
  ret void
}

declare dso_local %struct.TYPE_35__* @ZEND_FUNC_INFO(%struct.TYPE_34__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @zend_dump_op_array_name(%struct.TYPE_34__*) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @zend_dump_type_info(i32, i32, i32, i32) #1

declare dso_local i32 @zend_dump_range(i32*) #1

declare dso_local i32 @zend_dump_ssa_var(%struct.TYPE_34__*, %struct.TYPE_33__*, i32, i32, i32, i32) #1

declare dso_local i32 @zend_dump_block_header(%struct.TYPE_24__*, %struct.TYPE_34__*, %struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @zend_dump_op(%struct.TYPE_34__*, %struct.TYPE_25__*, i32*, i32, i8*) #1

declare dso_local i32 @EX_VAR_TO_NUM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
