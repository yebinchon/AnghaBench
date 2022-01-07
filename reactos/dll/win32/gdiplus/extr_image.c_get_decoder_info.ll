; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_get_decoder_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_image.c_get_decoder_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_codec = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i32*, i32* }
%struct.TYPE_5__ = type { i64 }

@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i64 0, align 8
@GenericError = common dso_local global i32 0, align 4
@NUM_CODECS = common dso_local global i32 0, align 4
@codecs = common dso_local global %struct.image_codec* null, align 8
@ImageCodecFlagsDecoder = common dso_local global i32 0, align 4
@Ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"no match for %i byte signature %x %x %x %x %x %x %x %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.image_codec**)* @get_decoder_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_decoder_info(i32* %0, %struct.image_codec** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.image_codec**, align 8
  %6 = alloca [8 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.image_codec** %1, %struct.image_codec*** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @STREAM_SEEK_SET, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @IStream_Seek(i32* %16, i64 %19, i32 %17, i32* null)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i64 @FAILED(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @hresult_to_status(i64 %25)
  store i32 %26, i32* %3, align 4
  br label %193

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %30 = call i64 @IStream_Read(i32* %28, i32* %29, i32 8, i64* %11)
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @FAILED(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @hresult_to_status(i64 %35)
  store i32 %36, i32* %3, align 4
  br label %193

37:                                               ; preds = %27
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @S_FALSE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %11, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %37
  %45 = load i32, i32* @GenericError, align 4
  store i32 %45, i32* %3, align 4
  br label %193

46:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %170, %46
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @NUM_CODECS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %173

51:                                               ; preds = %47
  %52 = load %struct.image_codec*, %struct.image_codec** @codecs, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %52, i64 %54
  %56 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ImageCodecFlagsDecoder, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %169

62:                                               ; preds = %51
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.image_codec*, %struct.image_codec** @codecs, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %64, i64 %66
  %68 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %63, %70
  br i1 %71, label %72, label %169

72:                                               ; preds = %62
  store i64 0, i64* %14, align 8
  br label %73

73:                                               ; preds = %165, %72
  %74 = load i64, i64* %14, align 8
  %75 = load %struct.image_codec*, %struct.image_codec** @codecs, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %75, i64 %77
  %79 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %74, %81
  br i1 %82, label %83, label %168

83:                                               ; preds = %73
  %84 = load %struct.image_codec*, %struct.image_codec** @codecs, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %84, i64 %86
  %88 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.image_codec*, %struct.image_codec** @codecs, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %91, i64 %93
  %95 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %14, align 8
  %99 = mul i64 %97, %98
  %100 = getelementptr inbounds i32, i32* %90, i64 %99
  store i32* %100, i32** %7, align 8
  %101 = load %struct.image_codec*, %struct.image_codec** @codecs, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %101, i64 %103
  %105 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.image_codec*, %struct.image_codec** @codecs, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %108, i64 %110
  %112 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %14, align 8
  %116 = mul i64 %114, %115
  %117 = getelementptr inbounds i32, i32* %107, i64 %116
  store i32* %117, i32** %8, align 8
  store i64 0, i64* %13, align 8
  br label %118

118:                                              ; preds = %144, %83
  %119 = load i64, i64* %13, align 8
  %120 = load %struct.image_codec*, %struct.image_codec** @codecs, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %120, i64 %122
  %124 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ult i64 %119, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %118
  %129 = load i64, i64* %13, align 8
  %130 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = load i64, i64* %13, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %131, %135
  %137 = load i32*, i32** %7, align 8
  %138 = load i64, i64* %13, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %136, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %128
  br label %147

143:                                              ; preds = %128
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %13, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %13, align 8
  br label %118

147:                                              ; preds = %142, %118
  %148 = load i64, i64* %13, align 8
  %149 = load %struct.image_codec*, %struct.image_codec** @codecs, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %149, i64 %151
  %153 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %148, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %147
  %158 = load %struct.image_codec*, %struct.image_codec** @codecs, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.image_codec, %struct.image_codec* %158, i64 %160
  %162 = load %struct.image_codec**, %struct.image_codec*** %5, align 8
  store %struct.image_codec* %161, %struct.image_codec** %162, align 8
  %163 = load i32, i32* @Ok, align 4
  store i32 %163, i32* %3, align 4
  br label %193

164:                                              ; preds = %147
  br label %165

165:                                              ; preds = %164
  %166 = load i64, i64* %14, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %14, align 8
  br label %73

168:                                              ; preds = %73
  br label %169

169:                                              ; preds = %168, %62, %51
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %12, align 4
  br label %47

173:                                              ; preds = %47
  %174 = load i64, i64* %11, align 8
  %175 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %176 = load i32, i32* %175, align 16
  %177 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 2
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 3
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  %184 = load i32, i32* %183, align 16
  %185 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 5
  %186 = load i32, i32* %185, align 4
  %187 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 6
  %188 = load i32, i32* %187, align 8
  %189 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @TRACE(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %174, i32 %176, i32 %178, i32 %180, i32 %182, i32 %184, i32 %186, i32 %188, i32 %190)
  %192 = load i32, i32* @GenericError, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %173, %157, %44, %34, %24
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i64 @IStream_Seek(i32*, i64, i32, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @hresult_to_status(i64) #1

declare dso_local i64 @IStream_Read(i32*, i32*, i32, i64*) #1

declare dso_local i32 @TRACE(i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
