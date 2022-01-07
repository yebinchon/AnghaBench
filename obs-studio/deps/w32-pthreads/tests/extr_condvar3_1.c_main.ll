; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar3_1.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_condvar3_1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8*, i8* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_10__ = type { i32, i64 }

@NUMTHREADS = common dso_local global i32 0, align 4
@cv = common dso_local global %struct.TYPE_11__* null, align 8
@cv1 = common dso_local global %struct.TYPE_11__* null, align 8
@mutex = common dso_local global i32 0, align 4
@mutex1 = common dso_local global i32 0, align 4
@abstime = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@mythread = common dso_local global i32 0, align 4
@waiting = common dso_local global i32 0, align 4
@signaled = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"awk = %d\0A\00", align 1
@awoken = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"sig = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"tot = %d\0A\00", align 1
@timedout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Result = %s\0A\00", align 1
@error_string = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"\09WaitersBlocked = %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"\09WaitersGone = %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"\09WaitersToUnblock = %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @NUMTHREADS, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  store i8* null, i8** %5, align 8
  store i32 1000000, i32* %7, align 4
  %14 = call i64 @pthread_cond_init(%struct.TYPE_11__** @cv, i32* null)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = call i64 @pthread_cond_init(%struct.TYPE_11__** @cv1, i32* null)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = call i64 @pthread_mutex_init(i32* @mutex, i32* null)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = call i64 @pthread_mutex_init(i32* @mutex1, i32* null)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = call i32 @PTW32_FTIME(%struct.TYPE_10__* %6)
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @abstime, i32 0, i32 0), align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 1000000, %34
  store i32 %35, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @abstime, i32 0, i32 1), align 8
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @abstime, i32 0, i32 0), align 8
  %37 = add nsw i64 %36, 5
  store i64 %37, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @abstime, i32 0, i32 0), align 8
  %38 = call i64 @pthread_mutex_lock(i32* @mutex1)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %58, %0
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* @NUMTHREADS, align 4
  %45 = icmp sle i32 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %42
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %13, i64 %48
  %50 = load i32, i32* @mythread, align 4
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i64 @pthread_create(i32* %49, i32* null, i32 %50, i8* %53)
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  br label %58

58:                                               ; preds = %46
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %42

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %67, %61
  %63 = call i64 @pthread_cond_wait(%struct.TYPE_11__** @cv1, i32* @mutex1)
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @NUMTHREADS, align 4
  %69 = load i32, i32* @waiting, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %62, label %71

71:                                               ; preds = %67
  %72 = call i64 @pthread_mutex_unlock(i32* @mutex1)
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32, i32* @NUMTHREADS, align 4
  %77 = sdiv i32 %76, 3
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %91, %71
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @NUMTHREADS, align 4
  %81 = mul nsw i32 2, %80
  %82 = sdiv i32 %81, 3
  %83 = icmp sle i32 %79, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = call i64 @pthread_cond_signal(%struct.TYPE_11__** @cv)
  %86 = icmp eq i64 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i32, i32* @signaled, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @signaled, align 4
  br label %91

91:                                               ; preds = %84
  %92 = load i32, i32* %2, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %2, align 4
  br label %78

94:                                               ; preds = %78
  store i32 1, i32* %2, align 4
  br label %95

95:                                               ; preds = %115, %94
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* @NUMTHREADS, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %118

99:                                               ; preds = %95
  %100 = load i32, i32* %2, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %13, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @pthread_join(i32 %103, i8** %5)
  %105 = icmp eq i64 %104, 0
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  %108 = load i8*, i8** %5, align 8
  %109 = ptrtoint i8* %108 to i64
  %110 = trunc i64 %109 to i32
  %111 = load i32, i32* %2, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  br label %115

115:                                              ; preds = %99
  %116 = load i32, i32* %2, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %2, align 4
  br label %95

118:                                              ; preds = %95
  %119 = load i32, i32* @stderr, align 4
  %120 = load i32, i32* @awoken, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @stderr, align 4
  %123 = load i32, i32* @signaled, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @stderr, align 4
  %126 = load i32, i32* @timedout, align 4
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @signaled, align 4
  %129 = load i32, i32* @awoken, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load i32, i32* @timedout, align 4
  %134 = load i32, i32* @NUMTHREADS, align 4
  %135 = load i32, i32* @signaled, align 4
  %136 = sub nsw i32 %134, %135
  %137 = icmp eq i32 %133, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = call i32 @pthread_cond_destroy(%struct.TYPE_11__** @cv1)
  %141 = icmp eq i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = call i32 @pthread_cond_destroy(%struct.TYPE_11__** @cv)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %172

147:                                              ; preds = %118
  %148 = load i32, i32* @stderr, align 4
  %149 = load i8**, i8*** @error_string, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %148, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %153)
  %155 = load i32, i32* @stderr, align 4
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cv, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 (i32, i8*, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %158)
  %160 = load i32, i32* @stderr, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cv, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 (i32, i8*, ...) @fprintf(i32 %160, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %163)
  %165 = load i32, i32* @stderr, align 4
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cv, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %168)
  %170 = load i32, i32* @stderr, align 4
  %171 = call i32 @fflush(i32 %170)
  br label %172

172:                                              ; preds = %147, %118
  %173 = load i32, i32* %8, align 4
  %174 = icmp eq i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  %177 = call i64 @pthread_mutex_destroy(i32* @mutex1)
  %178 = icmp eq i64 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = call i64 @pthread_mutex_destroy(i32* @mutex)
  %182 = icmp eq i64 %181, 0
  %183 = zext i1 %182 to i32
  %184 = call i32 @assert(i32 %183)
  store i32 0, i32* %1, align 4
  %185 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %185)
  %186 = load i32, i32* %1, align 4
  ret i32 %186
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @pthread_cond_init(%struct.TYPE_11__**, i32*) #2

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #2

declare dso_local i32 @PTW32_FTIME(%struct.TYPE_10__*) #2

declare dso_local i64 @pthread_mutex_lock(i32*) #2

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #2

declare dso_local i64 @pthread_cond_wait(%struct.TYPE_11__**, i32*) #2

declare dso_local i64 @pthread_mutex_unlock(i32*) #2

declare dso_local i64 @pthread_cond_signal(%struct.TYPE_11__**) #2

declare dso_local i64 @pthread_join(i32, i8**) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @pthread_cond_destroy(%struct.TYPE_11__**) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i64 @pthread_mutex_destroy(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
