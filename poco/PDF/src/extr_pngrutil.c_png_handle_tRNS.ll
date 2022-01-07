; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_tRNS.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_tRNS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64, i32, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@PNG_MAX_PALETTE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"in png_handle_tRNS\0A\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing IHDR before tRNS\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid tRNS after IDAT\00", align 1
@PNG_INFO_tRNS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Duplicate tRNS chunk\00", align 1
@PNG_COLOR_TYPE_GRAY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"Incorrect tRNS chunk length\00", align 1
@PNG_COLOR_TYPE_RGB = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_PALETTE = common dso_local global i64 0, align 8
@PNG_HAVE_PLTE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Missing PLTE before tRNS\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Zero length tRNS chunk\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"tRNS chunk not allowed with alpha channel\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_tRNS(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [6 x i32], align 16
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @PNG_MAX_PALETTE_LENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 1, %20
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = call i32 @png_error(%struct.TYPE_12__* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %63

32:                                               ; preds = %3
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = call i32 @png_warning(%struct.TYPE_12__* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @png_crc_finish(%struct.TYPE_12__* %42, i32 %43)
  store i32 1, i32* %10, align 4
  br label %209

45:                                               ; preds = %32
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %47 = icmp ne %struct.TYPE_13__* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PNG_INFO_tRNS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = call i32 @png_warning(%struct.TYPE_12__* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @png_crc_finish(%struct.TYPE_12__* %58, i32 %59)
  store i32 1, i32* %10, align 4
  br label %209

61:                                               ; preds = %48, %45
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62, %29
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PNG_COLOR_TYPE_GRAY, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 2
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = call i32 @png_warning(%struct.TYPE_12__* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @png_crc_finish(%struct.TYPE_12__* %75, i32 %76)
  store i32 1, i32* %10, align 4
  br label %209

78:                                               ; preds = %69
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %81 = call i32 @png_crc_read(%struct.TYPE_12__* %79, i32* %80, i32 2)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  store i32 1, i32* %83, align 8
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %85 = call i32 @png_get_uint_16(i32* %84)
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %85, %86
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  br label %193

91:                                               ; preds = %63
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PNG_COLOR_TYPE_RGB, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %136

97:                                               ; preds = %91
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 6
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %102 = call i32 @png_warning(%struct.TYPE_12__* %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i64 @png_crc_finish(%struct.TYPE_12__* %103, i32 %104)
  store i32 1, i32* %10, align 4
  br label %209

106:                                              ; preds = %97
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @png_crc_read(%struct.TYPE_12__* %107, i32* %108, i32 %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 3
  store i32 1, i32* %112, align 8
  %113 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %114 = call i32 @png_get_uint_16(i32* %113)
  %115 = load i32, i32* %9, align 4
  %116 = and i32 %114, %115
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = call i32 @png_get_uint_16(i32* %121)
  %123 = load i32, i32* %9, align 4
  %124 = and i32 %122, %123
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 4
  %128 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %129 = getelementptr inbounds i32, i32* %128, i64 4
  %130 = call i32 @png_get_uint_16(i32* %129)
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %130, %131
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 3
  store i32 %132, i32* %135, align 4
  br label %192

136:                                              ; preds = %91
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %185

142:                                              ; preds = %136
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @PNG_HAVE_PLTE, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %142
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %151 = call i32 @png_warning(%struct.TYPE_12__* %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %142
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 5
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = icmp sgt i32 %153, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %152
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @PNG_MAX_PALETTE_LENGTH, align 4
  %162 = icmp sgt i32 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %159, %152
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %165 = call i32 @png_warning(%struct.TYPE_12__* %164, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %167 = load i32, i32* %6, align 4
  %168 = call i64 @png_crc_finish(%struct.TYPE_12__* %166, i32 %167)
  store i32 1, i32* %10, align 4
  br label %209

169:                                              ; preds = %159
  %170 = load i32, i32* %6, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %169
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %174 = call i32 @png_warning(%struct.TYPE_12__* %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %176 = load i32, i32* %6, align 4
  %177 = call i64 @png_crc_finish(%struct.TYPE_12__* %175, i32 %176)
  store i32 1, i32* %10, align 4
  br label %209

178:                                              ; preds = %169
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @png_crc_read(%struct.TYPE_12__* %179, i32* %16, i32 %180)
  %182 = load i32, i32* %6, align 4
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 8
  br label %191

185:                                              ; preds = %136
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %187 = call i32 @png_warning(%struct.TYPE_12__* %186, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %189 = load i32, i32* %6, align 4
  %190 = call i64 @png_crc_finish(%struct.TYPE_12__* %188, i32 %189)
  store i32 1, i32* %10, align 4
  br label %209

191:                                              ; preds = %178
  br label %192

192:                                              ; preds = %191, %106
  br label %193

193:                                              ; preds = %192, %78
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %195 = call i64 @png_crc_finish(%struct.TYPE_12__* %194, i32 0)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 3
  store i32 0, i32* %199, align 8
  store i32 1, i32* %10, align 4
  br label %209

200:                                              ; preds = %193
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 4
  %208 = call i32 @png_set_tRNS(%struct.TYPE_12__* %201, %struct.TYPE_13__* %202, i32* %16, i32 %205, %struct.TYPE_14__* %207)
  store i32 0, i32* %10, align 4
  br label %209

209:                                              ; preds = %200, %197, %185, %172, %163, %100, %72, %55, %39
  %210 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %210)
  %211 = load i32, i32* %10, align 4
  switch i32 %211, label %213 [
    i32 0, label %212
    i32 1, label %212
  ]

212:                                              ; preds = %209, %209
  ret void

213:                                              ; preds = %209
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @png_debug(i32, i8*) #2

declare dso_local i32 @png_error(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @png_warning(%struct.TYPE_12__*, i8*) #2

declare dso_local i64 @png_crc_finish(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @png_crc_read(%struct.TYPE_12__*, i32*, i32) #2

declare dso_local i32 @png_get_uint_16(i32*) #2

declare dso_local i32 @png_set_tRNS(%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32, %struct.TYPE_14__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
