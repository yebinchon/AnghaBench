; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_from_caption_frame.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_mpeg.c_sei_from_caption_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@cc_type_ntsc_cc_field_1 = common dso_local global i32 0, align 4
@eia608_control_erase_non_displayed_memory = common dso_local global i32 0, align 4
@DEFAULT_CHANNEL = common dso_local global i32 0, align 4
@eia608_control_resume_caption_loading = common dso_local global i32 0, align 4
@SCREEN_ROWS = common dso_local global i32 0, align 4
@eia608_style_white = common dso_local global i64 0, align 8
@SCREEN_COLS = common dso_local global i32 0, align 4
@EIA608_CHAR_SPACE = common dso_local global i8* null, align 8
@LIBCAPTION_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sei_from_caption_frame(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @sei_init(%struct.TYPE_8__* %16, i32 %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cea708_init(i32* %9, i32 %23)
  %25 = load i32, i32* @cc_type_ntsc_cc_field_1, align 4
  %26 = load i32, i32* @eia608_control_erase_non_displayed_memory, align 4
  %27 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %28 = call i64 @eia608_control_command(i32 %26, i32 %27)
  %29 = call i32 @cea708_add_cc_data(i32* %9, i32 1, i32 %25, i64 %28)
  %30 = load i32, i32* @cc_type_ntsc_cc_field_1, align 4
  %31 = load i32, i32* @eia608_control_resume_caption_loading, align 4
  %32 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %33 = call i64 @eia608_control_command(i32 %31, i32 %32)
  %34 = call i32 @cea708_add_cc_data(i32* %9, i32 1, i32 %30, i64 %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %233, %2
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SCREEN_ROWS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %236

39:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  %40 = load i64, i64* @eia608_style_white, align 8
  store i64 %40, i64* %13, align 8
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %55, %39
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @SCREEN_COLS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i64* @caption_frame_read_char(%struct.TYPE_9__* %46, i32 %47, i32 %48, i64* %12, i32* %7)
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 0, %50
  br label %52

52:                                               ; preds = %45, %41
  %53 = phi i1 [ false, %41 ], [ %51, %45 ]
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %41

58:                                               ; preds = %52
  %59 = load i32, i32* @SCREEN_COLS, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %233

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 0, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 0, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %66
  %70 = load i64, i64* @eia608_style_white, align 8
  %71 = load i64, i64* %12, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %69, %63
  %74 = load i32, i32* %6, align 4
  %75 = srem i32 %74, 4
  store i32 %75, i32* %14, align 4
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %80 = call i64 @eia608_row_column_pramble(i32 %77, i32 %78, i32 %79, i32 0)
  %81 = call i32 @sei_encode_eia608(%struct.TYPE_8__* %76, i32* %9, i64 %80)
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %73
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %88 = call i64 @eia608_tab(i32 %86, i32 %87)
  %89 = call i32 @sei_encode_eia608(%struct.TYPE_8__* %85, i32* %9, i64 %88)
  br label %90

90:                                               ; preds = %84, %73
  br label %101

91:                                               ; preds = %69, %66
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %95 = load i64, i64* %12, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i64 @eia608_row_style_pramble(i32 %93, i32 %94, i64 %95, i32 %96)
  %98 = call i32 @sei_encode_eia608(%struct.TYPE_8__* %92, i32* %9, i64 %97)
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %8, align 4
  %100 = load i64, i64* %12, align 8
  store i64 %100, i64* %13, align 8
  br label %101

101:                                              ; preds = %91, %90
  store i64 0, i64* %11, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i64* @caption_frame_read_char(%struct.TYPE_9__* %102, i32 %103, i32 %104, i64* null, i32* null)
  %106 = bitcast i64* %105 to i8*
  store i8* %106, i8** %10, align 8
  br label %107

107:                                              ; preds = %217, %101
  %108 = load i8*, i8** %10, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @SCREEN_COLS, align 4
  %115 = icmp slt i32 %113, %114
  br label %116

116:                                              ; preds = %112, %107
  %117 = phi i1 [ false, %107 ], [ %115, %112 ]
  br i1 %117, label %118, label %225

118:                                              ; preds = %116
  %119 = load i8*, i8** %10, align 8
  %120 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %121 = call i64 @eia608_from_utf8_1(i8* %119, i32 %120)
  store i64 %121, i64* %15, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %118
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* %13, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125, %118
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %132 = load i64, i64* %12, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i64 @eia608_midrow_change(i32 %131, i64 %132, i32 %133)
  %135 = call i32 @sei_encode_eia608(%struct.TYPE_8__* %130, i32* %9, i64 %134)
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %8, align 4
  %137 = load i64, i64* %12, align 8
  store i64 %137, i64* %13, align 8
  br label %138

138:                                              ; preds = %129, %125
  %139 = load i64, i64* %15, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  br label %206

142:                                              ; preds = %138
  %143 = load i64, i64* %11, align 8
  %144 = call i64 @eia608_is_basicna(i64 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %180

146:                                              ; preds = %142
  %147 = load i64, i64* %15, align 8
  %148 = call i64 @eia608_is_basicna(i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %152 = load i64, i64* %11, align 8
  %153 = load i64, i64* %15, align 8
  %154 = call i64 @eia608_from_basicna(i64 %152, i64 %153)
  %155 = call i32 @sei_encode_eia608(%struct.TYPE_8__* %151, i32* %9, i64 %154)
  br label %179

156:                                              ; preds = %146
  %157 = load i64, i64* %15, align 8
  %158 = call i64 @eia608_is_westeu(i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %156
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %162 = load i64, i64* %11, align 8
  %163 = load i8*, i8** @EIA608_CHAR_SPACE, align 8
  %164 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %165 = call i64 @eia608_from_utf8_1(i8* %163, i32 %164)
  %166 = call i64 @eia608_from_basicna(i64 %162, i64 %165)
  %167 = call i32 @sei_encode_eia608(%struct.TYPE_8__* %161, i32* %9, i64 %166)
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %169 = load i64, i64* %15, align 8
  %170 = call i32 @sei_encode_eia608(%struct.TYPE_8__* %168, i32* %9, i64 %169)
  br label %178

171:                                              ; preds = %156
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %173 = load i64, i64* %11, align 8
  %174 = call i32 @sei_encode_eia608(%struct.TYPE_8__* %172, i32* %9, i64 %173)
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %176 = load i64, i64* %15, align 8
  %177 = call i32 @sei_encode_eia608(%struct.TYPE_8__* %175, i32* %9, i64 %176)
  br label %178

178:                                              ; preds = %171, %160
  br label %179

179:                                              ; preds = %178, %150
  store i64 0, i64* %11, align 8
  br label %205

180:                                              ; preds = %142
  %181 = load i64, i64* %15, align 8
  %182 = call i64 @eia608_is_westeu(i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %180
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %186 = load i8*, i8** @EIA608_CHAR_SPACE, align 8
  %187 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %188 = call i64 @eia608_from_utf8_1(i8* %186, i32 %187)
  %189 = call i32 @sei_encode_eia608(%struct.TYPE_8__* %185, i32* %9, i64 %188)
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %191 = load i64, i64* %15, align 8
  %192 = call i32 @sei_encode_eia608(%struct.TYPE_8__* %190, i32* %9, i64 %191)
  br label %204

193:                                              ; preds = %180
  %194 = load i64, i64* %15, align 8
  %195 = call i64 @eia608_is_basicna(i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load i64, i64* %15, align 8
  store i64 %198, i64* %11, align 8
  br label %203

199:                                              ; preds = %193
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %201 = load i64, i64* %15, align 8
  %202 = call i32 @sei_encode_eia608(%struct.TYPE_8__* %200, i32* %9, i64 %201)
  br label %203

203:                                              ; preds = %199, %197
  br label %204

204:                                              ; preds = %203, %184
  br label %205

205:                                              ; preds = %204, %179
  br label %206

206:                                              ; preds = %205, %141
  %207 = load i64, i64* %15, align 8
  %208 = call i64 @eia608_is_specialna(i64 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %206
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %212 = load i32, i32* @eia608_control_resume_caption_loading, align 4
  %213 = load i32, i32* @DEFAULT_CHANNEL, align 4
  %214 = call i64 @eia608_control_command(i32 %212, i32 %213)
  %215 = call i32 @sei_encode_eia608(%struct.TYPE_8__* %211, i32* %9, i64 %214)
  br label %216

216:                                              ; preds = %210, %206
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %6, align 4
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %221 = load i32, i32* %5, align 4
  %222 = load i32, i32* %6, align 4
  %223 = call i64* @caption_frame_read_char(%struct.TYPE_9__* %220, i32 %221, i32 %222, i64* %12, i32* %7)
  %224 = bitcast i64* %223 to i8*
  store i8* %224, i8** %10, align 8
  br label %107

225:                                              ; preds = %116
  %226 = load i64, i64* %11, align 8
  %227 = icmp ne i64 0, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %225
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %230 = load i64, i64* %11, align 8
  %231 = call i32 @sei_encode_eia608(%struct.TYPE_8__* %229, i32* %9, i64 %230)
  br label %232

232:                                              ; preds = %228, %225
  br label %233

233:                                              ; preds = %232, %62
  %234 = load i32, i32* %5, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %5, align 4
  br label %35

236:                                              ; preds = %35
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %238 = call i32 @sei_encode_eia608(%struct.TYPE_8__* %237, i32* %9, i64 0)
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* @LIBCAPTION_OK, align 4
  ret i32 %244
}

declare dso_local i32 @sei_init(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @cea708_init(i32*, i32) #1

declare dso_local i32 @cea708_add_cc_data(i32*, i32, i32, i64) #1

declare dso_local i64 @eia608_control_command(i32, i32) #1

declare dso_local i64* @caption_frame_read_char(%struct.TYPE_9__*, i32, i32, i64*, i32*) #1

declare dso_local i32 @sei_encode_eia608(%struct.TYPE_8__*, i32*, i64) #1

declare dso_local i64 @eia608_row_column_pramble(i32, i32, i32, i32) #1

declare dso_local i64 @eia608_tab(i32, i32) #1

declare dso_local i64 @eia608_row_style_pramble(i32, i32, i64, i32) #1

declare dso_local i64 @eia608_from_utf8_1(i8*, i32) #1

declare dso_local i64 @eia608_midrow_change(i32, i64, i32) #1

declare dso_local i64 @eia608_is_basicna(i64) #1

declare dso_local i64 @eia608_from_basicna(i64, i64) #1

declare dso_local i64 @eia608_is_westeu(i64) #1

declare dso_local i64 @eia608_is_specialna(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
