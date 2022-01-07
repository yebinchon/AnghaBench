; ModuleID = '/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_recv_raw.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_recv_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_usock = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i64, i64, i8* }
%struct.iovec = type { i8*, i64 }
%struct.msghdr = type { i32, i8*, i32, i8*, i32, %struct.iovec* }

@NN_USOCK_BATCH_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"AIO batch buffer\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@SCM_RIGHTS = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nn_usock*, i8*, i64*)* @nn_usock_recv_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_usock_recv_raw(%struct.nn_usock* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nn_usock*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iovec, align 8
  %12 = alloca %struct.msghdr, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca i32, align 4
  store %struct.nn_usock* %0, %struct.nn_usock** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %16 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @nn_slow(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load i64, i64* @NN_USOCK_BATCH_SIZE, align 8
  %26 = call i8* @nn_alloc(i64 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %28 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  %30 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %31 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @alloc_assert(i8* %33)
  br label %35

35:                                               ; preds = %24, %3
  %36 = load i64*, i64** %7, align 8
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %39 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %43 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %41, %45
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %84

49:                                               ; preds = %35
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %58 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %62 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @memcpy(i8* %56, i8* %65, i64 %66)
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %70 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, %68
  store i64 %73, i64* %71, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %6, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = sub i64 %78, %77
  store i64 %79, i64* %9, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %238

83:                                               ; preds = %55
  br label %84

84:                                               ; preds = %83, %35
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* @NN_USOCK_BATCH_SIZE, align 8
  %87 = icmp ugt i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 0
  store i8* %89, i8** %90, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 1
  store i64 %91, i64* %92, align 8
  br label %101

93:                                               ; preds = %84
  %94 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %95 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 0
  store i8* %97, i8** %98, align 8
  %99 = load i64, i64* @NN_USOCK_BATCH_SIZE, align 8
  %100 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 1
  store i64 %99, i64* %100, align 8
  br label %101

101:                                              ; preds = %93, %88
  %102 = call i32 @memset(%struct.msghdr* %12, i32 0, i32 48)
  %103 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 5
  store %struct.iovec* %11, %struct.iovec** %103, align 8
  %104 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %106 = bitcast i8* %105 to i32*
  store i32 -1, i32* %106, align 16
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %108 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 3
  store i8* %107, i8** %108, align 8
  %109 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 4
  store i32 4, i32* %109, align 8
  %110 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %111 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @recvmsg(i32 %112, %struct.msghdr* %12, i32 0)
  store i64 %113, i64* %10, align 8
  %114 = load i64, i64* %10, align 8
  %115 = icmp sle i64 %114, 0
  %116 = zext i1 %115 to i32
  %117 = call i64 @nn_slow(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %146

119:                                              ; preds = %101
  %120 = load i64, i64* %10, align 8
  %121 = icmp eq i64 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i64 @nn_slow(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load i32, i32* @ECONNRESET, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %238

128:                                              ; preds = %119
  %129 = load i64, i64* @errno, align 8
  %130 = load i64, i64* @EAGAIN, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load i64, i64* @errno, align 8
  %134 = load i64, i64* @EWOULDBLOCK, align 8
  %135 = icmp eq i64 %133, %134
  br label %136

136:                                              ; preds = %132, %128
  %137 = phi i1 [ true, %128 ], [ %135, %132 ]
  %138 = zext i1 %137 to i32
  %139 = call i64 @nn_fast(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i64 0, i64* %10, align 8
  br label %145

142:                                              ; preds = %136
  %143 = load i32, i32* @ECONNRESET, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  br label %238

145:                                              ; preds = %141
  br label %146

146:                                              ; preds = %145, %101
  %147 = load i64, i64* %10, align 8
  %148 = icmp sgt i64 %147, 0
  br i1 %148, label %149, label %185

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %184

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  %157 = icmp eq i64 %156, 4
  %158 = zext i1 %157 to i32
  %159 = call i32 @nn_assert(i32 %158)
  %160 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %161 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %176

165:                                              ; preds = %153
  %166 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %167 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 3
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @memcpy(i8* %169, i8* %171, i64 1)
  %173 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %174 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 3
  store i8* null, i8** %175, align 8
  br label %183

176:                                              ; preds = %153
  %177 = bitcast i32* %14 to i8*
  %178 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %12, i32 0, i32 3
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 @memcpy(i8* %177, i8* %179, i64 4)
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @nn_closefd(i32 %181)
  br label %183

183:                                              ; preds = %176, %165
  br label %184

184:                                              ; preds = %183, %149
  br label %185

185:                                              ; preds = %184, %146
  %186 = load i64, i64* %9, align 8
  %187 = load i64, i64* @NN_USOCK_BATCH_SIZE, align 8
  %188 = icmp ugt i64 %186, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %185
  %190 = load i64, i64* %10, align 8
  %191 = load i64, i64* %9, align 8
  %192 = sub i64 %191, %190
  store i64 %192, i64* %9, align 8
  %193 = load i64, i64* %9, align 8
  %194 = load i64*, i64** %7, align 8
  %195 = load i64, i64* %194, align 8
  %196 = sub i64 %195, %193
  store i64 %196, i64* %194, align 8
  store i32 0, i32* %4, align 4
  br label %238

197:                                              ; preds = %185
  %198 = load i64, i64* %10, align 8
  %199 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %200 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  store i64 %198, i64* %201, align 8
  %202 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %203 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 2
  store i64 0, i64* %204, align 8
  %205 = load i64, i64* %10, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %233

207:                                              ; preds = %197
  %208 = load i64, i64* %10, align 8
  %209 = load i64, i64* %9, align 8
  %210 = icmp sgt i64 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = load i64, i64* %9, align 8
  br label %215

213:                                              ; preds = %207
  %214 = load i64, i64* %10, align 8
  br label %215

215:                                              ; preds = %213, %211
  %216 = phi i64 [ %212, %211 ], [ %214, %213 ]
  store i64 %216, i64* %8, align 8
  %217 = load i8*, i8** %6, align 8
  %218 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %219 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = load i64, i64* %8, align 8
  %223 = call i32 @memcpy(i8* %217, i8* %221, i64 %222)
  %224 = load i64, i64* %8, align 8
  %225 = load i64, i64* %9, align 8
  %226 = sub i64 %225, %224
  store i64 %226, i64* %9, align 8
  %227 = load i64, i64* %8, align 8
  %228 = load %struct.nn_usock*, %struct.nn_usock** %5, align 8
  %229 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = add i64 %231, %227
  store i64 %232, i64* %230, align 8
  br label %233

233:                                              ; preds = %215, %197
  %234 = load i64, i64* %9, align 8
  %235 = load i64*, i64** %7, align 8
  %236 = load i64, i64* %235, align 8
  %237 = sub i64 %236, %234
  store i64 %237, i64* %235, align 8
  store i32 0, i32* %4, align 4
  br label %238

238:                                              ; preds = %233, %189, %142, %125, %82
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i8* @nn_alloc(i64, i8*) #1

declare dso_local i32 @alloc_assert(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i64 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i64 @nn_fast(i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_closefd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
