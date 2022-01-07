; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/u8g2lib/extr_u8x8_d_fbrle.c_u8x8_d_fbrle.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/u8g2lib/extr_u8x8_d_fbrle.c_u8x8_d_fbrle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*, i32, i32, i8*)*, i32, i32 }
%struct.fbrle_line = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32* }

@LUA_NOREF = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32, i8*)* @u8x8_d_fbrle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u8x8_d_fbrle(%struct.TYPE_11__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.fbrle_line*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = bitcast %struct.TYPE_11__* %22 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %10, align 8
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %234 [
    i32 131, label %25
    i32 133, label %35
    i32 128, label %39
    i32 129, label %39
    i32 132, label %40
    i32 134, label %44
  ]

25:                                               ; preds = %4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_11__*, i32, i32, i8*)*, i32 (%struct.TYPE_11__*, i32, i32, i8*)** %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 %29(%struct.TYPE_11__* %30, i32 %31, i32 %32, i8* %33)
  store i32 %34, i32* %5, align 4
  br label %236

35:                                               ; preds = %4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i32 0, i32* %38, align 8
  br label %235

39:                                               ; preds = %4, %4
  br label %235

40:                                               ; preds = %4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i32 0, i32* %43, align 8
  br label %235

44:                                               ; preds = %4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %44
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @LUA_NOREF, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %50
  %58 = call i32* (...) @lua_getstate()
  store i32* %58, i32** %11, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @lua_rawgeti(i32* %59, i32 %60, i32 %64)
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @lua_pushnil(i32* %66)
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @lua_call(i32* %68, i32 1, i32 0)
  br label %70

70:                                               ; preds = %57, %50
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %70, %44
  %75 = load i8*, i8** %9, align 8
  %76 = bitcast i8* %75 to %struct.TYPE_10__*
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = mul nsw i32 %79, 8
  store i32 %80, i32* %12, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %12, align 4
  %86 = load i8*, i8** %9, align 8
  %87 = bitcast i8* %86 to %struct.TYPE_10__*
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %89, 8
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = sdiv i32 %91, 2
  %93 = sext i32 %92 to i64
  %94 = mul i64 4, %93
  %95 = add i64 16, %94
  store i64 %95, i64* %14, align 8
  store i32 8, i32* %15, align 4
  %96 = load i8*, i8** %9, align 8
  %97 = bitcast i8* %96 to %struct.TYPE_10__*
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %16, align 8
  %100 = load i64, i64* %14, align 8
  %101 = call i64 @malloc(i64 %100)
  %102 = inttoptr i64 %101 to %struct.fbrle_line*
  store %struct.fbrle_line* %102, %struct.fbrle_line** %17, align 8
  %103 = icmp ne %struct.fbrle_line* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %74
  br label %235

105:                                              ; preds = %74
  store i32 0, i32* %18, align 4
  br label %106

106:                                              ; preds = %228, %105
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %231

110:                                              ; preds = %106
  store i32 -1, i32* %19, align 4
  %111 = load %struct.fbrle_line*, %struct.fbrle_line** %17, align 8
  %112 = getelementptr inbounds %struct.fbrle_line, %struct.fbrle_line* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %20, align 4
  br label %114

114:                                              ; preds = %168, %110
  %115 = load i32, i32* %20, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %116, %117
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %171

120:                                              ; preds = %114
  %121 = load i32*, i32** %16, align 8
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %20, align 4
  %124 = call i32 @bit_at(i32* %121, i32 %122, i32 %123)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %152

126:                                              ; preds = %120
  %127 = load i32, i32* %19, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %151

129:                                              ; preds = %126
  %130 = load i32, i32* %19, align 4
  %131 = load %struct.fbrle_line*, %struct.fbrle_line** %17, align 8
  %132 = getelementptr inbounds %struct.fbrle_line, %struct.fbrle_line* %131, i32 0, i32 1
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = load %struct.fbrle_line*, %struct.fbrle_line** %17, align 8
  %135 = getelementptr inbounds %struct.fbrle_line, %struct.fbrle_line* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i32 %130, i32* %138, align 4
  %139 = load i32, i32* %20, align 4
  %140 = load i32, i32* %19, align 4
  %141 = sub nsw i32 %139, %140
  %142 = load %struct.fbrle_line*, %struct.fbrle_line** %17, align 8
  %143 = getelementptr inbounds %struct.fbrle_line, %struct.fbrle_line* %142, i32 0, i32 1
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = load %struct.fbrle_line*, %struct.fbrle_line** %17, align 8
  %146 = getelementptr inbounds %struct.fbrle_line, %struct.fbrle_line* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %146, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 %147
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  store i32 %141, i32* %150, align 4
  store i32 -1, i32* %19, align 4
  br label %151

