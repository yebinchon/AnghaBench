; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_dump_data.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_dump_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"---- START OF PACKET ----\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"*---- START OF RECORD ----\0A\00", align 1
@DTLS1_RT_HEADER_LENGTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"*---- RECORD TRUNCATED ----\0A\00", align 1
@RECORD_CONTENT_TYPE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"** Record Content-type: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"** Record Version: %02x%02x\0A\00", align 1
@RECORD_VERSION_HI = common dso_local global i64 0, align 8
@RECORD_VERSION_LO = common dso_local global i64 0, align 8
@RECORD_EPOCH_HI = common dso_local global i64 0, align 8
@RECORD_EPOCH_LO = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"** Record Epoch: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"** Record Sequence: \00", align 1
@RECORD_SEQUENCE_START = common dso_local global i32 0, align 4
@RECORD_SEQUENCE_END = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@RECORD_LEN_HI = common dso_local global i64 0, align 8
@RECORD_LEN_LO = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"\0A** Record Length: %d\0A\00", align 1
@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [49 x i8] c"**---- START OF HANDSHAKE MESSAGE FRAGMENT ----\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"**---- HANDSHAKE MESSAGE FRAGMENT ENCRYPTED ----\0A\00", align 1
@DTLS1_HM_HEADER_LENGTH = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [50 x i8] c"**---- HANDSHAKE MESSAGE FRAGMENT TRUNCATED ----\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"*** Message Type: %d\0A\00", align 1
@MSG_TYPE = common dso_local global i64 0, align 8
@MSG_LEN_HI = common dso_local global i64 0, align 8
@MSG_LEN_MID = common dso_local global i64 0, align 8
@MSG_LEN_LO = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [24 x i8] c"*** Message Length: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"*** Message sequence: %d\0A\00", align 1
@MSG_SEQ_HI = common dso_local global i64 0, align 8
@MSG_SEQ_LO = common dso_local global i64 0, align 8
@MSG_FRAG_OFF_HI = common dso_local global i64 0, align 8
@MSG_FRAG_OFF_MID = common dso_local global i64 0, align 8
@MSG_FRAG_OFF_LO = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [33 x i8] c"*** Message Fragment offset: %d\0A\00", align 1
@MSG_FRAG_LEN_HI = common dso_local global i64 0, align 8
@MSG_FRAG_LEN_MID = common dso_local global i64 0, align 8
@MSG_FRAG_LEN_LO = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [30 x i8] c"*** Message Fragment len: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"***---- HANDSHAKE MESSAGE FRAGMENT INVALID ----\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"**---- END OF HANDSHAKE MESSAGE FRAGMENT ----\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"*---- END OF RECORD ----\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"---- END OF PACKET ----\0A\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dump_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_data(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** %13, align 8
  br label %17

17:                                               ; preds = %241, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %242

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %242

33:                                               ; preds = %26
  %34 = load i8*, i8** %13, align 8
  %35 = load i64, i64* @RECORD_CONTENT_TYPE, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load i8*, i8** %13, align 8
  %42 = load i64, i64* @RECORD_VERSION_HI, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8*, i8** %13, align 8
  %47 = load i64, i64* @RECORD_VERSION_LO, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %45, i32 %50)
  %52 = load i8*, i8** %13, align 8
  %53 = load i64, i64* @RECORD_EPOCH_HI, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 8
  %58 = load i8*, i8** %13, align 8
  %59 = load i64, i64* @RECORD_EPOCH_LO, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %57, %62
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %64)
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %67 = load i32, i32* @RECORD_SEQUENCE_START, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %80, %33
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @RECORD_SEQUENCE_END, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load i8*, i8** %13, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %68

