; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar7.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar7.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32*, i64 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32* }

@NUMTHREADS = common dso_local global i32 0, align 4
@cvthing = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@PTHREAD_COND_INITIALIZER = common dso_local global i32* null, align 8
@PTHREAD_MUTEX_INITIALIZER = common dso_local global i32* null, align 8
@start_flag = common dso_local global i32* null, align 8
@abstime = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@awoken = common dso_local global i32 0, align 4
@threadbag = common dso_local global %struct.TYPE_13__* null, align 8
@mythread = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Thread %d: started %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.TYPE_11__, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %12 = load i32, i32* @NUMTHREADS, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca %struct.TYPE_11__, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  store i32 1000000, i32* %7, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cvthing, i32 0, i32 2), align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i64 0
  %18 = call i32* (...) @pthread_self()
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i32* %18, i32** %19, align 8
  %20 = bitcast %struct.TYPE_11__* %17 to i8*
  %21 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = bitcast %struct.TYPE_11__* %8 to i8*
  %23 = bitcast %struct.TYPE_11__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 16 %23, i64 8, i1 false)
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cvthing, i32 0, i32 0), align 8
  %30 = load i32*, i32** @PTHREAD_COND_INITIALIZER, align 8
  %31 = icmp eq i32* %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cvthing, i32 0, i32 1), align 8
  %35 = load i32*, i32** @PTHREAD_MUTEX_INITIALIZER, align 8
  %36 = icmp eq i32* %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = call i64 @pthread_mutex_lock(i32** @start_flag)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = call i32 @PTW32_FTIME(%struct.TYPE_12__* %6)
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @abstime, i32 0, i32 1), align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 1000000, %47
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @abstime, i32 0, i32 0), align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @abstime, i32 0, i32 1), align 8
  %50 = add nsw i64 %49, 10
  store i64 %50, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @abstime, i32 0, i32 1), align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i64 0
  %52 = call i32* (...) @pthread_self()
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i32* %52, i32** %53, align 8
  %54 = bitcast %struct.TYPE_11__* %51 to i8*
  %55 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %54, i8* align 8 %55, i64 8, i1 false)
  %56 = bitcast %struct.TYPE_11__* %10 to i8*
  %57 = bitcast %struct.TYPE_11__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 16 %57, i64 8, i1 false)
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  store i32 0, i32* @awoken, align 4
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %92, %0
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @NUMTHREADS, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %95

67:                                               ; preds = %63
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** @threadbag, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** @threadbag, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 4
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i64 %80
  %82 = load i32, i32* @mythread, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** @threadbag, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i64 %85
  %87 = bitcast %struct.TYPE_13__* %86 to i8*
  %88 = call i64 @pthread_create(%struct.TYPE_11__* %81, i32* null, i32 %82, i8* %87)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  br label %92

92:                                               ; preds = %67
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %63

95:                                               ; preds = %63
  %96 = call i64 @pthread_mutex_unlock(i32** @start_flag)
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = call i32 @Sleep(i32 1000)
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i64 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i64 @pthread_cancel(i32* %103)
  %105 = icmp eq i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i64 1
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i64 @pthread_join(i32* %110, i32* null)
  %112 = icmp eq i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = call i64 @pthread_mutex_lock(i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cvthing, i32 0, i32 1))
  %116 = icmp eq i64 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cvthing, i32 0, i32 2), align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cvthing, i32 0, i32 2), align 8
  %121 = call i64 @pthread_mutex_unlock(i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cvthing, i32 0, i32 1))
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = call i64 @pthread_cond_broadcast(i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cvthing, i32 0, i32 0))
  %126 = icmp eq i64 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  store i32 2, i32* %3, align 4
  br label %129

129:                                              ; preds = %143, %95
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @NUMTHREADS, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = call i64 @pthread_join(i32* %138, i32* null)
  %140 = icmp eq i64 %139, 0
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  br label %143

143:                                              ; preds = %133
  %144 = load i32, i32* %3, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %3, align 4
  br label %129

146:                                              ; preds = %129
  %147 = call i64 @pthread_mutex_destroy(i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cvthing, i32 0, i32 1))
  %148 = icmp eq i64 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cvthing, i32 0, i32 1), align 8
  %152 = icmp eq i32* %151, null
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = call i64 @pthread_cond_destroy(i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cvthing, i32 0, i32 0))
  %156 = icmp eq i64 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cvthing, i32 0, i32 0), align 8
  %160 = icmp eq i32* %159, null
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  store i32 1, i32* %3, align 4
  br label %163

163:                                              ; preds = %190, %146
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* @NUMTHREADS, align 4
  %166 = icmp sle i32 %164, %165
  br i1 %166, label %167, label %193

167:                                              ; preds = %163
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** @threadbag, align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  store i32 %176, i32* %2, align 4
  %177 = load i32, i32* %2, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %167
  %180 = load i32, i32* @stderr, align 4
  %181 = load i32, i32* %3, align 4
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** @threadbag, align 8
  %183 = load i32, i32* %3, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @fprintf(i32 %180, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %181, i32 %187)
  br label %189

189:                                              ; preds = %179, %167
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %3, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %3, align 4
  br label %163

193:                                              ; preds = %163
  %194 = load i32, i32* %2, align 4
  %195 = icmp ne i32 %194, 0
  %196 = xor i1 %195, true
  %197 = zext i1 %196 to i32
  %198 = call i32 @assert(i32 %197)
  %199 = load i32, i32* @awoken, align 4
  %200 = load i32, i32* @NUMTHREADS, align 4
  %201 = sub nsw i32 %200, 1
  %202 = icmp eq i32 %199, %201
  %203 = zext i1 %202 to i32
  %204 = call i32 @assert(i32 %203)
  store i32 0, i32* %1, align 4
  %205 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %205)
  %206 = load i32, i32* %1, align 4
  ret i32 %206
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @pthread_self(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @pthread_mutex_lock(i32**) #2

declare dso_local i32 @PTW32_FTIME(%struct.TYPE_12__*) #2

declare !callback !2 dso_local i64 @pthread_create(%struct.TYPE_11__*, i32*, i32, i8*) #2

declare dso_local i64 @pthread_mutex_unlock(i32**) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i64 @pthread_cancel(i32*) #2

declare dso_local i64 @pthread_join(i32*, i32*) #2

declare dso_local i64 @pthread_cond_broadcast(i32**) #2

declare dso_local i64 @pthread_mutex_destroy(i32**) #2

declare dso_local i64 @pthread_cond_destroy(i32**) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