151:                                              ; preds = %129, %126
  br label %158

152:                                              ; preds = %120
  %153 = load i32, i32* %19, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* %20, align 4
  store i32 %156, i32* %19, align 4
  br label %157

157:                                              ; preds = %155, %152
  br label %158

158:                                              ; preds = %157, %151
  %159 = load %struct.fbrle_line*, %struct.fbrle_line** %17, align 8
  %160 = getelementptr inbounds %struct.fbrle_line, %struct.fbrle_line* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sdiv i32 %162, 2
  %164 = sext i32 %163 to i64
  %165 = icmp uge i64 %161, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  br label %171

167:                                              ; preds = %158
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %20, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %20, align 4
  br label %114

171:                                              ; preds = %166, %114
  %172 = load i32, i32* %19, align 4
  %173 = icmp sge i32 %172, 0
  br i1 %173, label %174, label %204

174:                                              ; preds = %171
  %175 = load %struct.fbrle_line*, %struct.fbrle_line** %17, align 8
  %176 = getelementptr inbounds %struct.fbrle_line, %struct.fbrle_line* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sdiv i32 %178, 2
  %180 = sext i32 %179 to i64
  %181 = icmp ult i64 %177, %180
  br i1 %181, label %182, label %204

182:                                              ; preds = %174
  %183 = load i32, i32* %19, align 4
  %184 = load %struct.fbrle_line*, %struct.fbrle_line** %17, align 8
  %185 = getelementptr inbounds %struct.fbrle_line, %struct.fbrle_line* %184, i32 0, i32 1
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = load %struct.fbrle_line*, %struct.fbrle_line** %17, align 8
  %188 = getelementptr inbounds %struct.fbrle_line, %struct.fbrle_line* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  store i32 %183, i32* %191, align 4
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %19, align 4
  %194 = sub nsw i32 %192, %193
  %195 = load %struct.fbrle_line*, %struct.fbrle_line** %17, align 8
  %196 = getelementptr inbounds %struct.fbrle_line, %struct.fbrle_line* %195, i32 0, i32 1
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = load %struct.fbrle_line*, %struct.fbrle_line** %17, align 8
  %199 = getelementptr inbounds %struct.fbrle_line, %struct.fbrle_line* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = add i64 %200, 1
  store i64 %201, i64* %199, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i64 %200
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 1
  store i32 %194, i32* %203, align 4
  br label %204

204:                                              ; preds = %182, %174, %171
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @LUA_NOREF, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %227

211:                                              ; preds = %204
  %212 = call i32* (...) @lua_getstate()
  store i32* %212, i32** %21, align 8
  %213 = load i32*, i32** %21, align 8
  %214 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @lua_rawgeti(i32* %213, i32 %214, i32 %218)
  %220 = load i32*, i32** %21, align 8
  %221 = load %struct.fbrle_line*, %struct.fbrle_line** %17, align 8
  %222 = bitcast %struct.fbrle_line* %221 to i8*
  %223 = load i64, i64* %14, align 8
  %224 = call i32 @lua_pushlstring(i32* %220, i8* %222, i64 %223)
  %225 = load i32*, i32** %21, align 8
  %226 = call i32 @lua_call(i32* %225, i32 1, i32 0)
  br label %227

227:                                              ; preds = %211, %204
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %18, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %18, align 4
  br label %106

231:                                              ; preds = %106
  %232 = load %struct.fbrle_line*, %struct.fbrle_line** %17, align 8
  %233 = call i32 @free(%struct.fbrle_line* %232)
  br label %235

234:                                              ; preds = %4
  store i32 0, i32* %5, align 4
  br label %236

235:                                              ; preds = %231, %104, %40, %39, %35
  store i32 1, i32* %5, align 4
  br label %236

236:                                              ; preds = %235, %234, %25
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

declare dso_local i32* @lua_getstate(...) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @bit_at(i32*, i32, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i32 @free(%struct.fbrle_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
