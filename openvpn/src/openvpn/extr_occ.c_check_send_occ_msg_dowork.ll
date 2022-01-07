; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_occ.c_check_send_occ_msg_dowork.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_occ.c_check_send_occ_msg_dowork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@occ_magic = common dso_local global i32 0, align 4
@OCC_STRING_SIZE = common dso_local global i64 0, align 8
@D_PACKET_CONTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"SENT OCC_REQUEST\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"SENT OCC_REPLY\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"SENT OCC_MTU_REQUEST\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"SENT OCC_MTU_REPLY\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"SENT OCC_MTU_LOAD_REQUEST\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"SENT OCC_MTU_LOAD min_int(%d-%d-%d-%d,%d) size=%d\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"SENT OCC_EXIT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_send_occ_msg_dowork(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.context*, %struct.context** %2, align 8
  %6 = getelementptr inbounds %struct.context, %struct.context* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 7
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.context*, %struct.context** %2, align 8
  %12 = getelementptr inbounds %struct.context, %struct.context* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 4
  %14 = load %struct.context*, %struct.context** %2, align 8
  %15 = getelementptr inbounds %struct.context, %struct.context* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.context*, %struct.context** %2, align 8
  %18 = getelementptr inbounds %struct.context, %struct.context* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = call i32 @FRAME_HEADROOM(i32* %19)
  %21 = call i32 @buf_init(i32* %16, i32 %20)
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.context*, %struct.context** %2, align 8
  %24 = getelementptr inbounds %struct.context, %struct.context* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.context*, %struct.context** %2, align 8
  %27 = getelementptr inbounds %struct.context, %struct.context* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = call i32 @MAX_RW_SIZE_TUN(i32* %28)
  %30 = call i32 @buf_safe(i32* %25, i32 %29)
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.context*, %struct.context** %2, align 8
  %33 = getelementptr inbounds %struct.context, %struct.context* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* @occ_magic, align 4
  %36 = load i64, i64* @OCC_STRING_SIZE, align 8
  %37 = call i32 @buf_write(i32* %34, i32 %35, i64 %36)
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.context*, %struct.context** %2, align 8
  %40 = getelementptr inbounds %struct.context, %struct.context* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %223 [
    i32 128, label %43
    i32 129, label %53
    i32 130, label %88
    i32 131, label %98
    i32 132, label %130
    i32 133, label %151
    i32 134, label %213
  ]

43:                                               ; preds = %1
  %44 = load %struct.context*, %struct.context** %2, align 8
  %45 = getelementptr inbounds %struct.context, %struct.context* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = call i32 @buf_write_u8(i32* %46, i32 128)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %223

