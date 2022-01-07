; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar6.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar6.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32*, i64 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32* }

@NUMTHREADS = common dso_local global i32 0, align 4
@cvthing = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@PTHREAD_COND_INITIALIZER = common dso_local global i32* null, align 8
@PTHREAD_MUTEX_INITIALIZER = common dso_local global i32* null, align 8
@start_flag = common dso_local global i32* null, align 8
@abstime = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@awoken = common dso_local global i32 0, align 4
@threadbag = common dso_local global %struct.TYPE_12__* null, align 8
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
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %12 = load i32, i32* @NUMTHREADS, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca %struct.TYPE_10__, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  store i32 1000000, i32* %7, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 2), align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i64 0
  %18 = call i32* (...) @pthread_self()
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i32* %18, i32** %19, align 8
  %20 = bitcast %struct.TYPE_10__* %17 to i8*
  %21 = bitcast %struct.TYPE_10__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = bitcast %struct.TYPE_10__* %8 to i8*
  %23 = bitcast %struct.TYPE_10__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 16 %23, i64 8, i1 false)
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 0), align 8
  %30 = load i32*, i32** @PTHREAD_COND_INITIALIZER, align 8
  %31 = icmp eq i32* %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 1), align 8
  %35 = load i32*, i32** @PTHREAD_MUTEX_INITIALIZER, align 8
  %36 = icmp eq i32* %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = call i64 @pthread_mutex_lock(i32** @start_flag)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = call i32 @PTW32_FTIME(%struct.TYPE_11__* %6)
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @abstime, i32 0, i32 0), align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 1000000, %47
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @abstime, i32 0, i32 1), align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @abstime, i32 0, i32 0), align 8
  %50 = add nsw i64 %49, 5
  store i64 %50, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @abstime, i32 0, i32 0), align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i64 0
  %52 = call i32* (...) @pthread_self()
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32* %52, i32** %53, align 8
  %54 = bitcast %struct.TYPE_10__* %51 to i8*
  %55 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %54, i8* align 8 %55, i64 8, i1 false)
  %56 = bitcast %struct.TYPE_10__* %10 to i8*
  %57 = bitcast %struct.TYPE_10__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 16 %57, i64 8, i1 false)
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
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
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** @threadbag, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** @threadbag, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 4
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i64 %80
  %82 = load i32, i32* @mythread, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @threadbag, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i64 %85
  %87 = bitcast %struct.TYPE_12__* %86 to i8*
  %88 = call i64 @pthread_create(%struct.TYPE_10__* %81, i32* null, i32 %82, i8* %87)
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
  %101 = call i64 @pthread_mutex_lock(i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 1))
  %102 = icmp eq i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 2), align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 2), align 8
  %107 = call i64 @pthread_mutex_unlock(i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 1))
  %108 = icmp eq i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = call i64 @pthread_cond_broadcast(i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 0))
  %112 = icmp eq i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  store i32 1, i32* %3, align 4
  br label %115

115:                                              ; preds = %129, %95
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @NUMTHREADS, align 4
  %118 = icmp sle i32 %116, %117
  br i1 %118, label %119, label %132

119:                                              ; preds = %115
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i64 @pthread_join(i32* %124, i32* null)
  %126 = icmp eq i64 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  br label %129

129:                                              ; preds = %119
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %3, align 4
  br label %115

132:                                              ; preds = %115
  %133 = call i64 @pthread_mutex_destroy(i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 1))
  %134 = icmp eq i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 1), align 8
  %138 = icmp eq i32* %137, null
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = call i64 @pthread_cond_destroy(i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 0))
  %142 = icmp eq i64 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 0), align 8
  %146 = icmp eq i32* %145, null
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  store i32 1, i32* %3, align 4
  br label %149

149:                                              ; preds = %176, %132
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* @NUMTHREADS, align 4
  %152 = icmp sle i32 %150, %151
  br i1 %152, label %153, label %179

153:                                              ; preds = %149
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** @threadbag, align 8
  %155 = load i32, i32* %3, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  %162 = zext i1 %161 to i32
  store i32 %162, i32* %2, align 4
  %163 = load i32, i32* %2, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %153
  %166 = load i32, i32* @stderr, align 4
  %167 = load i32, i32* %3, align 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** @threadbag, align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @fprintf(i32 %166, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %167, i32 %173)
  br label %175

175:                                              ; preds = %165, %153
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %3, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %3, align 4
  br label %149

179:                                              ; preds = %149
  %180 = load i32, i32* %2, align 4
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  %184 = call i32 @assert(i32 %183)
  %185 = load i32, i32* @awoken, align 4
  %186 = load i32, i32* @NUMTHREADS, align 4
  %187 = icmp eq i32 %185, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 @assert(i32 %188)
  store i32 0, i32* %1, align 4
  %190 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %190)
  %191 = load i32, i32* %1, align 4
  ret i32 %191
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @pthread_self(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @pthread_mutex_lock(i32**) #2

declare dso_local i32 @PTW32_FTIME(%struct.TYPE_11__*) #2

declare !callback !2 dso_local i64 @pthread_create(%struct.TYPE_10__*, i32*, i32, i8*) #2

declare dso_local i64 @pthread_mutex_unlock(i32**) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i64 @pthread_cond_broadcast(i32**) #2

declare dso_local i64 @pthread_join(i32*, i32*) #2

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
