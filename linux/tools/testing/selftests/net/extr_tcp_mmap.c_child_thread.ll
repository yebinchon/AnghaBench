; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_mmap.c_child_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_mmap.c_child_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_zerocopy_receive = type { i32, i32, i64 }
%struct.timeval = type { i32, i64 }
%struct.rusage = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pollfd = type { i32, i32 }

@MAP_SHARED = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NDELAY = common dso_local global i32 0, align 4
@chunk_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@zflg = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_ZEROCOPY_RECEIVE = common dso_local global i32 0, align 4
@xflg = common dso_local global i64 0, align 8
@RUSAGE_THREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [115 x i8] c"received %lg MB (%lg %% mmap'ed) in %lg s, %lg Gbit\0A  cpu usage user:%lg sys:%lg, %lg usec per MB, %lu c-switches\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @child_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tcp_zerocopy_receive, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.rusage, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.pollfd, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %23 = load i32, i32* @MAP_SHARED, align 4
  store i32 %23, i32* %8, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %16, align 4
  %27 = call i32 @gettimeofday(%struct.timeval* %9, i32* null)
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* @F_SETFL, align 4
  %30 = load i32, i32* @O_NDELAY, align 4
  %31 = call i32 @fcntl(i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @chunk_size, align 4
  %33 = call i8* @malloc(i32 %32)
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %1
  %37 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %271

38:                                               ; preds = %1
  %39 = load i64, i64* @zflg, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* @chunk_size, align 4
  %43 = load i32, i32* @PROT_READ, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %16, align 4
  %46 = call i8* @mmap(i32* null, i32 %42, i32 %43, i32 %44, i32 %45, i32 0)
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = icmp eq i8* %47, inttoptr (i64 -1 to i8*)
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i64 0, i64* @zflg, align 8
  br label %50

50:                                               ; preds = %49, %41
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %134, %175
  %53 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %17, i32 0, i32 0
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %53, align 4
  %55 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %17, i32 0, i32 1
  %56 = load i32, i32* @POLLIN, align 4
  store i32 %56, i32* %55, align 4
  %57 = call i32 @poll(%struct.pollfd* %17, i32 1, i32 10000)
  %58 = load i64, i64* @zflg, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %135

60:                                               ; preds = %52
  store i32 16, i32* %19, align 4
  %61 = load i8*, i8** %12, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = getelementptr inbounds %struct.tcp_zerocopy_receive, %struct.tcp_zerocopy_receive* %6, i32 0, i32 2
  store i64 %62, i64* %63, align 8
  %64 = load i32, i32* @chunk_size, align 4
  %65 = getelementptr inbounds %struct.tcp_zerocopy_receive, %struct.tcp_zerocopy_receive* %6, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = getelementptr inbounds %struct.tcp_zerocopy_receive, %struct.tcp_zerocopy_receive* %6, i32 0, i32 1
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @IPPROTO_TCP, align 4
  %69 = load i32, i32* @TCP_ZEROCOPY_RECEIVE, align 4
  %70 = call i32 @getsockopt(i32 %67, i32 %68, i32 %69, %struct.tcp_zerocopy_receive* %6, i32* %19)
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %20, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %176

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.tcp_zerocopy_receive, %struct.tcp_zerocopy_receive* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.tcp_zerocopy_receive, %struct.tcp_zerocopy_receive* %6, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @chunk_size, align 4
  %82 = icmp sle i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = getelementptr inbounds %struct.tcp_zerocopy_receive, %struct.tcp_zerocopy_receive* %6, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %4, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %4, align 8
  %90 = load i64, i64* @xflg, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %78
  %93 = load i8*, i8** %12, align 8
  %94 = getelementptr inbounds %struct.tcp_zerocopy_receive, %struct.tcp_zerocopy_receive* %6, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @hash_zone(i8* %93, i32 %95)
  br label %97

97:                                               ; preds = %92, %78
  %98 = getelementptr inbounds %struct.tcp_zerocopy_receive, %struct.tcp_zerocopy_receive* %6, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %5, align 8
  %102 = add i64 %101, %100
  store i64 %102, i64* %5, align 8
  br label %103

103:                                              ; preds = %97, %74
  %104 = getelementptr inbounds %struct.tcp_zerocopy_receive, %struct.tcp_zerocopy_receive* %6, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %134

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.tcp_zerocopy_receive, %struct.tcp_zerocopy_receive* %6, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @chunk_size, align 4
  %111 = icmp sle i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i32, i32* %16, align 4
  %115 = load i8*, i8** %11, align 8
  %116 = getelementptr inbounds %struct.tcp_zerocopy_receive, %struct.tcp_zerocopy_receive* %6, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @read(i32 %114, i8* %115, i32 %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %107
  %122 = load i64, i64* @xflg, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i8*, i8** %11, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @hash_zone(i8* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %121
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %5, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %5, align 8
  br label %133

133:                                              ; preds = %128, %107
  br label %134

134:                                              ; preds = %133, %103
  br label %52

135:                                              ; preds = %52
  store i32 0, i32* %18, align 4
  br label %136

136:                                              ; preds = %167, %135
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* @chunk_size, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %175

140:                                              ; preds = %136
  %141 = load i32, i32* %16, align 4
  %142 = load i8*, i8** %11, align 8
  %143 = load i32, i32* %18, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i32, i32* @chunk_size, align 4
  %147 = load i32, i32* %18, align 4
  %148 = sub nsw i32 %146, %147
  %149 = call i32 @read(i32 %141, i8* %145, i32 %148)
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %140
  br label %177

153:                                              ; preds = %140
  %154 = load i32, i32* %15, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  br label %175

157:                                              ; preds = %153
  %158 = load i64, i64* @xflg, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load i8*, i8** %11, align 8
  %162 = load i32, i32* %18, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i32, i32* %15, align 4
  %166 = call i32 @hash_zone(i8* %164, i32 %165)
  br label %167

167:                                              ; preds = %160, %157
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* %5, align 8
  %171 = add i64 %170, %169
  store i64 %171, i64* %5, align 8
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %18, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %18, align 4
  br label %136

175:                                              ; preds = %156, %136
  br label %52

176:                                              ; preds = %73
  br label %177

177:                                              ; preds = %176, %152
  %178 = call i32 @gettimeofday(%struct.timeval* %10, i32* null)
  %179 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sub nsw i32 %180, %182
  %184 = mul nsw i32 %183, 1000000
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = add i64 %185, %187
  %189 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = sub i64 %188, %190
  store i64 %191, i64* %7, align 8
  store double 0.000000e+00, double* %13, align 8
  %192 = load i64, i64* %7, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %177
  %195 = load i64, i64* %5, align 8
  %196 = uitofp i64 %195 to double
  %197 = fmul double %196, 8.000000e+00
  %198 = load i64, i64* %7, align 8
  %199 = uitofp i64 %198 to double
  %200 = fdiv double %197, %199
  %201 = fdiv double %200, 1.000000e+03
  store double %201, double* %13, align 8
  br label %202

202:                                              ; preds = %194, %177
  %203 = load i32, i32* @RUSAGE_THREAD, align 4
  %204 = call i32 @getrusage(i32 %203, %struct.rusage* %14)
  %205 = load i64, i64* %5, align 8
  %206 = icmp ugt i64 %205, 1048576
  br i1 %206, label %207, label %270

207:                                              ; preds = %202
  %208 = load i64, i64* %5, align 8
  %209 = lshr i64 %208, 20
  store i64 %209, i64* %22, align 8
  %210 = getelementptr inbounds %struct.rusage, %struct.rusage* %14, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = mul nsw i32 1000000, %212
  %214 = getelementptr inbounds %struct.rusage, %struct.rusage* %14, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %213, %216
  %218 = getelementptr inbounds %struct.rusage, %struct.rusage* %14, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 1000000, %220
  %222 = add nsw i32 %217, %221
  %223 = getelementptr inbounds %struct.rusage, %struct.rusage* %14, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %222, %225
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %21, align 8
  %228 = load i64, i64* %5, align 8
  %229 = uitofp i64 %228 to double
  %230 = fdiv double %229, 0x4130000000000000
  %231 = fptoui double %230 to i64
  %232 = load i64, i64* %4, align 8
  %233 = uitofp i64 %232 to double
  %234 = fmul double 1.000000e+02, %233
  %235 = load i64, i64* %5, align 8
  %236 = uitofp i64 %235 to double
  %237 = fdiv double %234, %236
  %238 = load i64, i64* %7, align 8
  %239 = uitofp i64 %238 to double
  %240 = fdiv double %239, 1.000000e+06
  %241 = load double, double* %13, align 8
  %242 = getelementptr inbounds %struct.rusage, %struct.rusage* %14, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = sitofp i32 %244 to double
  %246 = getelementptr inbounds %struct.rusage, %struct.rusage* %14, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = sitofp i32 %248 to double
  %250 = fdiv double %249, 1.000000e+06
  %251 = fadd double %245, %250
  %252 = getelementptr inbounds %struct.rusage, %struct.rusage* %14, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = sitofp i32 %254 to double
  %256 = getelementptr inbounds %struct.rusage, %struct.rusage* %14, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = sitofp i32 %258 to double
  %260 = fdiv double %259, 1.000000e+06
  %261 = fadd double %255, %260
  %262 = load i64, i64* %21, align 8
  %263 = uitofp i64 %262 to double
  %264 = load i64, i64* %22, align 8
  %265 = uitofp i64 %264 to double
  %266 = fdiv double %263, %265
  %267 = getelementptr inbounds %struct.rusage, %struct.rusage* %14, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @printf(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.1, i64 0, i64 0), i64 %231, double %237, double %240, double %241, double %251, double %261, double %266, i32 %268)
  br label %270

270:                                              ; preds = %207, %202
  br label %271

271:                                              ; preds = %270, %36
  %272 = load i8*, i8** %11, align 8
  %273 = call i32 @free(i8* %272)
  %274 = load i32, i32* %16, align 4
  %275 = call i32 @close(i32 %274)
  %276 = load i64, i64* @zflg, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %271
  %279 = load i8*, i8** %12, align 8
  %280 = load i32, i32* @chunk_size, align 4
  %281 = call i32 @munmap(i8* %279, i32 %280)
  br label %282

282:                                              ; preds = %278, %271
  %283 = call i32 @pthread_exit(i32 0)
  %284 = load i8*, i8** %2, align 8
  ret i8* %284
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @getsockopt(i32, i32, i32, %struct.tcp_zerocopy_receive*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @hash_zone(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @getrusage(i32, %struct.rusage*) #1

declare dso_local i32 @printf(i8*, i64, double, double, double, double, double, double, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @pthread_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
