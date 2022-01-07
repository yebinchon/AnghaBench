; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/libnsgif/extr_libnsgif.c_gif_initialise_frame_extensions.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/libnsgif/extr_libnsgif.c_gif_initialise_frame_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i8, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8, i32, i8, i8 }

@GIF_EXTENSION_INTRODUCER = common dso_local global i8 0, align 1
@GIF_INSUFFICIENT_FRAME_DATA = common dso_local global i32 0, align 4
@GIF_TRANSPARENCY_MASK = common dso_local global i8 0, align 1
@GIF_DISPOSAL_MASK = common dso_local global i8 0, align 1
@GIF_FRAME_QUIRKS_RESTORE = common dso_local global i8 0, align 1
@GIF_FRAME_RESTORE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [12 x i8] c"NETSCAPE2.0\00", align 1
@GIF_BLOCK_TERMINATOR = common dso_local global i8 0, align 1
@GIF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @gif_initialise_frame_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gif_initialise_frame_extensions(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %12, i64 %16
  store i8* %17, i8** %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8* %25, i8** %7, align 8
  br label %26

26:                                               ; preds = %239, %2
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @GIF_EXTENSION_INTRODUCER, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %242

34:                                               ; preds = %26
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  switch i32 %46, label %198 [
    i32 128, label %47
    i32 130, label %144
    i32 129, label %195
  ]

47:                                               ; preds = %34
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 6
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @GIF_INSUFFICIENT_FRAME_DATA, align 4
  store i32 %51, i32* %3, align 4
  br label %254

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 %60, 8
  %62 = or i32 %56, %61
  %63 = trunc i32 %62 to i8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i8 %63, i8* %70, align 4
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* @GIF_TRANSPARENCY_MASK, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %52
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 5
  %89 = load i8, i8* %88, align 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i8 %89, i8* %96, align 4
  br label %97

97:                                               ; preds = %79, %52
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* @GIF_DISPOSAL_MASK, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %101, %103
  %105 = ashr i32 %104, 2
  %106 = trunc i32 %105 to i8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  store i8 %106, i8* %113, align 1
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = load i8, i8* @GIF_FRAME_QUIRKS_RESTORE, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %97
  %127 = load i8, i8* @GIF_FRAME_RESTORE, align 1
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  store i8 %127, i8* %134, align 1
  br label %135

135:                                              ; preds = %126, %97
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = add nsw i32 2, %139
  %141 = load i8*, i8** %6, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8* %143, i8** %6, align 8
  br label %207

144:                                              ; preds = %34
  %145 = load i32, i32* %8, align 4
  %146 = icmp slt i32 %145, 17
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i32, i32* @GIF_INSUFFICIENT_FRAME_DATA, align 4
  store i32 %148, i32* %3, align 4
  br label %254

149:                                              ; preds = %144
  %150 = load i8*, i8** %6, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp eq i32 %153, 11
  br i1 %154, label %155, label %186

155:                                              ; preds = %149
  %156 = load i8*, i8** %6, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 2
  %158 = call i32 @strncmp(i8* %157, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %186

160:                                              ; preds = %155
  %161 = load i8*, i8** %6, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 13
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp eq i32 %164, 3
  br i1 %165, label %166, label %186

166:                                              ; preds = %160
  %167 = load i8*, i8** %6, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 14
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %186

172:                                              ; preds = %166
  %173 = load i8*, i8** %6, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 15
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = load i8*, i8** %6, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 16
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = shl i32 %180, 8
  %182 = or i32 %176, %181
  %183 = trunc i32 %182 to i8
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 3
  store i8 %183, i8* %185, align 8
  br label %186

186:                                              ; preds = %172, %166, %160, %155, %149
  %187 = load i8*, i8** %6, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 1
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = add nsw i32 2, %190
  %192 = load i8*, i8** %6, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  store i8* %194, i8** %6, align 8
  br label %207

195:                                              ; preds = %34
  %196 = load i8*, i8** %6, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %6, align 8
  br label %207

198:                                              ; preds = %34
  %199 = load i8*, i8** %6, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = add nsw i32 2, %202
  %204 = load i8*, i8** %6, align 8
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8* %206, i8** %6, align 8
  br label %207

207:                                              ; preds = %198, %195, %186, %135
  %208 = load i8*, i8** %7, align 8
  %209 = load i8*, i8** %6, align 8
  %210 = ptrtoint i8* %208 to i64
  %211 = ptrtoint i8* %209 to i64
  %212 = sub i64 %210, %211
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %214

214:                                              ; preds = %234, %207
  %215 = load i8*, i8** %6, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 0
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = load i8, i8* @GIF_BLOCK_TERMINATOR, align 1
  %220 = zext i8 %219 to i32
  %221 = icmp ne i32 %218, %220
  br i1 %221, label %222, label %239

222:                                              ; preds = %214
  %223 = load i8*, i8** %6, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 0
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %9, align 4
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* %8, align 4
  %230 = sub i32 %229, %228
  store i32 %230, i32* %8, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %222
  %233 = load i32, i32* @GIF_INSUFFICIENT_FRAME_DATA, align 4
  store i32 %233, i32* %3, align 4
  br label %254

234:                                              ; preds = %222
  %235 = load i32, i32* %9, align 4
  %236 = load i8*, i8** %6, align 8
  %237 = zext i32 %235 to i64
  %238 = getelementptr inbounds i8, i8* %236, i64 %237
  store i8* %238, i8** %6, align 8
  br label %214

239:                                              ; preds = %214
  %240 = load i8*, i8** %6, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %6, align 8
  br label %26

242:                                              ; preds = %26
  %243 = load i8*, i8** %6, align 8
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = ptrtoint i8* %243 to i64
  %248 = ptrtoint i8* %246 to i64
  %249 = sub i64 %247, %248
  %250 = trunc i64 %249 to i32
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 8
  %253 = load i32, i32* @GIF_OK, align 4
  store i32 %253, i32* %3, align 4
  br label %254

254:                                              ; preds = %242, %232, %147, %50
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