83:                                               ; preds = %68
  %84 = load i8*, i8** %13, align 8
  %85 = load i64, i64* @RECORD_LEN_HI, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = shl i32 %88, 8
  %90 = load i8*, i8** %13, align 8
  %91 = load i64, i64* @RECORD_LEN_LO, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = or i32 %89, %94
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %99 = load i8*, i8** %13, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %13, align 8
  %102 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %103 = load i32, i32* %5, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %226

108:                                              ; preds = %83
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %110 = load i32, i32* %12, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  br label %225

114:                                              ; preds = %108
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @DTLS1_HM_HEADER_LENGTH, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @DTLS1_HM_HEADER_LENGTH, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118, %114
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  br label %224

124:                                              ; preds = %118
  %125 = load i8*, i8** %13, align 8
  %126 = load i64, i64* @MSG_TYPE, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %129)
  %131 = load i8*, i8** %13, align 8
  %132 = load i64, i64* @MSG_LEN_HI, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = shl i32 %135, 16
  %137 = load i8*, i8** %13, align 8
  %138 = load i64, i64* @MSG_LEN_MID, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = shl i32 %141, 8
  %143 = or i32 %136, %142
  %144 = load i8*, i8** %13, align 8
  %145 = load i64, i64* @MSG_LEN_LO, align 8
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = or i32 %143, %148
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %150)
  %152 = load i8*, i8** %13, align 8
  %153 = load i64, i64* @MSG_SEQ_HI, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = shl i32 %156, 8
  %158 = load i8*, i8** %13, align 8
  %159 = load i64, i64* @MSG_SEQ_LO, align 8
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = or i32 %157, %162
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %163)
  %165 = load i8*, i8** %13, align 8
  %166 = load i64, i64* @MSG_FRAG_OFF_HI, align 8
  %167 = getelementptr inbounds i8, i8* %165, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = shl i32 %169, 16
  %171 = load i8*, i8** %13, align 8
  %172 = load i64, i64* @MSG_FRAG_OFF_MID, align 8
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = shl i32 %175, 8
  %177 = or i32 %170, %176
  %178 = load i8*, i8** %13, align 8
  %179 = load i64, i64* @MSG_FRAG_OFF_LO, align 8
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = or i32 %177, %182
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0), i32 %184)
  %186 = load i8*, i8** %13, align 8
  %187 = load i64, i64* @MSG_FRAG_LEN_HI, align 8
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = shl i32 %190, 16
  %192 = load i8*, i8** %13, align 8
  %193 = load i64, i64* @MSG_FRAG_LEN_MID, align 8
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = shl i32 %196, 8
  %198 = or i32 %191, %197
  %199 = load i8*, i8** %13, align 8
  %200 = load i64, i64* @MSG_FRAG_LEN_LO, align 8
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = or i32 %198, %203
  store i32 %204, i32* %11, align 4
  %205 = load i32, i32* %11, align 4
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %207, %208
  %210 = load i32, i32* %9, align 4
  %211 = icmp sgt i32 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %124
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0))
  br label %223

214:                                              ; preds = %124
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* %11, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %214
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  br label %222

220:                                              ; preds = %214
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0))
  br label %222

222:                                              ; preds = %220, %218
  br label %223

223:                                              ; preds = %222, %212
  br label %224

224:                                              ; preds = %223, %122
  br label %225

225:                                              ; preds = %224, %112
  br label %226

226:                                              ; preds = %225, %83
  %227 = load i32, i32* %5, align 4
  %228 = load i32, i32* %8, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %241

232:                                              ; preds = %226
  %233 = load i32, i32* %8, align 4
  %234 = load i8*, i8** %13, align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i8, i8* %234, i64 %235
  store i8* %236, i8** %13, align 8
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* %5, align 4
  %239 = sub nsw i32 %238, %237
  store i32 %239, i32* %5, align 4
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0))
  br label %241

241:                                              ; preds = %232, %230
  br label %17

242:                                              ; preds = %31, %17
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0))
  %244 = load i32, i32* @stdout, align 4
  %245 = call i32 @fflush(i32 %244)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
