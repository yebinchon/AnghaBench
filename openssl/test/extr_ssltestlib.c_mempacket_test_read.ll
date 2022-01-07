; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_mempacket_test_read.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltestlib.c_mempacket_test_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_7__ = type { i64, i32, i64, i8* }

@INJECT_PACKET_IGNORE_REC_SEQ = common dso_local global i64 0, align 8
@DTLS1_RT_HEADER_LENGTH = common dso_local global i32 0, align 4
@EPOCH_HI = common dso_local global i64 0, align 8
@EPOCH_LO = common dso_local global i64 0, align 8
@RECORD_SEQUENCE = common dso_local global i32 0, align 4
@RECORD_LEN_HI = common dso_local global i64 0, align 8
@RECORD_LEN_LO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @mempacket_test_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mempacket_test_read(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.TYPE_6__* @BIO_get_data(i32* %16)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %8, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @BIO_clear_retry_flags(i32* %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_7__* @sk_MEMPACKET_value(i32 %22, i32 0)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %9, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = icmp eq %struct.TYPE_7__* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26, %3
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @BIO_set_retry_read(i32* %35)
  store i32 -1, i32* %4, align 4
  br label %215

37:                                               ; preds = %26
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sk_MEMPACKET_shift(i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %37
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %51, %37
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @INJECT_PACKET_IGNORE_REC_SEQ, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %205

61:                                               ; preds = %55
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %205

71:                                               ; preds = %66, %61
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %11, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %10, align 8
  br label %78

78:                                               ; preds = %200, %71
  %79 = load i32, i32* %11, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %204

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 -1, i32* %4, align 4
  br label %215

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8
  %88 = load i64, i64* @EPOCH_HI, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = shl i32 %91, 8
  %93 = load i8*, i8** %10, align 8
  %94 = load i64, i64* @EPOCH_LO, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = or i32 %92, %97
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %86
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  store i32 0, i32* %109, align 8
  br label %110

110:                                              ; preds = %104, %86
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %128, %110
  %115 = load i32, i32* %12, align 4
  %116 = and i32 %115, 255
  %117 = trunc i32 %116 to i8
  %118 = load i8*, i8** %10, align 8
  %119 = load i32, i32* @RECORD_SEQUENCE, align 4
  %120 = load i32, i32* %13, align 4
  %121 = sub i32 %119, %120
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %118, i64 %122
  store i8 %117, i8* %123, align 1
  %124 = load i32, i32* %12, align 4
  %125 = lshr i32 %124, 8
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %114
  %129 = load i32, i32* %12, align 4
  %130 = icmp ugt i32 %129, 0
  br i1 %130, label %114, label %131

131:                                              ; preds = %128
  %132 = load i8*, i8** %10, align 8
  %133 = load i64, i64* @RECORD_LEN_HI, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = shl i32 %136, 8
  %138 = load i8*, i8** %10, align 8
  %139 = load i64, i64* @RECORD_LEN_LO, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = or i32 %137, %142
  %144 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %145 = add nsw i32 %143, %144
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %14, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %131
  store i32 -1, i32* %4, align 4
  br label %215

150:                                              ; preds = %131
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %153, %156
  br i1 %157, label %158, label %190

158:                                              ; preds = %150
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %15, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %190

164:                                              ; preds = %158
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %164
  %169 = load i8*, i8** %10, align 8
  %170 = load i8*, i8** %10, align 8
  %171 = load i32, i32* %14, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %14, align 4
  %176 = sub i32 %174, %175
  %177 = call i32 @memmove(i8* %169, i8* %173, i32 %176)
  br label %178

178:                                              ; preds = %168, %164
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %7, align 4
  %181 = sub i32 %180, %179
  store i32 %181, i32* %7, align 4
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  store i32 -1, i32* %183, align 8
  %184 = load i32, i32* %7, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %178
  %187 = load i32*, i32** %5, align 8
  %188 = call i32 @BIO_set_retry_read(i32* %187)
  br label %189

189:                                              ; preds = %186, %178
  br label %195

190:                                              ; preds = %158, %150
  %191 = load i32, i32* %14, align 4
  %192 = load i8*, i8** %10, align 8
  %193 = zext i32 %191 to i64
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  store i8* %194, i8** %10, align 8
  br label %195

195:                                              ; preds = %190, %189
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = add i32 %198, 1
  store i32 %199, i32* %197, align 8
  br label %200

200:                                              ; preds = %195
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* %11, align 4
  %203 = sub i32 %202, %201
  store i32 %203, i32* %11, align 4
  br label %78

204:                                              ; preds = %78
  br label %205

205:                                              ; preds = %204, %66, %55
  %206 = load i8*, i8** %6, align 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 3
  %209 = load i8*, i8** %208, align 8
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @memcpy(i8* %206, i8* %209, i32 %210)
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %213 = call i32 @mempacket_free(%struct.TYPE_7__* %212)
  %214 = load i32, i32* %7, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %205, %149, %85, %34
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local %struct.TYPE_6__* @BIO_get_data(i32*) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local %struct.TYPE_7__* @sk_MEMPACKET_value(i32, i32) #1

declare dso_local i32 @BIO_set_retry_read(i32*) #1

declare dso_local i32 @sk_MEMPACKET_shift(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mempacket_free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
