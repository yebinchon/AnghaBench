; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_cfg.c_zend_mark_reachable.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_cfg.c_zend_mark_reachable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32*, i32, i32 }

@ZEND_BB_REACHABLE = common dso_local global i32 0, align 4
@ZEND_BB_EXIT = common dso_local global i32 0, align 4
@ZEND_JMP = common dso_local global i64 0, align 8
@ZEND_BB_TARGET = common dso_local global i32 0, align 4
@ZEND_BB_FOLLOW = common dso_local global i32 0, align 4
@ZEND_CFG_STACKLESS = common dso_local global i32 0, align 4
@ZEND_INCLUDE_OR_EVAL = common dso_local global i64 0, align 8
@ZEND_GENERATOR_CREATE = common dso_local global i64 0, align 8
@ZEND_YIELD = common dso_local global i64 0, align 8
@ZEND_YIELD_FROM = common dso_local global i64 0, align 8
@ZEND_DO_FCALL = common dso_local global i64 0, align 8
@ZEND_DO_UCALL = common dso_local global i64 0, align 8
@ZEND_DO_FCALL_BY_NAME = common dso_local global i64 0, align 8
@ZEND_BB_ENTRY = common dso_local global i32 0, align 4
@ZEND_CFG_RECV_ENTRY = common dso_local global i32 0, align 4
@ZEND_RECV = common dso_local global i64 0, align 8
@ZEND_RECV_INIT = common dso_local global i64 0, align 8
@ZEND_BB_RECV_ENTRY = common dso_local global i32 0, align 4
@ZEND_JMPZNZ = common dso_local global i64 0, align 8
@ZEND_SWITCH_LONG = common dso_local global i64 0, align 8
@ZEND_SWITCH_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_9__*)* @zend_mark_reachable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_mark_reachable(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %7, align 8
  br label %14

14:                                               ; preds = %3, %250
  %15 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %14
  %25 = load i32, i32* @ZEND_BB_EXIT, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %251

30:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %247, %30
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %250

37:                                               ; preds = %31
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i64 %46
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %9, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %211

52:                                               ; preds = %37
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %56, %59
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %10, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %151

70:                                               ; preds = %52
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* @ZEND_JMP, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* @ZEND_BB_TARGET, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %150

80:                                               ; preds = %70
  %81 = load i32, i32* @ZEND_BB_FOLLOW, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ZEND_CFG_STACKLESS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %127

92:                                               ; preds = %80
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* @ZEND_INCLUDE_OR_EVAL, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %120, label %96

96:                                               ; preds = %92
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @ZEND_GENERATOR_CREATE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %120, label %100

100:                                              ; preds = %96
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* @ZEND_YIELD, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %120, label %104

104:                                              ; preds = %100
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* @ZEND_YIELD_FROM, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %120, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* @ZEND_DO_FCALL, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* @ZEND_DO_UCALL, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* @ZEND_DO_FCALL_BY_NAME, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %116, %112, %108, %104, %100, %96, %92
  %121 = load i32, i32* @ZEND_BB_ENTRY, align 4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %120, %116
  br label %127

127:                                              ; preds = %126, %80
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ZEND_CFG_RECV_ENTRY, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %127
  %135 = load i64, i64* %10, align 8
  %136 = load i64, i64* @ZEND_RECV, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i64, i64* %10, align 8
  %140 = load i64, i64* @ZEND_RECV_INIT, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %138, %134
  %143 = load i32, i32* @ZEND_BB_RECV_ENTRY, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %142, %138
  br label %149

149:                                              ; preds = %148, %127
  br label %150

150:                                              ; preds = %149, %74
  br label %210

151:                                              ; preds = %52
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %176

156:                                              ; preds = %151
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %156
  %160 = load i64, i64* %10, align 8
  %161 = load i64, i64* @ZEND_JMPZNZ, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %159, %156
  %164 = load i32, i32* @ZEND_BB_TARGET, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %175

169:                                              ; preds = %159
  %170 = load i32, i32* @ZEND_BB_FOLLOW, align 4
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %169, %163
  br label %209

176:                                              ; preds = %151
  %177 = load i64, i64* %10, align 8
  %178 = load i64, i64* @ZEND_SWITCH_LONG, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = load i64, i64* %10, align 8
  %182 = load i64, i64* @ZEND_SWITCH_STRING, align 8
  %183 = icmp eq i64 %181, %182
  br label %184

184:                                              ; preds = %180, %176
  %185 = phi i1 [ true, %176 ], [ %183, %180 ]
  %186 = zext i1 %185 to i32
  %187 = call i32 @ZEND_ASSERT(i32 %186)
  %188 = load i32, i32* %8, align 4
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %191, 1
  %193 = icmp eq i32 %188, %192
  br i1 %193, label %194, label %202

194:                                              ; preds = %184
  %195 = load i32, i32* @ZEND_BB_FOLLOW, align 4
  %196 = load i32, i32* @ZEND_BB_TARGET, align 4
  %197 = or i32 %195, %196
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  br label %208

202:                                              ; preds = %184
  %203 = load i32, i32* @ZEND_BB_TARGET, align 4
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %202, %194
  br label %209

209:                                              ; preds = %208, %175
  br label %210

210:                                              ; preds = %209, %150
  br label %217

211:                                              ; preds = %37
  %212 = load i32, i32* @ZEND_BB_FOLLOW, align 4
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 8
  br label %217

217:                                              ; preds = %211, %210
  %218 = load i32, i32* %8, align 4
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = sub nsw i32 %221, 1
  %223 = icmp eq i32 %218, %222
  br i1 %223, label %224, label %234

224:                                              ; preds = %217
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  br label %251

232:                                              ; preds = %224
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %233, %struct.TYPE_9__** %6, align 8
  br label %250

234:                                              ; preds = %217
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @ZEND_BB_REACHABLE, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %234
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  call void @zend_mark_reachable(%struct.TYPE_7__* %242, %struct.TYPE_8__* %243, %struct.TYPE_9__* %244)
  br label %245

245:                                              ; preds = %241, %234
  br label %246

246:                                              ; preds = %245
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %8, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %8, align 4
  br label %31

250:                                              ; preds = %232, %31
  br label %14

251:                                              ; preds = %231, %24
  ret void
}

declare dso_local i32 @ZEND_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
