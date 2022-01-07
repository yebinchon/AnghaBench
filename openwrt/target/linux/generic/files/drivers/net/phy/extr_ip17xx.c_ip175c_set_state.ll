; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip175c_set_state.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_ip17xx.c_ip175c_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17xx_state = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__*, i64, i32*, i32*, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__, i32*, i32*, i32*, %struct.TYPE_11__, i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@MAX_VLANS = common dso_local global i32 0, align 4
@MAX_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip17xx_state*)* @ip175c_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip175c_set_state(%struct.ip17xx_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip17xx_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ip17xx_state* %0, %struct.ip17xx_state** %3, align 8
  %12 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %13 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %14 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %17 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %16, i32 0, i32 3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 13
  %20 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %21 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %20, i32 0, i32 3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 12
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @SET_PORT_BITS(%struct.ip17xx_state* %12, i32 %15, i32 %26, i32* %24)
  %28 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %29 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %30 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %33 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %32, i32 0, i32 3
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 11
  %36 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %37 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %36, i32 0, i32 3
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 10
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @SET_PORT_BITS(%struct.ip17xx_state* %28, i32 %31, i32 %42, i32* %40)
  %44 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %45 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %44, i32 0, i32 3
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @REG_SUPP(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %141

52:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %137, %52
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %56 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %55, i32 0, i32 3
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %54, %59
  br i1 %60, label %61, label %140

61:                                               ; preds = %53
  %62 = load i32, i32* %4, align 4
  %63 = srem i32 %62, 2
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %67 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %66, i32 0, i32 3
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 9
  %70 = load i32*, i32** %69, align 8
  br label %77

71:                                               ; preds = %61
  %72 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %73 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %72, i32 0, i32 3
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 8
  %76 = load i32*, i32** %75, align 8
  br label %77

77:                                               ; preds = %71, %65
  %78 = phi i32* [ %70, %65 ], [ %76, %71 ]
  store i32* %78, i32** %7, align 8
  %79 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %80 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %79, i32 0, i32 3
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 7
  %83 = bitcast %struct.TYPE_11__* %6 to i8*
  %84 = bitcast %struct.TYPE_11__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 8 %84, i64 4, i1 false)
  %85 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %86 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %85, i32 0, i32 3
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %77
  %92 = load i32, i32* %4, align 4
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %92
  store i32 %95, i32* %93, align 4
  br label %117

96:                                               ; preds = %77
  %97 = load i32, i32* %4, align 4
  switch i32 %97, label %114 [
    i32 0, label %98
    i32 1, label %98
    i32 2, label %99
    i32 3, label %99
    i32 4, label %103
    i32 5, label %107
  ]

98:                                               ; preds = %96, %96
  br label %116

99:                                               ; preds = %96, %96
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %116

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 2
  store i32 %106, i32* %104, align 4
  br label %116

107:                                              ; preds = %96
  %108 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %109 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %108, i32 0, i32 3
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 6
  %112 = bitcast %struct.TYPE_11__* %6 to i8*
  %113 = bitcast %struct.TYPE_11__* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 4 %113, i64 4, i1 false)
  br label %116

114:                                              ; preds = %96
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 -1, i32* %115, align 4
  br label %116

116:                                              ; preds = %114, %107, %103, %99, %98
  br label %117

117:                                              ; preds = %116, %91
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @REG_SUPP(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %117
  %123 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %124 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %125 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %124, i32 0, i32 2
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @SET_PORT_BITS(%struct.ip17xx_state* %123, i32 %131, i32 %134, i32* %132)
  br label %136

136:                                              ; preds = %122, %117
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %53

140:                                              ; preds = %53
  br label %141

141:                                              ; preds = %140, %1
  %142 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %143 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %142, i32 0, i32 3
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @REG_SUPP(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %215

150:                                              ; preds = %141
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %211, %150
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @MAX_VLANS, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %214

155:                                              ; preds = %151
  %156 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %157 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %156, i32 0, i32 3
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 5
  %160 = bitcast %struct.TYPE_11__* %8 to i8*
  %161 = bitcast %struct.TYPE_11__* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %160, i8* align 8 %161, i64 4, i1 false)
  %162 = load i32, i32* %4, align 4
  %163 = srem i32 %162, 2
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %155
  %166 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %167 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %166, i32 0, i32 3
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  br label %177

171:                                              ; preds = %155
  %172 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %173 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %172, i32 0, i32 3
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 3
  %176 = load i32*, i32** %175, align 8
  br label %177

177:                                              ; preds = %171, %165
  %178 = phi i32* [ %170, %165 ], [ %176, %171 ]
  store i32* %178, i32** %9, align 8
  %179 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %180 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %179, i32 0, i32 3
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %177
  %186 = load i32, i32* %4, align 4
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, %186
  store i32 %189, i32* %187, align 4
  br label %196

190:                                              ; preds = %177
  %191 = load i32, i32* %4, align 4
  %192 = sdiv i32 %191, 2
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, %192
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %190, %185
  %197 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %198 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %197, i32 0, i32 4
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %10, align 4
  %205 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %206 = load i32, i32* %10, align 4
  %207 = load i32*, i32** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @SET_PORT_BITS(%struct.ip17xx_state* %205, i32 %206, i32 %209, i32* %207)
  br label %211

211:                                              ; preds = %196
  %212 = load i32, i32* %4, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %4, align 4
  br label %151

214:                                              ; preds = %151
  br label %215

215:                                              ; preds = %214, %141
  store i32 0, i32* %5, align 4
  br label %216

216:                                              ; preds = %260, %215
  %217 = load i32, i32* %5, align 4
  %218 = load i32, i32* @MAX_PORTS, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %263

220:                                              ; preds = %216
  %221 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %222 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %221, i32 0, i32 3
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @REG_SUPP(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %259

233:                                              ; preds = %220
  %234 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %235 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %236 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %235, i32 0, i32 3
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %238, align 8
  %240 = load i32, i32* %5, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i64 %241
  %243 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %244 = getelementptr inbounds %struct.ip17xx_state, %struct.ip17xx_state* %243, i32 0, i32 2
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %244, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @setPhy(%struct.ip17xx_state* %234, i32 %252, i32 %250)
  store i32 %253, i32* %11, align 4
  %254 = load i32, i32* %11, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %233
  %257 = load i32, i32* %11, align 4
  store i32 %257, i32* %2, align 4
  br label %266

258:                                              ; preds = %233
  br label %259

259:                                              ; preds = %258, %220
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %5, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %5, align 4
  br label %216

263:                                              ; preds = %216
  %264 = load %struct.ip17xx_state*, %struct.ip17xx_state** %3, align 8
  %265 = call i32 @ip175c_set_flags(%struct.ip17xx_state* %264)
  store i32 %265, i32* %2, align 4
  br label %266

266:                                              ; preds = %263, %256
  %267 = load i32, i32* %2, align 4
  ret i32 %267
}

declare dso_local i32 @SET_PORT_BITS(%struct.ip17xx_state*, i32, i32, i32*) #1

declare dso_local i64 @REG_SUPP(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @setPhy(%struct.ip17xx_state*, i32, i32) #1

declare dso_local i32 @ip175c_set_flags(%struct.ip17xx_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
