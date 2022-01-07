; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar8.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar8.c_main.c"
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
@abstime = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@awoken = common dso_local global i32 0, align 4
@start_flag = common dso_local global i32* null, align 8
@threadbag = common dso_local global %struct.TYPE_12__* null, align 8
@mythread = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Thread %d: started %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %14 = load i32, i32* @NUMTHREADS, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca %struct.TYPE_10__, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  store i32 1000000, i32* %9, align 4
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i64 0
  %20 = call i32* (...) @pthread_self()
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32* %20, i32** %21, align 8
  %22 = bitcast %struct.TYPE_10__* %19 to i8*
  %23 = bitcast %struct.TYPE_10__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 8 %23, i64 8, i1 false)
  %24 = bitcast %struct.TYPE_10__* %10 to i8*
  %25 = bitcast %struct.TYPE_10__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 16 %25, i64 8, i1 false)
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 0), align 8
  %32 = load i32*, i32** @PTHREAD_COND_INITIALIZER, align 8
  %33 = icmp eq i32* %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 1), align 8
  %37 = load i32*, i32** @PTHREAD_MUTEX_INITIALIZER, align 8
  %38 = icmp eq i32* %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = call i32 @PTW32_FTIME(%struct.TYPE_11__* %8)
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @abstime, i32 0, i32 0), align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 1000000, %45
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @abstime, i32 0, i32 1), align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @abstime, i32 0, i32 0), align 8
  %48 = add nsw i64 %47, 10
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @abstime, i32 0, i32 0), align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i64 0
  %50 = call i32* (...) @pthread_self()
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32* %50, i32** %51, align 8
  %52 = bitcast %struct.TYPE_10__* %49 to i8*
  %53 = bitcast %struct.TYPE_10__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %52, i8* align 8 %53, i64 8, i1 false)
  %54 = bitcast %struct.TYPE_10__* %12 to i8*
  %55 = bitcast %struct.TYPE_10__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 16 %55, i64 8, i1 false)
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  store i32 0, i32* @awoken, align 4
  store i32 1, i32* %4, align 4
  %61 = load i32, i32* @NUMTHREADS, align 4
  %62 = sdiv i32 %61, 2
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %150, %0
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @NUMTHREADS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %154

67:                                               ; preds = %63
  %68 = call i64 @pthread_mutex_lock(i32** @start_flag)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %102, %67
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %105

77:                                               ; preds = %73
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** @threadbag, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** @threadbag, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  store i32 %83, i32* %88, align 4
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i64 %90
  %92 = load i32, i32* @mythread, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** @threadbag, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i64 %95
  %97 = bitcast %struct.TYPE_12__* %96 to i8*
  %98 = call i64 @pthread_create(%struct.TYPE_10__* %91, i32* null, i32 %92, i8* %97)
  %99 = icmp eq i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  br label %102

102:                                              ; preds = %77
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %73

105:                                              ; preds = %73
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 2), align 8
  %106 = call i64 @pthread_mutex_unlock(i32** @start_flag)
  %107 = icmp eq i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = call i32 @Sleep(i32 100)
  %111 = call i64 @pthread_mutex_lock(i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 1))
  %112 = icmp eq i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 2), align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 2), align 8
  %117 = call i64 @pthread_mutex_unlock(i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 1))
  %118 = icmp eq i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = call i64 @pthread_cond_broadcast(i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 0))
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %140, %105
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp sle i32 %127, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %126
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = call i64 @pthread_join(i32* %135, i32* null)
  %137 = icmp eq i64 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  br label %140

140:                                              ; preds = %130
  %141 = load i32, i32* %3, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %3, align 4
  br label %126

143:                                              ; preds = %126
  %144 = load i32, i32* @awoken, align 4
  %145 = load i32, i32* %3, align 4
  %146 = sub nsw i32 %145, 1
  %147 = icmp eq i32 %144, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @assert(i32 %148)
  br label %150

150:                                              ; preds = %143
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* @NUMTHREADS, align 4
  store i32 %153, i32* %5, align 4
  br label %63

154:                                              ; preds = %63
  store i32 1, i32* %3, align 4
  br label %155

155:                                              ; preds = %182, %154
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @NUMTHREADS, align 4
  %158 = icmp sle i32 %156, %157
  br i1 %158, label %159, label %185

159:                                              ; preds = %155
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** @threadbag, align 8
  %161 = load i32, i32* %3, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  store i32 %168, i32* %2, align 4
  %169 = load i32, i32* %2, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %159
  %172 = load i32, i32* @stderr, align 4
  %173 = load i32, i32* %3, align 4
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** @threadbag, align 8
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @fprintf(i32 %172, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %173, i32 %179)
  br label %181

181:                                              ; preds = %171, %159
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %3, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %3, align 4
  br label %155

185:                                              ; preds = %155
  %186 = call i64 @pthread_mutex_destroy(i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 1))
  %187 = icmp eq i64 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @assert(i32 %188)
  %190 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 1), align 8
  %191 = icmp eq i32* %190, null
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  %194 = call i64 @pthread_cond_destroy(i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 0))
  %195 = icmp eq i64 %194, 0
  %196 = zext i1 %195 to i32
  %197 = call i32 @assert(i32 %196)
  %198 = load i32*, i32** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cvthing, i32 0, i32 0), align 8
  %199 = icmp eq i32* %198, null
  %200 = zext i1 %199 to i32
  %201 = call i32 @assert(i32 %200)
  %202 = load i32, i32* %2, align 4
  %203 = icmp ne i32 %202, 0
  %204 = xor i1 %203, true
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  %207 = load i32, i32* @awoken, align 4
  %208 = load i32, i32* @NUMTHREADS, align 4
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @assert(i32 %210)
  store i32 0, i32* %1, align 4
  %212 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load i32, i32* %1, align 4
  ret i32 %213
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32* @pthread_self(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @PTW32_FTIME(%struct.TYPE_11__*) #2

declare dso_local i64 @pthread_mutex_lock(i32**) #2

declare !callback !2 dso_local i64 @pthread_create(%struct.TYPE_10__*, i32*, i32, i8*) #2

declare dso_local i64 @pthread_mutex_unlock(i32**) #2

declare dso_local i32 @Sleep(i32) #2

declare dso_local i64 @pthread_cond_broadcast(i32**) #2

declare dso_local i64 @pthread_join(i32*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #2

declare dso_local i64 @pthread_mutex_destroy(i32**) #2

declare dso_local i64 @pthread_cond_destroy(i32**) #2

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
