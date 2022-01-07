; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_batch.c_Batch.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_batch.c_Batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_9__*, i32*, i32, i64, i64, i32*, %struct._SETLOCAL*, i32*, i8*, i32, i64, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct._SETLOCAL = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@bc = common dso_local global %struct.TYPE_10__* null, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Batch: ('%s', '%s', '%s')  same_fn = %d\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@FILE_FLAG_SEQUENTIAL_SCAN = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@STRING_BATCH_ERROR = common dso_local global i32 0, align 4
@nErrorLevel = common dso_local global i32 0, align 4
@bEcho = common dso_local global i64 0, align 8
@fc = common dso_local global i32* null, align 8
@bExit = common dso_local global i32 0, align 4
@bDisableBatchEcho = common dso_local global i32 0, align 4
@C_QUIET = common dso_local global i64 0, align 8
@bIgnoreEcho = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Batch: returns TRUE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Batch(i64* %0, i64* %1, i64* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct._SETLOCAL*, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %13, align 4
  %19 = load i8*, i8** @FALSE, align 8
  store i8* %19, i8** %14, align 8
  store i64 0, i64* %15, align 8
  %20 = call i32 @SetLastError(i32 0)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %22 = icmp ne %struct.TYPE_10__* %21, null
  br i1 %22, label %23, label %47

23:                                               ; preds = %4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 11
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %23
  %29 = load i32, i32* @MAX_PATH, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %16, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %17, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = mul nuw i64 4, %30
  %35 = udiv i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32 @GetFullPathName(i64* %33, i32 %36, i32* %32, i32* null)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @_tcsicmp(i32* %40, i32* %32)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i8*, i8** @TRUE, align 8
  store i8* %44, i8** %14, align 8
  br label %45

45:                                               ; preds = %43, %28
  %46 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %46)
  br label %47

47:                                               ; preds = %45, %23, %4
  %48 = load i64*, i64** %6, align 8
  %49 = call i32 @debugstr_aw(i64* %48)
  %50 = load i64*, i64** %7, align 8
  %51 = call i32 @debugstr_aw(i64* %50)
  %52 = load i64*, i64** %8, align 8
  %53 = call i32 @debugstr_aw(i64* %52)
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %51, i32 %53, i8* %54)
  %56 = load i8*, i8** %14, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %78, label %58

58:                                               ; preds = %47
  %59 = load i64*, i64** %6, align 8
  %60 = load i32, i32* @GENERIC_READ, align 4
  %61 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %62 = load i32, i32* @FILE_SHARE_READ, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @OPEN_EXISTING, align 4
  %67 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %68 = load i32, i32* @FILE_FLAG_SEQUENTIAL_SCAN, align 4
  %69 = or i32 %67, %68
  %70 = call i64 @CreateFile(i64* %59, i32 %60, i32 %65, i32* null, i32 %66, i32 %69, i32* null)
  store i64 %70, i64* %15, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %58
  %75 = load i32, i32* @STRING_BATCH_ERROR, align 4
  %76 = call i32 @ConErrResPuts(i32 %75)
  store i32 1, i32* %5, align 4
  br label %241

77:                                               ; preds = %58
  br label %78

78:                                               ; preds = %77, %47
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %80 = icmp ne %struct.TYPE_10__* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = icmp eq %struct.TYPE_9__* %82, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = call i32 (...) @ClearBatch()
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = call i32 @AddBatchRedirection(i32* %90)
  br label %131

92:                                               ; preds = %81, %78
  store %struct._SETLOCAL* null, %struct._SETLOCAL** %18, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %94 = icmp eq %struct.TYPE_9__* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @nErrorLevel, align 4
  store i32 %96, i32* %13, align 4
  br label %108

97:                                               ; preds = %92
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %99 = icmp ne %struct.TYPE_10__* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 7
  %103 = load %struct._SETLOCAL*, %struct._SETLOCAL** %102, align 8
  store %struct._SETLOCAL* %103, %struct._SETLOCAL** %18, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 7
  store %struct._SETLOCAL* null, %struct._SETLOCAL** %105, align 8
  %106 = call i32 (...) @ExitBatch()
  br label %107

107:                                              ; preds = %100, %97
  br label %108

108:                                              ; preds = %107, %95
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 12
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %110, align 8
  %111 = load i8*, i8** %14, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %125

113:                                              ; preds = %108
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 11
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 11
  store i64 %116, i64* %117, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 10
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 10
  store i32 %120, i32* %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 5
  store i64 0, i64* %122, align 8
  %123 = load i8*, i8** @FALSE, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 9
  store i8* %123, i8** %124, align 8
  br label %125

125:                                              ; preds = %113, %108
  store %struct.TYPE_10__* %10, %struct.TYPE_10__** @bc, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 8
  store i32* null, i32** %127, align 8
  %128 = load %struct._SETLOCAL*, %struct._SETLOCAL** %18, align 8
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 7
  store %struct._SETLOCAL* %128, %struct._SETLOCAL** %130, align 8
  br label %131

131:                                              ; preds = %125, %87
  %132 = load i64*, i64** %6, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 6
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @GetFullPathName(i64* %132, i32 2, i32* %135, i32* null)
  %137 = load i8*, i8** %14, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %144, label %139

