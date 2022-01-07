; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_PLTE.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrutil.c_png_handle_PLTE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32, i64 }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_19__ = type { i8*, i8*, i8* }

@PNG_MAX_PALETTE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"in png_handle_PLTE\0A\00", align 1
@PNG_HAVE_IHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Missing IHDR before PLTE\00", align 1
@PNG_HAVE_IDAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid PLTE after IDAT\00", align 1
@PNG_HAVE_PLTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Duplicate PLTE chunk\00", align 1
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Ignoring PLTE chunk in grayscale PNG\00", align 1
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Invalid palette chunk\00", align 1
@PNG_FLAG_CRC_ANCILLARY_USE = common dso_local global i32 0, align 4
@PNG_FLAG_CRC_ANCILLARY_NOWARN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"CRC error\00", align 1
@PNG_INFO_tRNS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_handle_PLTE(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [3 x i8*], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @PNG_MAX_PALETTE_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca %struct.TYPE_19__, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PNG_HAVE_IHDR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = call i32 @png_error(%struct.TYPE_17__* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %53

28:                                               ; preds = %3
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PNG_HAVE_IDAT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = call i32 @png_warning(%struct.TYPE_17__* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @png_crc_finish(%struct.TYPE_17__* %38, i32 %39)
  store i32 1, i32* %12, align 4
  br label %186

41:                                               ; preds = %28
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PNG_HAVE_PLTE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = call i32 @png_error(%struct.TYPE_17__* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %41
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %25
  %54 = load i32, i32* @PNG_HAVE_PLTE, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %53
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = call i32 @png_warning(%struct.TYPE_17__* %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @png_crc_finish(%struct.TYPE_17__* %68, i32 %69)
  store i32 1, i32* %12, align 4
  br label %186

71:                                               ; preds = %53
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @png_crc_finish(%struct.TYPE_17__* %78, i32 %79)
  store i32 1, i32* %12, align 4
  br label %186

81:                                               ; preds = %71
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @PNG_MAX_PALETTE_LENGTH, align 4
  %84 = mul nsw i32 3, %83
  %85 = icmp sgt i32 %82, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %6, align 4
  %88 = srem i32 %87, 3
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %86, %81
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %98 = call i32 @png_warning(%struct.TYPE_17__* %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @png_crc_finish(%struct.TYPE_17__* %99, i32 %100)
  store i32 1, i32* %12, align 4
  br label %186

102:                                              ; preds = %90
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %104 = call i32 @png_error(%struct.TYPE_17__* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102
  br label %106

106:                                              ; preds = %105, %86
  %107 = load i32, i32* %6, align 4
  %108 = sdiv i32 %107, 3
  store i32 %108, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %11, align 8
  br label %109

109:                                              ; preds = %129, %106
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %134

113:                                              ; preds = %109
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %115 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 0
  %116 = call i32 @png_crc_read(%struct.TYPE_17__* %114, i8** %115, i32 3)
  %117 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 0
  %118 = load i8*, i8** %117, align 16
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 1
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  store i8* %122, i8** %124, align 8
  %125 = getelementptr inbounds [3 x i8*], [3 x i8*]* %13, i64 0, i64 2
  %126 = load i8*, i8** %125, align 16
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  store i8* %126, i8** %128, align 8
  br label %129

129:                                              ; preds = %113
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 1
  store %struct.TYPE_19__* %133, %struct.TYPE_19__** %11, align 8
  br label %109

134:                                              ; preds = %109
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %142 = call i32 @png_crc_finish(%struct.TYPE_17__* %141, i32 0)
  br label %181

143:                                              ; preds = %134
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %145 = call i64 @png_crc_error(%struct.TYPE_17__* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %180

147:                                              ; preds = %143
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @PNG_FLAG_CRC_ANCILLARY_USE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %168, label %154

154:                                              ; preds = %147
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @PNG_FLAG_CRC_ANCILLARY_NOWARN, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %163 = call i32 @png_chunk_error(%struct.TYPE_17__* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %167

164:                                              ; preds = %154
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %166 = call i32 @png_chunk_warning(%struct.TYPE_17__* %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %186

167:                                              ; preds = %161
  br label %179

168:                                              ; preds = %147
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @PNG_FLAG_CRC_ANCILLARY_NOWARN, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %168
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %177 = call i32 @png_chunk_warning(%struct.TYPE_17__* %176, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %178

178:                                              ; preds = %175, %168
  br label %179

179:                                              ; preds = %178, %167
  br label %180

180:                                              ; preds = %179, %143
  br label %181

181:                                              ; preds = %180, %140
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @png_set_PLTE(%struct.TYPE_17__* %182, %struct.TYPE_18__* %183, %struct.TYPE_19__* %17, i32 %184)
  store i32 0, i32* %12, align 4
  br label %186

186:                                              ; preds = %181, %164, %96, %77, %65, %35
  %187 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %187)
  %188 = load i32, i32* %12, align 4
  switch i32 %188, label %190 [
    i32 0, label %189
    i32 1, label %189
  ]

189:                                              ; preds = %186, %186
  ret void

190:                                              ; preds = %186
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @png_debug(i32, i8*) #2

declare dso_local i32 @png_error(%struct.TYPE_17__*, i8*) #2

declare dso_local i32 @png_warning(%struct.TYPE_17__*, i8*) #2

declare dso_local i32 @png_crc_finish(%struct.TYPE_17__*, i32) #2

declare dso_local i32 @png_crc_read(%struct.TYPE_17__*, i8**, i32) #2

declare dso_local i64 @png_crc_error(%struct.TYPE_17__*) #2

declare dso_local i32 @png_chunk_error(%struct.TYPE_17__*, i8*) #2

declare dso_local i32 @png_chunk_warning(%struct.TYPE_17__*, i8*) #2

declare dso_local i32 @png_set_PLTE(%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_19__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
