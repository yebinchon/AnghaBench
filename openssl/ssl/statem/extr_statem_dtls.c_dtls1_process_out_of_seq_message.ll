; ModuleID = '/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_dtls.c_dtls1_process_out_of_seq_message.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/statem/extr_statem_dtls.c_dtls1_process_out_of_seq_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_16__*, i32, i32*, i8*, i32, i32, i64*)* }
%struct.hm_header_st = type { i64, i64, i64, i32, i64 }
%struct.TYPE_15__ = type { i8*, i32 }

@SSL3_MT_FINISHED = common dso_local global i64 0, align 8
@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4
@DTLS1_HM_FRAGMENT_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.hm_header_st*)* @dtls1_process_out_of_seq_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtls1_process_out_of_seq_message(%struct.TYPE_16__* %0, %struct.hm_header_st* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.hm_header_st*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [8 x i8], align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [256 x i8], align 16
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.hm_header_st* %1, %struct.hm_header_st** %5, align 8
  store i32 -1, i32* %6, align 4
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  store i32* null, i32** %8, align 8
  %13 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %14 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %10, align 8
  %16 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %17 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %18, %19
  %21 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %22 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %202

26:                                               ; preds = %2
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %28 = call i32 @memset(i8* %27, i32 0, i32 8)
  %29 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %30 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %31, 8
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 6
  store i8 %33, i8* %34, align 1
  %35 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %36 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 7
  store i8 %38, i8* %39, align 1
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %46 = call i32* @pqueue_find(i32 %44, i8* %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %26
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %52 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32* null, i32** %8, align 8
  br label %56

56:                                               ; preds = %55, %49, %26
  %57 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %58 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sle i32 %59, %64
  br i1 %65, label %93, label %66

66:                                               ; preds = %56
  %67 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %68 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 10
  %76 = icmp sgt i32 %69, %75
  br i1 %76, label %93, label %77

77:                                               ; preds = %66
  %78 = load i32*, i32** %8, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %93, label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %123

87:                                               ; preds = %80
  %88 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %89 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SSL3_MT_FINISHED, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %123

93:                                               ; preds = %87, %77, %66, %56
  br label %94

94:                                               ; preds = %118, %93
  %95 = load i64, i64* %10, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %94
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_16__*, i32, i32*, i8*, i32, i32, i64*)*, i32 (%struct.TYPE_16__*, i32, i32*, i8*, i32, i32, i64*)** %101, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %106 = load i64, i64* %10, align 8
  %107 = icmp ugt i64 %106, 256
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %111

109:                                              ; preds = %97
  %110 = load i64, i64* %10, align 8
  br label %111

111:                                              ; preds = %109, %108
  %112 = phi i64 [ 256, %108 ], [ %110, %109 ]
  %113 = trunc i64 %112 to i32
  %114 = call i32 %102(%struct.TYPE_16__* %103, i32 %104, i32* null, i8* %105, i32 %113, i32 0, i64* %11)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp sle i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %202

118:                                              ; preds = %111
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* %10, align 8
  %121 = sub i64 %120, %119
  store i64 %121, i64* %10, align 8
  br label %94

122:                                              ; preds = %94
  br label %200

123:                                              ; preds = %87, %80
  %124 = load i64, i64* %10, align 8
  %125 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %126 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %124, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %131 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %132 = call i32 @dtls1_reassemble_fragment(%struct.TYPE_16__* %130, %struct.hm_header_st* %131)
  store i32 %132, i32* %3, align 4
  br label %209

133:                                              ; preds = %123
  %134 = load i64, i64* %10, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %136 = call i64 @dtls1_max_handshake_message_len(%struct.TYPE_16__* %135)
  %137 = icmp ugt i64 %134, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %202

139:                                              ; preds = %133
  %140 = load i64, i64* %10, align 8
  %141 = call %struct.TYPE_15__* @dtls1_hm_fragment_new(i64 %140, i32 0)
  store %struct.TYPE_15__* %141, %struct.TYPE_15__** %7, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %143 = icmp eq %struct.TYPE_15__* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %202

145:                                              ; preds = %139
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load %struct.hm_header_st*, %struct.hm_header_st** %5, align 8
  %149 = call i32 @memcpy(i32* %147, %struct.hm_header_st* %148, i32 40)
  %150 = load i64, i64* %10, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %178

152:                                              ; preds = %145
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i32 (%struct.TYPE_16__*, i32, i32*, i8*, i32, i32, i64*)*, i32 (%struct.TYPE_16__*, i32, i32*, i8*, i32, i32, i64*)** %156, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %159 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load i64, i64* %10, align 8
  %164 = trunc i64 %163 to i32
  %165 = call i32 %157(%struct.TYPE_16__* %158, i32 %159, i32* null, i8* %162, i32 %164, i32 0, i64* %11)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp sle i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %152
  %169 = load i64, i64* %11, align 8
  %170 = load i64, i64* %10, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168, %152
  store i32 -1, i32* %6, align 4
  br label %173

173:                                              ; preds = %172, %168
  %174 = load i32, i32* %6, align 4
  %175 = icmp sle i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  br label %202

177:                                              ; preds = %173
  br label %178

178:                                              ; preds = %177, %145
  %179 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %181 = call i32* @pitem_new(i8* %179, %struct.TYPE_15__* %180)
  store i32* %181, i32** %8, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = icmp eq i32* %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  br label %202

185:                                              ; preds = %178
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %8, align 8
  %192 = call i32* @pqueue_insert(i32 %190, i32* %191)
  store i32* %192, i32** %8, align 8
  %193 = load i32*, i32** %8, align 8
  %194 = icmp ne i32* %193, null
  %195 = zext i1 %194 to i32
  %196 = call i32 @ossl_assert(i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %185
  br label %202

199:                                              ; preds = %185
  br label %200

200:                                              ; preds = %199, %122
  %201 = load i32, i32* @DTLS1_HM_FRAGMENT_RETRY, align 4
  store i32 %201, i32* %3, align 4
  br label %209

202:                                              ; preds = %198, %184, %176, %144, %138, %117, %25
  %203 = load i32*, i32** %8, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %207 = call i32 @dtls1_hm_fragment_free(%struct.TYPE_15__* %206)
  br label %208

208:                                              ; preds = %205, %202
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %208, %200, %129
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32* @pqueue_find(i32, i8*) #1

declare dso_local i32 @dtls1_reassemble_fragment(%struct.TYPE_16__*, %struct.hm_header_st*) #1

declare dso_local i64 @dtls1_max_handshake_message_len(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @dtls1_hm_fragment_new(i64, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.hm_header_st*, i32) #1

declare dso_local i32* @pitem_new(i8*, %struct.TYPE_15__*) #1

declare dso_local i32* @pqueue_insert(i32, i32*) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @dtls1_hm_fragment_free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
