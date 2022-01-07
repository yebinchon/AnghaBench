; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_poll.c_nn_poll.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_poll.c_nn_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_pollfd = type { i32, i32, i32 }
%struct.pollfd = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"pollset\00", align 1
@NN_POLLIN = common dso_local global i32 0, align 4
@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_RCVFD = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@NN_POLLOUT = common dso_local global i32 0, align 4
@NN_SNDFD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_poll(%struct.nn_pollfd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nn_pollfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.pollfd*, align 8
  store %struct.nn_pollfd* %0, %struct.nn_pollfd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 12, %16
  %18 = mul i64 %17, 2
  %19 = trunc i64 %18 to i32
  %20 = call %struct.pollfd* @nn_alloc(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.pollfd* %20, %struct.pollfd** %14, align 8
  %21 = load %struct.pollfd*, %struct.pollfd** %14, align 8
  %22 = call i32 @alloc_assert(%struct.pollfd* %21)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %122, %3
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %125

27:                                               ; preds = %23
  %28 = load %struct.nn_pollfd*, %struct.nn_pollfd** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %28, i64 %30
  %32 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NN_POLLIN, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %74

37:                                               ; preds = %27
  store i64 4, i64* %13, align 8
  %38 = load %struct.nn_pollfd*, %struct.nn_pollfd** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %38, i64 %40
  %42 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NN_SOL_SOCKET, align 4
  %45 = load i32, i32* @NN_RCVFD, align 4
  %46 = call i32 @nn_getsockopt(i32 %43, i32 %44, i32 %45, i32* %11, i64* %13)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i64 @nn_slow(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load %struct.pollfd*, %struct.pollfd** %14, align 8
  %54 = call i32 @nn_free(%struct.pollfd* %53)
  store i32 -1, i32* %4, align 4
  br label %234

55:                                               ; preds = %37
  %56 = load i64, i64* %13, align 8
  %57 = icmp eq i64 %56, 4
  %58 = zext i1 %57 to i32
  %59 = call i32 @nn_assert(i32 %58)
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.pollfd*, %struct.pollfd** %14, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %61, i64 %63
  %65 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %64, i32 0, i32 0
  store i32 %60, i32* %65, align 4
  %66 = load i32, i32* @POLLIN, align 4
  %67 = load %struct.pollfd*, %struct.pollfd** %14, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %67, i64 %69
  %71 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %70, i32 0, i32 1
  store i32 %66, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %55, %27
  %75 = load %struct.nn_pollfd*, %struct.nn_pollfd** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %75, i64 %77
  %79 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @NN_POLLOUT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %121

84:                                               ; preds = %74
  store i64 4, i64* %13, align 8
  %85 = load %struct.nn_pollfd*, %struct.nn_pollfd** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %85, i64 %87
  %89 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @NN_SOL_SOCKET, align 4
  %92 = load i32, i32* @NN_SNDFD, align 4
  %93 = call i32 @nn_getsockopt(i32 %90, i32 %91, i32 %92, i32* %11, i64* %13)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp slt i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i64 @nn_slow(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %84
  %100 = load %struct.pollfd*, %struct.pollfd** %14, align 8
  %101 = call i32 @nn_free(%struct.pollfd* %100)
  store i32 -1, i32* %4, align 4
  br label %234

102:                                              ; preds = %84
  %103 = load i64, i64* %13, align 8
  %104 = icmp eq i64 %103, 4
  %105 = zext i1 %104 to i32
  %106 = call i32 @nn_assert(i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.pollfd*, %struct.pollfd** %14, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %108, i64 %110
  %112 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %111, i32 0, i32 0
  store i32 %107, i32* %112, align 4
  %113 = load i32, i32* @POLLIN, align 4
  %114 = load %struct.pollfd*, %struct.pollfd** %14, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %114, i64 %116
  %118 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %117, i32 0, i32 1
  store i32 %113, i32* %118, align 4
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %102, %74
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %23

125:                                              ; preds = %23
  %126 = load %struct.pollfd*, %struct.pollfd** %14, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @poll(%struct.pollfd* %126, i32 %127, i32 %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp sle i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = call i64 @nn_slow(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %125
  %136 = load i32, i32* @errno, align 4
  store i32 %136, i32* %12, align 4
  %137 = load %struct.pollfd*, %struct.pollfd** %14, align 8
  %138 = call i32 @nn_free(%struct.pollfd* %137)
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* @errno, align 4
  %140 = load i32, i32* %8, align 4
  store i32 %140, i32* %4, align 4
  br label %234

141:                                              ; preds = %125
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %227, %141
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %230

146:                                              ; preds = %142
  %147 = load %struct.nn_pollfd*, %struct.nn_pollfd** %5, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %147, i64 %149
  %151 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %150, i32 0, i32 1
  store i32 0, i32* %151, align 4
  %152 = load %struct.nn_pollfd*, %struct.nn_pollfd** %5, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %152, i64 %154
  %156 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @NN_POLLIN, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %183

161:                                              ; preds = %146
  %162 = load %struct.pollfd*, %struct.pollfd** %14, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %162, i64 %164
  %166 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @POLLIN, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %161
  %172 = load i32, i32* @NN_POLLIN, align 4
  %173 = load %struct.nn_pollfd*, %struct.nn_pollfd** %5, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %173, i64 %175
  %177 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %172
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %171, %161
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %183

183:                                              ; preds = %180, %146
  %184 = load %struct.nn_pollfd*, %struct.nn_pollfd** %5, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %184, i64 %186
  %188 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @NN_POLLOUT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %215

193:                                              ; preds = %183
  %194 = load %struct.pollfd*, %struct.pollfd** %14, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %194, i64 %196
  %198 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @POLLIN, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %193
  %204 = load i32, i32* @NN_POLLOUT, align 4
  %205 = load %struct.nn_pollfd*, %struct.nn_pollfd** %5, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %205, i64 %207
  %209 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %204
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %203, %193
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  br label %215

215:                                              ; preds = %212, %183
  %216 = load %struct.nn_pollfd*, %struct.nn_pollfd** %5, align 8
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %216, i64 %218
  %220 = getelementptr inbounds %struct.nn_pollfd, %struct.nn_pollfd* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %215
  %224 = load i32, i32* %12, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %12, align 4
  br label %226

226:                                              ; preds = %223, %215
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %9, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %9, align 4
  br label %142

230:                                              ; preds = %142
  %231 = load %struct.pollfd*, %struct.pollfd** %14, align 8
  %232 = call i32 @nn_free(%struct.pollfd* %231)
  %233 = load i32, i32* %12, align 4
  store i32 %233, i32* %4, align 4
  br label %234

234:                                              ; preds = %230, %135, %99, %52
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local %struct.pollfd* @nn_alloc(i32, i8*) #1

declare dso_local i32 @alloc_assert(%struct.pollfd*) #1

declare dso_local i32 @nn_getsockopt(i32, i32, i32, i32*, i64*) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_free(%struct.pollfd*) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