139:                                              ; preds = %131
  %140 = load i64, i64* %15, align 8
  %141 = call i32 @BatchFile2Mem(i64 %140)
  %142 = load i64, i64* %15, align 8
  %143 = call i32 @CloseHandle(i64 %142)
  br label %144

144:                                              ; preds = %139, %131
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 5
  store i64 0, i64* %146, align 8
  %147 = load i64, i64* @bEcho, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 4
  store i64 %147, i64* %149, align 8
  store i32 0, i32* %12, align 4
  br label %150

150:                                              ; preds = %161, %144
  %151 = load i32, i32* %12, align 4
  %152 = icmp slt i32 %151, 10
  br i1 %152, label %153, label %164

153:                                              ; preds = %150
  %154 = load i32, i32* %12, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  store i32 %154, i32* %160, align 4
  br label %161

161:                                              ; preds = %153
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %12, align 4
  br label %150

164:                                              ; preds = %150
  %165 = load i64*, i64** %7, align 8
  %166 = load i64*, i64** %8, align 8
  %167 = call i32 @BatchParams(i64* %165, i64* %166)
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 8
  %170 = load i64*, i64** %8, align 8
  %171 = call i32* @cmd_dup(i64* %170)
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 2
  store i32* %171, i32** %173, align 8
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %180

178:                                              ; preds = %164
  %179 = call i32 (...) @error_out_of_memory()
  store i32 1, i32* %5, align 4
  br label %241

180:                                              ; preds = %164
  %181 = load i64*, i64** %7, align 8
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @_T(i8 signext 58)
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i64*, i64** %7, align 8
  %187 = call i32 @cmd_goto(i64* %186)
  br label %188

188:                                              ; preds = %185, %180
  %189 = load i32*, i32** @fc, align 8
  store i32* %189, i32** %11, align 8
  store i32* null, i32** @fc, align 8
  br label %190

190:                                              ; preds = %228, %203, %188
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %192 = icmp eq %struct.TYPE_10__* %191, %10
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i32, i32* @bExit, align 4
  %195 = icmp ne i32 %194, 0
  %196 = xor i1 %195, true
  br label %197

197:                                              ; preds = %193, %190
  %198 = phi i1 [ false, %190 ], [ %196, %193 ]
  br i1 %198, label %199, label %236

199:                                              ; preds = %197
  %200 = call %struct.TYPE_9__* @ParseCommand(i32* null)
  store %struct.TYPE_9__* %200, %struct.TYPE_9__** %9, align 8
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %202 = icmp ne %struct.TYPE_9__* %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %199
  br label %190

204:                                              ; preds = %199
  %205 = load i64, i64* @bEcho, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %228

207:                                              ; preds = %204
  %208 = load i32, i32* @bDisableBatchEcho, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %228, label %210

210:                                              ; preds = %207
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @C_QUIET, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %228

216:                                              ; preds = %210
  %217 = load i32, i32* @bIgnoreEcho, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = call i64 @_T(i8 signext 10)
  %221 = call i32 @ConOutChar(i64 %220)
  br label %222

222:                                              ; preds = %219, %216
  %223 = call i32 (...) @PrintPrompt()
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %225 = call i32 @EchoCommand(%struct.TYPE_9__* %224)
  %226 = call i64 @_T(i8 signext 10)
  %227 = call i32 @ConOutChar(i64 %226)
  br label %228

228:                                              ; preds = %222, %210, %207, %204
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** @bc, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  store %struct.TYPE_9__* %229, %struct.TYPE_9__** %231, align 8
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %233 = call i32 @ExecuteCommand(%struct.TYPE_9__* %232)
  store i32 %233, i32* %13, align 4
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %235 = call i32 @FreeCommand(%struct.TYPE_9__* %234)
  br label %190

236:                                              ; preds = %197
  %237 = load i32, i32* @nErrorLevel, align 4
  store i32 %237, i32* %13, align 4
  %238 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %239 = load i32*, i32** %11, align 8
  store i32* %239, i32** @fc, align 8
  %240 = load i32, i32* %13, align 4
  store i32 %240, i32* %5, align 4
  br label %241

241:                                              ; preds = %236, %178, %74
  %242 = load i32, i32* %5, align 4
  ret i32 %242
}

declare dso_local i32 @SetLastError(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @GetFullPathName(i64*, i32, i32*, i32*) #1

declare dso_local i64 @_tcsicmp(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_aw(i64*) #1

declare dso_local i64 @CreateFile(i64*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ConErrResPuts(i32) #1

declare dso_local i32 @ClearBatch(...) #1

declare dso_local i32 @AddBatchRedirection(i32*) #1

declare dso_local i32 @ExitBatch(...) #1

declare dso_local i32 @BatchFile2Mem(i64) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @BatchParams(i64*, i64*) #1

declare dso_local i32* @cmd_dup(i64*) #1

declare dso_local i32 @error_out_of_memory(...) #1

declare dso_local i64 @_T(i8 signext) #1

declare dso_local i32 @cmd_goto(i64*) #1

declare dso_local %struct.TYPE_9__* @ParseCommand(i32*) #1

declare dso_local i32 @ConOutChar(i64) #1

declare dso_local i32 @PrintPrompt(...) #1

declare dso_local i32 @EchoCommand(%struct.TYPE_9__*) #1

declare dso_local i32 @ExecuteCommand(%struct.TYPE_9__*) #1

declare dso_local i32 @FreeCommand(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
