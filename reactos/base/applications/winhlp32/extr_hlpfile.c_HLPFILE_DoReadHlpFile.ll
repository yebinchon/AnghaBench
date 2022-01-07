; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_DoReadHlpFile.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_DoReadHlpFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32**, i32* }

@OF_READ = common dso_local global i32 0, align 4
@HFILE_ERROR = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ref=%08x => [%u/%u]\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"maplen\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"extra\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"buf[0x14] = %x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @HLPFILE_DoReadHlpFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HLPFILE_DoReadHlpFile(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 12, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @OF_READ, align 4
  %20 = call i64 @OpenFile(i32 %18, i32* %8, i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @HFILE_ERROR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %244

26:                                               ; preds = %2
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @HLPFILE_ReadFileToBuffer(%struct.TYPE_15__* %27, i64 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @_lclose(i64 %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %244

36:                                               ; preds = %26
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = call i32 @HLPFILE_SystemCommands(%struct.TYPE_15__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %3, align 4
  br label %244

42:                                               ; preds = %36
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sle i32 %45, 16
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = call i32 @HLPFILE_GetTOMap(%struct.TYPE_15__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %3, align 4
  br label %244

53:                                               ; preds = %47, %42
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %55 = call i32 @HLPFILE_UncompressLZ77_Phrases(%struct.TYPE_15__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %59 = call i32 @HLPFILE_Uncompress_Phrases40(%struct.TYPE_15__* %58)
  br label %60

60:                                               ; preds = %57, %53
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %62 = call i32 @HLPFILE_Uncompress_Topic(%struct.TYPE_15__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %3, align 4
  br label %244

66:                                               ; preds = %60
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = call i32 @HLPFILE_ReadFont(%struct.TYPE_15__* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %3, align 4
  br label %244

72:                                               ; preds = %66
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %73

73:                                               ; preds = %227, %72
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sle i32 %76, 16
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, 12
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %80, %83
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sub nsw i32 %85, 12
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = srem i32 %86, %89
  store i32 %90, i32* %13, align 4
  br label %98

91:                                               ; preds = %73
  %92 = load i32, i32* %10, align 4
  %93 = sub nsw i32 %92, 12
  %94 = ashr i32 %93, 14
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 %95, 12
  %97 = and i32 %96, 16383
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %91, %78
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp sle i32 %101, 16
  br i1 %102, label %103, label %115

103:                                              ; preds = %98
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, -1
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* %10, align 4
  %112 = sub nsw i32 %111, 12
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %13, align 4
  %114 = sub i32 %113, 12
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %110, %107, %103, %98
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @WINE_TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = icmp uge i32 %120, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %115
  %126 = call i32 @WINE_WARN(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %230

127:                                              ; preds = %115
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 3
  %130 = load i32**, i32*** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32* %137, i32** %9, align 8
  %138 = load i32*, i32** %9, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 21
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = icmp uge i32* %139, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %127
  %145 = call i32 @WINE_WARN(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %230

146:                                              ; preds = %127
  %147 = load i32*, i32** %9, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = call i32 @GET_UINT(i32* %148, i32 0)
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 4
  %154 = load i32*, i32** %153, align 8
  %155 = call i32* @min(i32* %151, i32* %154)
  store i32* %155, i32** %17, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %146
  store i32 0, i32* %15, align 4
  %160 = load i32, i32* %11, align 4
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %159, %146
  %162 = load i32*, i32** %9, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 20
  %164 = load i32, i32* %163, align 4
  switch i32 %164, label %203 [
    i32 128, label %165
    i32 130, label %191
    i32 131, label %191
    i32 129, label %191
  ]

165:                                              ; preds = %161
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp sle i32 %168, 16
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %11, align 4
  %173 = mul i32 %172, 12
  %174 = add i32 %171, %173
  store i32 %174, i32* %16, align 4
  br label %180

175:                                              ; preds = %165
  %176 = load i32, i32* %11, align 4
  %177 = mul i32 %176, 32768
  %178 = load i32, i32* %15, align 4
  %179 = add i32 %177, %178
  store i32 %179, i32* %16, align 4
  br label %180

180:                                              ; preds = %175, %170
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %182 = load i32*, i32** %9, align 8
  %183 = load i32*, i32** %17, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %16, align 4
  %186 = call i32 @HLPFILE_AddPage(%struct.TYPE_15__* %181, i32* %182, i32* %183, i32 %184, i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %180
  %189 = load i32, i32* @FALSE, align 4
  store i32 %189, i32* %3, align 4
  br label %244

190:                                              ; preds = %180
  br label %208

191:                                              ; preds = %161, %161, %161
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %193 = load i32*, i32** %9, align 8
  %194 = load i32*, i32** %17, align 8
  %195 = call i32 @HLPFILE_SkipParagraph(%struct.TYPE_15__* %192, i32* %193, i32* %194, i32* %14)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %191
  %198 = load i32, i32* @FALSE, align 4
  store i32 %198, i32* %3, align 4
  br label %244

199:                                              ; preds = %191
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %15, align 4
  %202 = add i32 %201, %200
  store i32 %202, i32* %15, align 4
  br label %208

203:                                              ; preds = %161
  %204 = load i32*, i32** %9, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 20
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @WINE_ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %203, %199, %190
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp sle i32 %211, 16
  br i1 %212, label %213, label %223

213:                                              ; preds = %208
  %214 = load i32*, i32** %9, align 8
  %215 = call i32 @GET_UINT(i32* %214, i32 12)
  %216 = load i32, i32* %10, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %10, align 4
  %218 = load i32*, i32** %9, align 8
  %219 = call i32 @GET_UINT(i32* %218, i32 12)
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %213
  br label %230

222:                                              ; preds = %213
  br label %226

223:                                              ; preds = %208
  %224 = load i32*, i32** %9, align 8
  %225 = call i32 @GET_UINT(i32* %224, i32 12)
  store i32 %225, i32* %10, align 4
  br label %226

226:                                              ; preds = %223, %222
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %10, align 4
  %229 = icmp ne i32 %228, -1
  br i1 %229, label %73, label %230

230:                                              ; preds = %227, %221, %144, %125
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %232 = call i32 @HLPFILE_GetKeywords(%struct.TYPE_15__* %231)
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %234 = call i32 @HLPFILE_GetMap(%struct.TYPE_15__* %233)
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = icmp sle i32 %237, 16
  br i1 %238, label %239, label %241

239:                                              ; preds = %230
  %240 = load i32, i32* @TRUE, align 4
  store i32 %240, i32* %3, align 4
  br label %244

241:                                              ; preds = %230
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %243 = call i32 @HLPFILE_GetContext(%struct.TYPE_15__* %242)
  store i32 %243, i32* %3, align 4
  br label %244

244:                                              ; preds = %241, %239, %197, %188, %70, %64, %51, %40, %34, %24
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local i64 @OpenFile(i32, i32*, i32) #1

declare dso_local i32 @HLPFILE_ReadFileToBuffer(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @_lclose(i64) #1

declare dso_local i32 @HLPFILE_SystemCommands(%struct.TYPE_15__*) #1

declare dso_local i32 @HLPFILE_GetTOMap(%struct.TYPE_15__*) #1

declare dso_local i32 @HLPFILE_UncompressLZ77_Phrases(%struct.TYPE_15__*) #1

declare dso_local i32 @HLPFILE_Uncompress_Phrases40(%struct.TYPE_15__*) #1

declare dso_local i32 @HLPFILE_Uncompress_Topic(%struct.TYPE_15__*) #1

declare dso_local i32 @HLPFILE_ReadFont(%struct.TYPE_15__*) #1

declare dso_local i32 @WINE_TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @WINE_WARN(i8*) #1

declare dso_local i32* @min(i32*, i32*) #1

declare dso_local i32 @GET_UINT(i32*, i32) #1

declare dso_local i32 @HLPFILE_AddPage(%struct.TYPE_15__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @HLPFILE_SkipParagraph(%struct.TYPE_15__*, i32*, i32*, i32*) #1

declare dso_local i32 @WINE_ERR(i8*, i32) #1

declare dso_local i32 @HLPFILE_GetKeywords(%struct.TYPE_15__*) #1

declare dso_local i32 @HLPFILE_GetMap(%struct.TYPE_15__*) #1

declare dso_local i32 @HLPFILE_GetContext(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