50:                                               ; preds = %43
  %51 = load i32, i32* @D_PACKET_CONTENT, align 4
  %52 = call i32 (i32, i8*, ...) @dmsg(i32 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %223

53:                                               ; preds = %1
  %54 = load %struct.context*, %struct.context** %2, align 8
  %55 = getelementptr inbounds %struct.context, %struct.context* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %223

60:                                               ; preds = %53
  %61 = load %struct.context*, %struct.context** %2, align 8
  %62 = getelementptr inbounds %struct.context, %struct.context* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = call i32 @buf_write_u8(i32* %63, i32 129)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  br label %223

67:                                               ; preds = %60
  %68 = load %struct.context*, %struct.context** %2, align 8
  %69 = getelementptr inbounds %struct.context, %struct.context* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load %struct.context*, %struct.context** %2, align 8
  %72 = getelementptr inbounds %struct.context, %struct.context* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.context*, %struct.context** %2, align 8
  %76 = getelementptr inbounds %struct.context, %struct.context* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @strlen(i32 %78)
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = call i32 @buf_write(i32* %70, i32 %74, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %67
  br label %223

85:                                               ; preds = %67
  %86 = load i32, i32* @D_PACKET_CONTENT, align 4
  %87 = call i32 (i32, i8*, ...) @dmsg(i32 %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %223

88:                                               ; preds = %1
  %89 = load %struct.context*, %struct.context** %2, align 8
  %90 = getelementptr inbounds %struct.context, %struct.context* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = call i32 @buf_write_u8(i32* %91, i32 130)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  br label %223

95:                                               ; preds = %88
  %96 = load i32, i32* @D_PACKET_CONTENT, align 4
  %97 = call i32 (i32, i8*, ...) @dmsg(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %223

98:                                               ; preds = %1
  %99 = load %struct.context*, %struct.context** %2, align 8
  %100 = getelementptr inbounds %struct.context, %struct.context* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = call i32 @buf_write_u8(i32* %101, i32 131)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %98
  br label %223

105:                                              ; preds = %98
  %106 = load %struct.context*, %struct.context** %2, align 8
  %107 = getelementptr inbounds %struct.context, %struct.context* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load %struct.context*, %struct.context** %2, align 8
  %110 = getelementptr inbounds %struct.context, %struct.context* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @buf_write_u16(i32* %108, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %105
  br label %223

116:                                              ; preds = %105
  %117 = load %struct.context*, %struct.context** %2, align 8
  %118 = getelementptr inbounds %struct.context, %struct.context* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load %struct.context*, %struct.context** %2, align 8
  %121 = getelementptr inbounds %struct.context, %struct.context* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @buf_write_u16(i32* %119, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %116
  br label %223

127:                                              ; preds = %116
  %128 = load i32, i32* @D_PACKET_CONTENT, align 4
  %129 = call i32 (i32, i8*, ...) @dmsg(i32 %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %223

130:                                              ; preds = %1
  %131 = load %struct.context*, %struct.context** %2, align 8
  %132 = getelementptr inbounds %struct.context, %struct.context* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = call i32 @buf_write_u8(i32* %133, i32 132)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %130
  br label %223

137:                                              ; preds = %130
  %138 = load %struct.context*, %struct.context** %2, align 8
  %139 = getelementptr inbounds %struct.context, %struct.context* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load %struct.context*, %struct.context** %2, align 8
  %142 = getelementptr inbounds %struct.context, %struct.context* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @buf_write_u16(i32* %140, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %137
  br label %223

148:                                              ; preds = %137
  %149 = load i32, i32* @D_PACKET_CONTENT, align 4
  %150 = call i32 (i32, i8*, ...) @dmsg(i32 %149, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %223

151:                                              ; preds = %1
  %152 = load %struct.context*, %struct.context** %2, align 8
  %153 = getelementptr inbounds %struct.context, %struct.context* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = call i32 @buf_write_u8(i32* %154, i32 133)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %151
  br label %223

158:                                              ; preds = %151
  %159 = load %struct.context*, %struct.context** %2, align 8
  %160 = getelementptr inbounds %struct.context, %struct.context* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.context*, %struct.context** %2, align 8
  %164 = getelementptr inbounds %struct.context, %struct.context* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = call i32 @EXPANDED_SIZE(i32* %165)
  %167 = call i64 @min_int(i32 %162, i32 %166)
  %168 = load i64, i64* @OCC_STRING_SIZE, align 8
  %169 = sub nsw i64 %167, %168
  %170 = sub i64 %169, 4
  %171 = load %struct.context*, %struct.context** %2, align 8
  %172 = getelementptr inbounds %struct.context, %struct.context* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  %174 = call i32 @EXTRA_FRAME(i32* %173)
  %175 = sext i32 %174 to i64
  %176 = sub i64 %170, %175
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %190, %158
  %179 = load i32, i32* %4, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %178
  %182 = load %struct.context*, %struct.context** %2, align 8
  %183 = getelementptr inbounds %struct.context, %struct.context* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = call i32 (...) @get_random()
  %186 = and i32 %185, 255
  %187 = call i32 @buf_write_u8(i32* %184, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %181
  br label %193

190:                                              ; preds = %181
  %191 = load i32, i32* %4, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %4, align 4
  br label %178

193:                                              ; preds = %189, %178
  %194 = load i32, i32* @D_PACKET_CONTENT, align 4
  %195 = load %struct.context*, %struct.context** %2, align 8
  %196 = getelementptr inbounds %struct.context, %struct.context* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load i64, i64* @OCC_STRING_SIZE, align 8
  %200 = load %struct.context*, %struct.context** %2, align 8
  %201 = getelementptr inbounds %struct.context, %struct.context* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 2
  %203 = call i32 @EXTRA_FRAME(i32* %202)
  %204 = load %struct.context*, %struct.context** %2, align 8
  %205 = getelementptr inbounds %struct.context, %struct.context* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 2
  %207 = call i32 @MAX_RW_SIZE_TUN(i32* %206)
  %208 = load %struct.context*, %struct.context** %2, align 8
  %209 = getelementptr inbounds %struct.context, %struct.context* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = call i32 @BLEN(i32* %210)
  %212 = call i32 (i32, i8*, ...) @dmsg(i32 %194, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %198, i64 %199, i32 4, i32 %203, i32 %207, i32 %211)
  store i32 1, i32* %3, align 4
  br label %223

213:                                              ; preds = %1
  %214 = load %struct.context*, %struct.context** %2, align 8
  %215 = getelementptr inbounds %struct.context, %struct.context* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 1
  %217 = call i32 @buf_write_u8(i32* %216, i32 134)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %213
  br label %223

220:                                              ; preds = %213
  %221 = load i32, i32* @D_PACKET_CONTENT, align 4
  %222 = call i32 (i32, i8*, ...) @dmsg(i32 %221, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %223

223:                                              ; preds = %1, %220, %219, %193, %157, %148, %147, %136, %127, %126, %115, %104, %95, %94, %85, %84, %66, %59, %50, %49
  %224 = load i32, i32* %3, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load %struct.context*, %struct.context** %2, align 8
  %228 = call i32 @encrypt_sign(%struct.context* %227, i32 1)
  br label %229

229:                                              ; preds = %226, %223
  %230 = load %struct.context*, %struct.context** %2, align 8
  %231 = getelementptr inbounds %struct.context, %struct.context* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  store i32 -1, i32* %232, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @buf_init(i32*, i32) #1

declare dso_local i32 @FRAME_HEADROOM(i32*) #1

declare dso_local i32 @buf_safe(i32*, i32) #1

declare dso_local i32 @MAX_RW_SIZE_TUN(i32*) #1

declare dso_local i32 @buf_write(i32*, i32, i64) #1

declare dso_local i32 @buf_write_u8(i32*, i32) #1

declare dso_local i32 @dmsg(i32, i8*, ...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @buf_write_u16(i32*, i32) #1

declare dso_local i64 @min_int(i32, i32) #1

declare dso_local i32 @EXPANDED_SIZE(i32*) #1

declare dso_local i32 @EXTRA_FRAME(i32*) #1

declare dso_local i32 @get_random(...) #1

declare dso_local i32 @BLEN(i32*) #1

declare dso_local i32 @encrypt_sign(%struct.context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
