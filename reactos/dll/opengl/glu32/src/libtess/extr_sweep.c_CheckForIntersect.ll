; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_CheckForIntersect.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_CheckForIntersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_51__ = type { i32, i32*, %struct.TYPE_49__* }
%struct.TYPE_49__ = type { i64, i64, i64 }
%struct.TYPE_53__ = type { i32, %struct.TYPE_52__*, i32 }
%struct.TYPE_52__ = type { %struct.TYPE_49__*, %struct.TYPE_52__*, %struct.TYPE_52__*, %struct.TYPE_52__*, %struct.TYPE_52__*, %struct.TYPE_52__*, %struct.TYPE_49__* }
%struct.TYPE_50__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_51__*, %struct.TYPE_53__*)* @CheckForIntersect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckForIntersect(%struct.TYPE_51__* %0, %struct.TYPE_53__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_51__*, align 8
  %5 = alloca %struct.TYPE_53__*, align 8
  %6 = alloca %struct.TYPE_53__*, align 8
  %7 = alloca %struct.TYPE_52__*, align 8
  %8 = alloca %struct.TYPE_52__*, align 8
  %9 = alloca %struct.TYPE_49__*, align 8
  %10 = alloca %struct.TYPE_49__*, align 8
  %11 = alloca %struct.TYPE_49__*, align 8
  %12 = alloca %struct.TYPE_49__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_49__, align 8
  %16 = alloca %struct.TYPE_49__*, align 8
  %17 = alloca %struct.TYPE_52__*, align 8
  store %struct.TYPE_51__* %0, %struct.TYPE_51__** %4, align 8
  store %struct.TYPE_53__* %1, %struct.TYPE_53__** %5, align 8
  %18 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %19 = call %struct.TYPE_53__* @RegionBelow(%struct.TYPE_53__* %18)
  store %struct.TYPE_53__* %19, %struct.TYPE_53__** %6, align 8
  %20 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_52__*, %struct.TYPE_52__** %21, align 8
  store %struct.TYPE_52__* %22, %struct.TYPE_52__** %7, align 8
  %23 = load %struct.TYPE_53__*, %struct.TYPE_53__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_52__*, %struct.TYPE_52__** %24, align 8
  store %struct.TYPE_52__* %25, %struct.TYPE_52__** %8, align 8
  %26 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_49__*, %struct.TYPE_49__** %27, align 8
  store %struct.TYPE_49__* %28, %struct.TYPE_49__** %9, align 8
  %29 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_49__*, %struct.TYPE_49__** %30, align 8
  store %struct.TYPE_49__* %31, %struct.TYPE_49__** %10, align 8
  %32 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %32, i32 0, i32 6
  %34 = load %struct.TYPE_49__*, %struct.TYPE_49__** %33, align 8
  store %struct.TYPE_49__* %34, %struct.TYPE_49__** %11, align 8
  %35 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %35, i32 0, i32 6
  %37 = load %struct.TYPE_49__*, %struct.TYPE_49__** %36, align 8
  store %struct.TYPE_49__* %37, %struct.TYPE_49__** %12, align 8
  %38 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %39 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %40 = call i64 @VertEq(%struct.TYPE_49__* %38, %struct.TYPE_49__* %39)
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %46 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_49__*, %struct.TYPE_49__** %47, align 8
  %49 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %50 = call i64 @EdgeSign(%struct.TYPE_49__* %45, %struct.TYPE_49__* %48, %struct.TYPE_49__* %49)
  %51 = icmp sle i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %55 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_49__*, %struct.TYPE_49__** %56, align 8
  %58 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %59 = call i64 @EdgeSign(%struct.TYPE_49__* %54, %struct.TYPE_49__* %57, %struct.TYPE_49__* %58)
  %60 = icmp sge i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %64 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_49__*, %struct.TYPE_49__** %65, align 8
  %67 = icmp ne %struct.TYPE_49__* %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %2
  %69 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %70 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_49__*, %struct.TYPE_49__** %71, align 8
  %73 = icmp ne %struct.TYPE_49__* %69, %72
  br label %74

74:                                               ; preds = %68, %2
  %75 = phi i1 [ false, %2 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %74
  %83 = load %struct.TYPE_53__*, %struct.TYPE_53__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %82, %74
  %89 = phi i1 [ false, %74 ], [ %87, %82 ]
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %93 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %94 = icmp eq %struct.TYPE_49__* %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %3, align 4
  br label %580

97:                                               ; preds = %88
  %98 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @MIN(i64 %100, i64 %103)
  store i64 %104, i64* %13, align 8
  %105 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @MAX(i64 %107, i64 %110)
  store i64 %111, i64* %14, align 8
  %112 = load i64, i64* %13, align 8
  %113 = load i64, i64* %14, align 8
  %114 = icmp sgt i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %97
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %3, align 4
  br label %580

117:                                              ; preds = %97
  %118 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %119 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %120 = call i64 @VertLeq(%struct.TYPE_49__* %118, %struct.TYPE_49__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %124 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %125 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %126 = call i64 @EdgeSign(%struct.TYPE_49__* %123, %struct.TYPE_49__* %124, %struct.TYPE_49__* %125)
  %127 = icmp sgt i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* @FALSE, align 4
  store i32 %129, i32* %3, align 4
  br label %580

130:                                              ; preds = %122
  br label %140

131:                                              ; preds = %117
  %132 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %133 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %134 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %135 = call i64 @EdgeSign(%struct.TYPE_49__* %132, %struct.TYPE_49__* %133, %struct.TYPE_49__* %134)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* @FALSE, align 4
  store i32 %138, i32* %3, align 4
  br label %580

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %130
  %141 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %142 = call i32 @DebugEvent(%struct.TYPE_51__* %141)
  %143 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %144 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %145 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %146 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %147 = call i32 @__gl_edgeIntersect(%struct.TYPE_49__* %143, %struct.TYPE_49__* %144, %struct.TYPE_49__* %145, %struct.TYPE_49__* %146, %struct.TYPE_49__* %15)
  %148 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @MIN(i64 %150, i64 %153)
  %155 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %15, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp sle i64 %154, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %15, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @MAX(i64 %164, i64 %167)
  %169 = icmp sle i64 %161, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @MIN(i64 %174, i64 %177)
  %179 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %15, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp sle i64 %178, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @assert(i32 %182)
  %184 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %15, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = call i64 @MAX(i64 %188, i64 %191)
  %193 = icmp sle i64 %185, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  %196 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_49__*, %struct.TYPE_49__** %197, align 8
  %199 = call i64 @VertLeq(%struct.TYPE_49__* %15, %struct.TYPE_49__* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %140
  %202 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_49__*, %struct.TYPE_49__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %15, i32 0, i32 1
  store i64 %206, i64* %207, align 8
  %208 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_49__*, %struct.TYPE_49__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %15, i32 0, i32 0
  store i64 %212, i64* %213, align 8
  br label %214

214:                                              ; preds = %201, %140
  %215 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %216 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %217 = call i64 @VertLeq(%struct.TYPE_49__* %215, %struct.TYPE_49__* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  br label %223

221:                                              ; preds = %214
  %222 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi %struct.TYPE_49__* [ %220, %219 ], [ %222, %221 ]
  store %struct.TYPE_49__* %224, %struct.TYPE_49__** %16, align 8
  %225 = load %struct.TYPE_49__*, %struct.TYPE_49__** %16, align 8
  %226 = call i64 @VertLeq(%struct.TYPE_49__* %225, %struct.TYPE_49__* %15)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %223
  %229 = load %struct.TYPE_49__*, %struct.TYPE_49__** %16, align 8
  %230 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %15, i32 0, i32 1
  store i64 %231, i64* %232, align 8
  %233 = load %struct.TYPE_49__*, %struct.TYPE_49__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %15, i32 0, i32 0
  store i64 %235, i64* %236, align 8
  br label %237

237:                                              ; preds = %228, %223
  %238 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %239 = call i64 @VertEq(%struct.TYPE_49__* %15, %struct.TYPE_49__* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %237
  %242 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %243 = call i64 @VertEq(%struct.TYPE_49__* %15, %struct.TYPE_49__* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %241, %237
  %246 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %247 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %248 = call i32 @CheckForRightSplice(%struct.TYPE_51__* %246, %struct.TYPE_53__* %247)
  %249 = load i32, i32* @FALSE, align 4
  store i32 %249, i32* %3, align 4
  br label %580

250:                                              ; preds = %241
  %251 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %252 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_49__*, %struct.TYPE_49__** %253, align 8
  %255 = call i64 @VertEq(%struct.TYPE_49__* %251, %struct.TYPE_49__* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %250
  %258 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %259 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_49__*, %struct.TYPE_49__** %260, align 8
  %262 = call i64 @EdgeSign(%struct.TYPE_49__* %258, %struct.TYPE_49__* %261, %struct.TYPE_49__* %15)
  %263 = icmp sge i64 %262, 0
  br i1 %263, label %278, label %264

264:                                              ; preds = %257, %250
  %265 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %266 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %266, i32 0, i32 2
  %268 = load %struct.TYPE_49__*, %struct.TYPE_49__** %267, align 8
  %269 = call i64 @VertEq(%struct.TYPE_49__* %265, %struct.TYPE_49__* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %485, label %271

271:                                              ; preds = %264
  %272 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %273 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %273, i32 0, i32 2
  %275 = load %struct.TYPE_49__*, %struct.TYPE_49__** %274, align 8
  %276 = call i64 @EdgeSign(%struct.TYPE_49__* %272, %struct.TYPE_49__* %275, %struct.TYPE_49__* %15)
  %277 = icmp sle i64 %276, 0
  br i1 %277, label %278, label %485

278:                                              ; preds = %271, %257
  %279 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %280 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_49__*, %struct.TYPE_49__** %281, align 8
  %283 = icmp eq %struct.TYPE_49__* %279, %282
  br i1 %283, label %284, label %337

284:                                              ; preds = %278
  %285 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %286 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_52__*, %struct.TYPE_52__** %286, align 8
  %288 = call i32* @__gl_meshSplitEdge(%struct.TYPE_52__* %287)
  %289 = icmp eq i32* %288, null
  br i1 %289, label %290, label %295

290:                                              ; preds = %284
  %291 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @longjmp(i32 %293, i32 1)
  br label %295

295:                                              ; preds = %290, %284
  %296 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %296, i32 0, i32 2
  %298 = load %struct.TYPE_52__*, %struct.TYPE_52__** %297, align 8
  %299 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %300 = call i32 @__gl_meshSplice(%struct.TYPE_52__* %298, %struct.TYPE_52__* %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %307, label %302

302:                                              ; preds = %295
  %303 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @longjmp(i32 %305, i32 1)
  br label %307

307:                                              ; preds = %302, %295
  %308 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %309 = call %struct.TYPE_53__* @TopLeftRegion(%struct.TYPE_53__* %308)
  store %struct.TYPE_53__* %309, %struct.TYPE_53__** %5, align 8
  %310 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %311 = icmp eq %struct.TYPE_53__* %310, null
  br i1 %311, label %312, label %317

312:                                              ; preds = %307
  %313 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @longjmp(i32 %315, i32 1)
  br label %317

317:                                              ; preds = %312, %307
  %318 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %319 = call %struct.TYPE_53__* @RegionBelow(%struct.TYPE_53__* %318)
  %320 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %319, i32 0, i32 1
  %321 = load %struct.TYPE_52__*, %struct.TYPE_52__** %320, align 8
  store %struct.TYPE_52__* %321, %struct.TYPE_52__** %7, align 8
  %322 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %323 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %324 = call %struct.TYPE_53__* @RegionBelow(%struct.TYPE_53__* %323)
  %325 = load %struct.TYPE_53__*, %struct.TYPE_53__** %6, align 8
  %326 = call %struct.TYPE_52__* @FinishLeftRegions(%struct.TYPE_51__* %322, %struct.TYPE_53__* %324, %struct.TYPE_53__* %325)
  %327 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %328 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %329 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_52__*, %struct.TYPE_52__** %330, align 8
  %332 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %333 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %334 = load i32, i32* @TRUE, align 4
  %335 = call i32 @AddRightEdges(%struct.TYPE_51__* %327, %struct.TYPE_53__* %328, %struct.TYPE_52__* %331, %struct.TYPE_52__* %332, %struct.TYPE_52__* %333, i32 %334)
  %336 = load i32, i32* @TRUE, align 4
  store i32 %336, i32* %3, align 4
  br label %580

337:                                              ; preds = %278
  %338 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %339 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %339, i32 0, i32 2
  %341 = load %struct.TYPE_49__*, %struct.TYPE_49__** %340, align 8
  %342 = icmp eq %struct.TYPE_49__* %338, %341
  br i1 %342, label %343, label %398

343:                                              ; preds = %337
  %344 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %344, i32 0, i32 2
  %346 = load %struct.TYPE_52__*, %struct.TYPE_52__** %345, align 8
  %347 = call i32* @__gl_meshSplitEdge(%struct.TYPE_52__* %346)
  %348 = icmp eq i32* %347, null
  br i1 %348, label %349, label %354

349:                                              ; preds = %343
  %350 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @longjmp(i32 %352, i32 1)
  br label %354

354:                                              ; preds = %349, %343
  %355 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %355, i32 0, i32 5
  %357 = load %struct.TYPE_52__*, %struct.TYPE_52__** %356, align 8
  %358 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %359 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %358, i32 0, i32 1
  %360 = load %struct.TYPE_52__*, %struct.TYPE_52__** %359, align 8
  %361 = call i32 @__gl_meshSplice(%struct.TYPE_52__* %357, %struct.TYPE_52__* %360)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %368, label %363

363:                                              ; preds = %354
  %364 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = call i32 @longjmp(i32 %366, i32 1)
  br label %368

368:                                              ; preds = %363, %354
  %369 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  store %struct.TYPE_53__* %369, %struct.TYPE_53__** %6, align 8
  %370 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %371 = call %struct.TYPE_53__* @TopRightRegion(%struct.TYPE_53__* %370)
  store %struct.TYPE_53__* %371, %struct.TYPE_53__** %5, align 8
  %372 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %373 = call %struct.TYPE_53__* @RegionBelow(%struct.TYPE_53__* %372)
  %374 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %373, i32 0, i32 1
  %375 = load %struct.TYPE_52__*, %struct.TYPE_52__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %375, i32 0, i32 3
  %377 = load %struct.TYPE_52__*, %struct.TYPE_52__** %376, align 8
  store %struct.TYPE_52__* %377, %struct.TYPE_52__** %17, align 8
  %378 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %378, i32 0, i32 1
  %380 = load %struct.TYPE_52__*, %struct.TYPE_52__** %379, align 8
  %381 = load %struct.TYPE_53__*, %struct.TYPE_53__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %381, i32 0, i32 1
  store %struct.TYPE_52__* %380, %struct.TYPE_52__** %382, align 8
  %383 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %384 = load %struct.TYPE_53__*, %struct.TYPE_53__** %6, align 8
  %385 = call %struct.TYPE_52__* @FinishLeftRegions(%struct.TYPE_51__* %383, %struct.TYPE_53__* %384, %struct.TYPE_53__* null)
  store %struct.TYPE_52__* %385, %struct.TYPE_52__** %8, align 8
  %386 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %387 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %388 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %388, i32 0, i32 4
  %390 = load %struct.TYPE_52__*, %struct.TYPE_52__** %389, align 8
  %391 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %392 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %391, i32 0, i32 3
  %393 = load %struct.TYPE_52__*, %struct.TYPE_52__** %392, align 8
  %394 = load %struct.TYPE_52__*, %struct.TYPE_52__** %17, align 8
  %395 = load i32, i32* @TRUE, align 4
  %396 = call i32 @AddRightEdges(%struct.TYPE_51__* %386, %struct.TYPE_53__* %387, %struct.TYPE_52__* %390, %struct.TYPE_52__* %393, %struct.TYPE_52__* %394, i32 %395)
  %397 = load i32, i32* @TRUE, align 4
  store i32 %397, i32* %3, align 4
  br label %580

398:                                              ; preds = %337
  %399 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %400 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %400, i32 0, i32 2
  %402 = load %struct.TYPE_49__*, %struct.TYPE_49__** %401, align 8
  %403 = call i64 @EdgeSign(%struct.TYPE_49__* %399, %struct.TYPE_49__* %402, %struct.TYPE_49__* %15)
  %404 = icmp sge i64 %403, 0
  br i1 %404, label %405, label %441

405:                                              ; preds = %398
  %406 = load i32, i32* @TRUE, align 4
  %407 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %407, i32 0, i32 0
  store i32 %406, i32* %408, align 8
  %409 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %410 = call %struct.TYPE_50__* @RegionAbove(%struct.TYPE_53__* %409)
  %411 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %410, i32 0, i32 0
  store i32 %406, i32* %411, align 4
  %412 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %413 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %412, i32 0, i32 2
  %414 = load %struct.TYPE_52__*, %struct.TYPE_52__** %413, align 8
  %415 = call i32* @__gl_meshSplitEdge(%struct.TYPE_52__* %414)
  %416 = icmp eq i32* %415, null
  br i1 %416, label %417, label %422

417:                                              ; preds = %405
  %418 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = call i32 @longjmp(i32 %420, i32 1)
  br label %422

422:                                              ; preds = %417, %405
  %423 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %423, i32 0, i32 2
  %425 = load %struct.TYPE_49__*, %struct.TYPE_49__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %429 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %428, i32 0, i32 0
  %430 = load %struct.TYPE_49__*, %struct.TYPE_49__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %430, i32 0, i32 1
  store i64 %427, i64* %431, align 8
  %432 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %433 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %432, i32 0, i32 2
  %434 = load %struct.TYPE_49__*, %struct.TYPE_49__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %438 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %437, i32 0, i32 0
  %439 = load %struct.TYPE_49__*, %struct.TYPE_49__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %439, i32 0, i32 0
  store i64 %436, i64* %440, align 8
  br label %441

441:                                              ; preds = %422, %398
  %442 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %443 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %444 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %443, i32 0, i32 2
  %445 = load %struct.TYPE_49__*, %struct.TYPE_49__** %444, align 8
  %446 = call i64 @EdgeSign(%struct.TYPE_49__* %442, %struct.TYPE_49__* %445, %struct.TYPE_49__* %15)
  %447 = icmp sle i64 %446, 0
  br i1 %447, label %448, label %483

448:                                              ; preds = %441
  %449 = load i32, i32* @TRUE, align 4
  %450 = load %struct.TYPE_53__*, %struct.TYPE_53__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %450, i32 0, i32 0
  store i32 %449, i32* %451, align 8
  %452 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %453 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %452, i32 0, i32 0
  store i32 %449, i32* %453, align 8
  %454 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %455 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %454, i32 0, i32 2
  %456 = load %struct.TYPE_52__*, %struct.TYPE_52__** %455, align 8
  %457 = call i32* @__gl_meshSplitEdge(%struct.TYPE_52__* %456)
  %458 = icmp eq i32* %457, null
  br i1 %458, label %459, label %464

459:                                              ; preds = %448
  %460 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %461 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = call i32 @longjmp(i32 %462, i32 1)
  br label %464

464:                                              ; preds = %459, %448
  %465 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %466 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %465, i32 0, i32 2
  %467 = load %struct.TYPE_49__*, %struct.TYPE_49__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %467, i32 0, i32 1
  %469 = load i64, i64* %468, align 8
  %470 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %471 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %470, i32 0, i32 0
  %472 = load %struct.TYPE_49__*, %struct.TYPE_49__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %472, i32 0, i32 1
  store i64 %469, i64* %473, align 8
  %474 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %475 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %474, i32 0, i32 2
  %476 = load %struct.TYPE_49__*, %struct.TYPE_49__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %480 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %479, i32 0, i32 0
  %481 = load %struct.TYPE_49__*, %struct.TYPE_49__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %481, i32 0, i32 0
  store i64 %478, i64* %482, align 8
  br label %483

483:                                              ; preds = %464, %441
  %484 = load i32, i32* @FALSE, align 4
  store i32 %484, i32* %3, align 4
  br label %580

485:                                              ; preds = %271, %264
  %486 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %487 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %486, i32 0, i32 2
  %488 = load %struct.TYPE_52__*, %struct.TYPE_52__** %487, align 8
  %489 = call i32* @__gl_meshSplitEdge(%struct.TYPE_52__* %488)
  %490 = icmp eq i32* %489, null
  br i1 %490, label %491, label %496

491:                                              ; preds = %485
  %492 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %493 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = call i32 @longjmp(i32 %494, i32 1)
  br label %496

496:                                              ; preds = %491, %485
  %497 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %498 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %497, i32 0, i32 2
  %499 = load %struct.TYPE_52__*, %struct.TYPE_52__** %498, align 8
  %500 = call i32* @__gl_meshSplitEdge(%struct.TYPE_52__* %499)
  %501 = icmp eq i32* %500, null
  br i1 %501, label %502, label %507

502:                                              ; preds = %496
  %503 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 8
  %506 = call i32 @longjmp(i32 %505, i32 1)
  br label %507

507:                                              ; preds = %502, %496
  %508 = load %struct.TYPE_52__*, %struct.TYPE_52__** %8, align 8
  %509 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %508, i32 0, i32 1
  %510 = load %struct.TYPE_52__*, %struct.TYPE_52__** %509, align 8
  %511 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %512 = call i32 @__gl_meshSplice(%struct.TYPE_52__* %510, %struct.TYPE_52__* %511)
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %519, label %514

514:                                              ; preds = %507
  %515 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %516 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = call i32 @longjmp(i32 %517, i32 1)
  br label %519

519:                                              ; preds = %514, %507
  %520 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %15, i32 0, i32 1
  %521 = load i64, i64* %520, align 8
  %522 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %523 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %522, i32 0, i32 0
  %524 = load %struct.TYPE_49__*, %struct.TYPE_49__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %524, i32 0, i32 1
  store i64 %521, i64* %525, align 8
  %526 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %15, i32 0, i32 0
  %527 = load i64, i64* %526, align 8
  %528 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %529 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %528, i32 0, i32 0
  %530 = load %struct.TYPE_49__*, %struct.TYPE_49__** %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %530, i32 0, i32 0
  store i64 %527, i64* %531, align 8
  %532 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %533 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %532, i32 0, i32 1
  %534 = load i32*, i32** %533, align 8
  %535 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %536 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %535, i32 0, i32 0
  %537 = load %struct.TYPE_49__*, %struct.TYPE_49__** %536, align 8
  %538 = call i64 @pqInsert(i32* %534, %struct.TYPE_49__* %537)
  %539 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %540 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %539, i32 0, i32 0
  %541 = load %struct.TYPE_49__*, %struct.TYPE_49__** %540, align 8
  %542 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %541, i32 0, i32 2
  store i64 %538, i64* %542, align 8
  %543 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %544 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %543, i32 0, i32 0
  %545 = load %struct.TYPE_49__*, %struct.TYPE_49__** %544, align 8
  %546 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %545, i32 0, i32 2
  %547 = load i64, i64* %546, align 8
  %548 = load i64, i64* @LONG_MAX, align 8
  %549 = icmp eq i64 %547, %548
  br i1 %549, label %550, label %561

550:                                              ; preds = %519
  %551 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %552 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %551, i32 0, i32 1
  %553 = load i32*, i32** %552, align 8
  %554 = call i32 @pqDeletePriorityQ(i32* %553)
  %555 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %556 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %555, i32 0, i32 1
  store i32* null, i32** %556, align 8
  %557 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %558 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 8
  %560 = call i32 @longjmp(i32 %559, i32 1)
  br label %561

561:                                              ; preds = %550, %519
  %562 = load %struct.TYPE_51__*, %struct.TYPE_51__** %4, align 8
  %563 = load %struct.TYPE_52__*, %struct.TYPE_52__** %7, align 8
  %564 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %563, i32 0, i32 0
  %565 = load %struct.TYPE_49__*, %struct.TYPE_49__** %564, align 8
  %566 = load %struct.TYPE_49__*, %struct.TYPE_49__** %9, align 8
  %567 = load %struct.TYPE_49__*, %struct.TYPE_49__** %11, align 8
  %568 = load %struct.TYPE_49__*, %struct.TYPE_49__** %10, align 8
  %569 = load %struct.TYPE_49__*, %struct.TYPE_49__** %12, align 8
  %570 = call i32 @GetIntersectData(%struct.TYPE_51__* %562, %struct.TYPE_49__* %565, %struct.TYPE_49__* %566, %struct.TYPE_49__* %567, %struct.TYPE_49__* %568, %struct.TYPE_49__* %569)
  %571 = load i32, i32* @TRUE, align 4
  %572 = load %struct.TYPE_53__*, %struct.TYPE_53__** %6, align 8
  %573 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %572, i32 0, i32 0
  store i32 %571, i32* %573, align 8
  %574 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %575 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %574, i32 0, i32 0
  store i32 %571, i32* %575, align 8
  %576 = load %struct.TYPE_53__*, %struct.TYPE_53__** %5, align 8
  %577 = call %struct.TYPE_50__* @RegionAbove(%struct.TYPE_53__* %576)
  %578 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %577, i32 0, i32 0
  store i32 %571, i32* %578, align 4
  %579 = load i32, i32* @FALSE, align 4
  store i32 %579, i32* %3, align 4
  br label %580

580:                                              ; preds = %561, %483, %368, %317, %245, %137, %128, %115, %95
  %581 = load i32, i32* %3, align 4
  ret i32 %581
}

declare dso_local %struct.TYPE_53__* @RegionBelow(%struct.TYPE_53__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @VertEq(%struct.TYPE_49__*, %struct.TYPE_49__*) #1

declare dso_local i64 @EdgeSign(%struct.TYPE_49__*, %struct.TYPE_49__*, %struct.TYPE_49__*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i64 @VertLeq(%struct.TYPE_49__*, %struct.TYPE_49__*) #1

declare dso_local i32 @DebugEvent(%struct.TYPE_51__*) #1

declare dso_local i32 @__gl_edgeIntersect(%struct.TYPE_49__*, %struct.TYPE_49__*, %struct.TYPE_49__*, %struct.TYPE_49__*, %struct.TYPE_49__*) #1

declare dso_local i32 @CheckForRightSplice(%struct.TYPE_51__*, %struct.TYPE_53__*) #1

declare dso_local i32* @__gl_meshSplitEdge(%struct.TYPE_52__*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @__gl_meshSplice(%struct.TYPE_52__*, %struct.TYPE_52__*) #1

declare dso_local %struct.TYPE_53__* @TopLeftRegion(%struct.TYPE_53__*) #1

declare dso_local %struct.TYPE_52__* @FinishLeftRegions(%struct.TYPE_51__*, %struct.TYPE_53__*, %struct.TYPE_53__*) #1

declare dso_local i32 @AddRightEdges(%struct.TYPE_51__*, %struct.TYPE_53__*, %struct.TYPE_52__*, %struct.TYPE_52__*, %struct.TYPE_52__*, i32) #1

declare dso_local %struct.TYPE_53__* @TopRightRegion(%struct.TYPE_53__*) #1

declare dso_local %struct.TYPE_50__* @RegionAbove(%struct.TYPE_53__*) #1

declare dso_local i64 @pqInsert(i32*, %struct.TYPE_49__*) #1

declare dso_local i32 @pqDeletePriorityQ(i32*) #1

declare dso_local i32 @GetIntersectData(%struct.TYPE_51__*, %struct.TYPE_49__*, %struct.TYPE_49__*, %struct.TYPE_49__*, %struct.TYPE_49__*, %struct.TYPE_49__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
