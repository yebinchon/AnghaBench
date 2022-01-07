; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_handle_tRNS.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libpng/extr_pngrutil.c_png_handle_tRNS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, i32, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i32 }

@PNG_MAX_PALETTE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"in png_handle_tRNS\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"missing IHDR\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"out of place\00", align 1
@PNG_INFO_tRNS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"duplicate\00", align 1
@PNG_COLOR_TYPE_GRAY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@PNG_COLOR_TYPE_RGB = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_PALETTE = common dso_local global i64 0, align 8
@PNG_HAVE_PLTE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"invalid with alpha channel\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_tRNS(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [6 x i32], align 16
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @PNG_MAX_PALETTE_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = call i32 @png_chunk_error(%struct.TYPE_12__* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %57

26:                                               ; preds = %3
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @png_crc_finish(%struct.TYPE_12__* %34, i32 %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = call i32 @png_chunk_benign_error(%struct.TYPE_12__* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %192

39:                                               ; preds = %26
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = icmp ne %struct.TYPE_13__* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PNG_INFO_tRNS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @png_crc_finish(%struct.TYPE_12__* %50, i32 %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = call i32 @png_chunk_benign_error(%struct.TYPE_12__* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %192

55:                                               ; preds = %42, %39
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56, %23
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @PNG_COLOR_TYPE_GRAY, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 2
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i64 @png_crc_finish(%struct.TYPE_12__* %67, i32 %68)
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %71 = call i32 @png_chunk_benign_error(%struct.TYPE_12__* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %192

72:                                               ; preds = %63
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %75 = call i32 @png_crc_read(%struct.TYPE_12__* %73, i32* %74, i32 2)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %79 = call i8* @png_get_uint_16(i32* %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 3
  store i8* %79, i8** %82, align 8
  br label %176

83:                                               ; preds = %57
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PNG_COLOR_TYPE_RGB, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %122

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 6
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i64 @png_crc_finish(%struct.TYPE_12__* %93, i32 %94)
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = call i32 @png_chunk_benign_error(%struct.TYPE_12__* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %192

98:                                               ; preds = %89
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @png_crc_read(%struct.TYPE_12__* %99, i32* %100, i32 %101)
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  store i32 1, i32* %104, align 8
  %105 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %106 = call i8* @png_get_uint_16(i32* %105)
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  store i8* %106, i8** %109, align 8
  %110 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = call i8* @png_get_uint_16(i32* %111)
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  store i8* %112, i8** %115, align 8
  %116 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  %118 = call i8* @png_get_uint_16(i32* %117)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  store i8* %118, i8** %121, align 8
  br label %175

122:                                              ; preds = %83
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @PNG_COLOR_TYPE_PALETTE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %168

128:                                              ; preds = %122
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @PNG_HAVE_PLTE, align 4
  %133 = and i32 %131, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i64 @png_crc_finish(%struct.TYPE_12__* %136, i32 %137)
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %140 = call i32 @png_chunk_benign_error(%struct.TYPE_12__* %139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %192

141:                                              ; preds = %128
  %142 = load i32, i32* %6, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = icmp ugt i32 %142, %146
  br i1 %147, label %155, label %148

148:                                              ; preds = %141
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @PNG_MAX_PALETTE_LENGTH, align 4
  %151 = icmp ugt i32 %149, %150
  br i1 %151, label %155, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %6, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %152, %148, %141
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i64 @png_crc_finish(%struct.TYPE_12__* %156, i32 %157)
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %160 = call i32 @png_chunk_benign_error(%struct.TYPE_12__* %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %192

161:                                              ; preds = %152
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @png_crc_read(%struct.TYPE_12__* %162, i32* %15, i32 %163)
  %165 = load i32, i32* %6, align 4
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  br label %174

168:                                              ; preds = %122
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %170 = load i32, i32* %6, align 4
  %171 = call i64 @png_crc_finish(%struct.TYPE_12__* %169, i32 %170)
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %173 = call i32 @png_chunk_benign_error(%struct.TYPE_12__* %172, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %192

174:                                              ; preds = %161
  br label %175

175:                                              ; preds = %174, %98
  br label %176

176:                                              ; preds = %175, %72
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %178 = call i64 @png_crc_finish(%struct.TYPE_12__* %177, i32 0)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  store i32 0, i32* %182, align 8
  store i32 1, i32* %9, align 4
  br label %192

183:                                              ; preds = %176
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 3
  %191 = call i32 @png_set_tRNS(%struct.TYPE_12__* %184, %struct.TYPE_13__* %185, i32* %15, i32 %188, %struct.TYPE_14__* %190)
  store i32 0, i32* %9, align 4
  br label %192

192:                                              ; preds = %183, %180, %168, %155, %135, %92, %66, %49, %33
  %193 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %193)
  %194 = load i32, i32* %9, align 4
  switch i32 %194, label %196 [
    i32 0, label %195
    i32 1, label %195
  ]

195:                                              ; preds = %192, %192
  ret void

196:                                              ; preds = %192
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @png_debug(i32, i8*) #2

declare dso_local i32 @png_chunk_error(%struct.TYPE_12__*, i8*) #2

declare dso_local i64 @png_crc_finish(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @png_chunk_benign_error(%struct.TYPE_12__*, i8*) #2

declare dso_local i32 @png_crc_read(%struct.TYPE_12__*, i32*, i32) #2

declare dso_local i8* @png_get_uint_16(i32*) #2

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
