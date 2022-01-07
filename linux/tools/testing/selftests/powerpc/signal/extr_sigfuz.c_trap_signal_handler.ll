; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/signal/extr_sigfuz.c_trap_signal_handler.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/signal/extr_sigfuz.c_trap_signal_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@tmp_uc = common dso_local global %struct.TYPE_13__* null, align 8
@MADV_DONTNEED = common dso_local global i32 0, align 4
@args = common dso_local global i32 0, align 4
@ARG_MESS_WITH_MSR_AT = common dso_local global i32 0, align 4
@MSR_TS_S = common dso_local global i32 0, align 4
@PT_MSR = common dso_local global i64 0, align 8
@MSR_TS_T = common dso_local global i32 0, align 4
@PT_NIP = common dso_local global i64 0, align 8
@PT_TRAP = common dso_local global i64 0, align 8
@PT_DSISR = common dso_local global i64 0, align 8
@PT_DAR = common dso_local global i64 0, align 8
@PT_ORIG_R3 = common dso_local global i64 0, align 8
@PT_XER = common dso_local global i64 0, align 8
@PT_RESULT = common dso_local global i64 0, align 8
@PT_SOFTE = common dso_local global i64 0, align 8
@PT_DSCR = common dso_local global i64 0, align 8
@PT_CTR = common dso_local global i64 0, align 8
@PT_LNK = common dso_local global i64 0, align 8
@PT_CCR = common dso_local global i64 0, align 8
@PT_REGS_COUNT = common dso_local global i64 0, align 8
@ARG_MESS_WITH_TM_BEFORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i8*)* @trap_signal_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trap_signal_handler(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %7, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tmp_uc, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %12, align 8
  %13 = call i64 @one_in_chance(i32 3)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = call i32 (...) @rand()
  %20 = call i32 @memset(%struct.TYPE_13__* %18, i32 %19, i32 16)
  br label %51

21:                                               ; preds = %3
  %22 = call i64 @one_in_chance(i32 2)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @memcpy(%struct.TYPE_13__* %27, i8* %28, i32 16)
  br label %50

30:                                               ; preds = %21
  %31 = call i64 @one_in_chance(i32 2)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tmp_uc, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tmp_uc, align 8
  %38 = call i32 @free(%struct.TYPE_13__* %37)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** @tmp_uc, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = call %struct.TYPE_13__* @malloc(i32 16)
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** @tmp_uc, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** @tmp_uc, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = load i32, i32* @MADV_DONTNEED, align 4
  %48 = call i32 @madvise(%struct.TYPE_13__* %46, i32 16, i32 %47)
  br label %49

49:                                               ; preds = %39, %30
  br label %50

50:                                               ; preds = %49, %24
  br label %51

51:                                               ; preds = %50, %15
  %52 = load i32, i32* @args, align 4
  %53 = load i32, i32* @ARG_MESS_WITH_MSR_AT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %153

56:                                               ; preds = %51
  %57 = call i64 @one_in_chance(i32 4)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %56
  %60 = load i32, i32* @MSR_TS_S, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @PT_MSR, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %60
  store i32 %70, i32* %68, align 4
  br label %105

71:                                               ; preds = %56
  %72 = call i64 @one_in_chance(i32 2)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load i32, i32* @MSR_TS_T, align 4
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @PT_MSR, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %75
  store i32 %85, i32* %83, align 4
  br label %104

86:                                               ; preds = %71
  %87 = call i64 @one_in_chance(i32 2)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load i32, i32* @MSR_TS_T, align 4
  %91 = load i32, i32* @MSR_TS_S, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @PT_MSR, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %92
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %89, %86
  br label %104

104:                                              ; preds = %103, %74
  br label %105

105:                                              ; preds = %104, %59
  %106 = call i64 @one_in_chance(i32 2)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %105
  %109 = load i32, i32* @MSR_TS_S, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @PT_MSR, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %109
  store i32 %117, i32* %115, align 4
  br label %152

118:                                              ; preds = %105
  %119 = call i64 @one_in_chance(i32 2)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %151

121:                                              ; preds = %118
  %122 = call i64 @one_in_chance(i32 2)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load i32, i32* @MSR_TS_T, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @PT_MSR, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %125
  store i32 %133, i32* %131, align 4
  br label %150

134:                                              ; preds = %121
  %135 = call i64 @one_in_chance(i32 2)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %134
  %138 = load i32, i32* @MSR_TS_T, align 4
  %139 = load i32, i32* @MSR_TS_S, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* @PT_MSR, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %140
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %137, %134
  br label %150

150:                                              ; preds = %149, %124
  br label %151

151:                                              ; preds = %150, %118
  br label %152

152:                                              ; preds = %151, %108
  br label %153

153:                                              ; preds = %152, %51
  %154 = call i64 @one_in_chance(i32 20)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = call i64 @one_in_chance(i32 5)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = call i32 (...) @mess_with_tm()
  br label %161

161:                                              ; preds = %159, %156
  br label %441

162:                                              ; preds = %153
  %163 = call i64 @one_in_chance(i32 10)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %162
  %166 = call i8* (...) @random()
  %167 = ptrtoint i8* %166 to i32
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @PT_MSR, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32 %167, i32* %173, align 4
  br label %174

174:                                              ; preds = %165, %162
  %175 = call i64 @one_in_chance(i32 10)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %174
  %178 = call i8* (...) @random()
  %179 = ptrtoint i8* %178 to i32
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* @PT_NIP, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32 %179, i32* %185, align 4
  br label %186

186:                                              ; preds = %177, %174
  %187 = call i64 @one_in_chance(i32 10)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %186
  %190 = call i8* (...) @random()
  %191 = ptrtoint i8* %190 to i32
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* @PT_MSR, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  store i32 %191, i32* %199, align 4
  br label %200

200:                                              ; preds = %189, %186
  %201 = call i64 @one_in_chance(i32 10)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %200
  %204 = call i8* (...) @random()
  %205 = ptrtoint i8* %204 to i32
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* @PT_NIP, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32 %205, i32* %213, align 4
  br label %214

214:                                              ; preds = %203, %200
  %215 = call i8* (...) @random()
  %216 = ptrtoint i8* %215 to i32
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load i64, i64* @PT_TRAP, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  store i32 %216, i32* %222, align 4
  %223 = call i8* (...) @random()
  %224 = ptrtoint i8* %223 to i32
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i64, i64* @PT_DSISR, align 8
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  store i32 %224, i32* %230, align 4
  %231 = call i8* (...) @random()
  %232 = ptrtoint i8* %231 to i32
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* @PT_DAR, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  store i32 %232, i32* %238, align 4
  %239 = call i8* (...) @random()
  %240 = ptrtoint i8* %239 to i32
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = load i64, i64* @PT_ORIG_R3, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  store i32 %240, i32* %246, align 4
  %247 = call i8* (...) @random()
  %248 = ptrtoint i8* %247 to i32
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i64, i64* @PT_XER, align 8
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  store i32 %248, i32* %254, align 4
  %255 = call i8* (...) @random()
  %256 = ptrtoint i8* %255 to i32
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load i64, i64* @PT_RESULT, align 8
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  store i32 %256, i32* %262, align 4
  %263 = call i8* (...) @random()
  %264 = ptrtoint i8* %263 to i32
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = load i64, i64* @PT_SOFTE, align 8
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  store i32 %264, i32* %270, align 4
  %271 = call i8* (...) @random()
  %272 = ptrtoint i8* %271 to i32
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load i64, i64* @PT_DSCR, align 8
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  store i32 %272, i32* %278, align 4
  %279 = call i8* (...) @random()
  %280 = ptrtoint i8* %279 to i32
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = load i64, i64* @PT_CTR, align 8
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  store i32 %280, i32* %286, align 4
  %287 = call i8* (...) @random()
  %288 = ptrtoint i8* %287 to i32
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = load i64, i64* @PT_LNK, align 8
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  store i32 %288, i32* %294, align 4
  %295 = call i8* (...) @random()
  %296 = ptrtoint i8* %295 to i32
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = load i64, i64* @PT_CCR, align 8
  %302 = getelementptr inbounds i32, i32* %300, i64 %301
  store i32 %296, i32* %302, align 4
  %303 = call i8* (...) @random()
  %304 = ptrtoint i8* %303 to i32
  %305 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = load i64, i64* @PT_REGS_COUNT, align 8
  %310 = getelementptr inbounds i32, i32* %308, i64 %309
  store i32 %304, i32* %310, align 4
  %311 = call i8* (...) @random()
  %312 = ptrtoint i8* %311 to i32
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = load i64, i64* @PT_TRAP, align 8
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  store i32 %312, i32* %320, align 4
  %321 = call i8* (...) @random()
  %322 = ptrtoint i8* %321 to i32
  %323 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = load i64, i64* @PT_DSISR, align 8
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  store i32 %322, i32* %330, align 4
  %331 = call i8* (...) @random()
  %332 = ptrtoint i8* %331 to i32
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  %339 = load i64, i64* @PT_DAR, align 8
  %340 = getelementptr inbounds i32, i32* %338, i64 %339
  store i32 %332, i32* %340, align 4
  %341 = call i8* (...) @random()
  %342 = ptrtoint i8* %341 to i32
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = load i64, i64* @PT_ORIG_R3, align 8
  %350 = getelementptr inbounds i32, i32* %348, i64 %349
  store i32 %342, i32* %350, align 4
  %351 = call i8* (...) @random()
  %352 = ptrtoint i8* %351 to i32
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 0
  %355 = load %struct.TYPE_13__*, %struct.TYPE_13__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 0
  %358 = load i32*, i32** %357, align 8
  %359 = load i64, i64* @PT_XER, align 8
  %360 = getelementptr inbounds i32, i32* %358, i64 %359
  store i32 %352, i32* %360, align 4
  %361 = call i8* (...) @random()
  %362 = ptrtoint i8* %361 to i32
  %363 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_13__*, %struct.TYPE_13__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 0
  %368 = load i32*, i32** %367, align 8
  %369 = load i64, i64* @PT_RESULT, align 8
  %370 = getelementptr inbounds i32, i32* %368, i64 %369
  store i32 %362, i32* %370, align 4
  %371 = call i8* (...) @random()
  %372 = ptrtoint i8* %371 to i32
  %373 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 0
  %375 = load %struct.TYPE_13__*, %struct.TYPE_13__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 0
  %378 = load i32*, i32** %377, align 8
  %379 = load i64, i64* @PT_SOFTE, align 8
  %380 = getelementptr inbounds i32, i32* %378, i64 %379
  store i32 %372, i32* %380, align 4
  %381 = call i8* (...) @random()
  %382 = ptrtoint i8* %381 to i32
  %383 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 0
  %385 = load %struct.TYPE_13__*, %struct.TYPE_13__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 0
  %388 = load i32*, i32** %387, align 8
  %389 = load i64, i64* @PT_DSCR, align 8
  %390 = getelementptr inbounds i32, i32* %388, i64 %389
  store i32 %382, i32* %390, align 4
  %391 = call i8* (...) @random()
  %392 = ptrtoint i8* %391 to i32
  %393 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %394 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %393, i32 0, i32 0
  %395 = load %struct.TYPE_13__*, %struct.TYPE_13__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %396, i32 0, i32 0
  %398 = load i32*, i32** %397, align 8
  %399 = load i64, i64* @PT_CTR, align 8
  %400 = getelementptr inbounds i32, i32* %398, i64 %399
  store i32 %392, i32* %400, align 4
  %401 = call i8* (...) @random()
  %402 = ptrtoint i8* %401 to i32
  %403 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 0
  %405 = load %struct.TYPE_13__*, %struct.TYPE_13__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 0
  %408 = load i32*, i32** %407, align 8
  %409 = load i64, i64* @PT_LNK, align 8
  %410 = getelementptr inbounds i32, i32* %408, i64 %409
  store i32 %402, i32* %410, align 4
  %411 = call i8* (...) @random()
  %412 = ptrtoint i8* %411 to i32
  %413 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %413, i32 0, i32 0
  %415 = load %struct.TYPE_13__*, %struct.TYPE_13__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i32 0, i32 0
  %418 = load i32*, i32** %417, align 8
  %419 = load i64, i64* @PT_CCR, align 8
  %420 = getelementptr inbounds i32, i32* %418, i64 %419
  store i32 %412, i32* %420, align 4
  %421 = call i8* (...) @random()
  %422 = ptrtoint i8* %421 to i32
  %423 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %423, i32 0, i32 0
  %425 = load %struct.TYPE_13__*, %struct.TYPE_13__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %426, i32 0, i32 0
  %428 = load i32*, i32** %427, align 8
  %429 = load i64, i64* @PT_REGS_COUNT, align 8
  %430 = getelementptr inbounds i32, i32* %428, i64 %429
  store i32 %422, i32* %430, align 4
  %431 = load i32, i32* @args, align 4
  %432 = load i32, i32* @ARG_MESS_WITH_TM_BEFORE, align 4
  %433 = and i32 %431, %432
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %441

435:                                              ; preds = %214
  %436 = call i64 @one_in_chance(i32 2)
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %440

438:                                              ; preds = %435
  %439 = call i32 (...) @mess_with_tm()
  br label %440

440:                                              ; preds = %438, %435
  br label %441

441:                                              ; preds = %161, %440, %214
  ret void
}

declare dso_local i64 @one_in_chance(i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @malloc(i32) #1

declare dso_local i32 @madvise(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @mess_with_tm(...) #1

declare dso_local i8* @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
