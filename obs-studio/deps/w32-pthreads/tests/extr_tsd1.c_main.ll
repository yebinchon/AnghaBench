; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_tsd1.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_tsd1.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_THREADS = common dso_local global i32 0, align 4
@startBarrier = common dso_local global i32 0, align 4
@thread_destroyed = common dso_local global i32* null, align 8
@thread_set = common dso_local global i32* null, align 8
@accesscount = common dso_local global i32* null, align 8
@mythread = common dso_local global i32 0, align 4
@key = common dso_local global i32 0, align 4
@destroy_key = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Thread %d key, set = %d, destroyed = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @NUM_THREADS, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load i32, i32* @NUM_THREADS, align 4
  %11 = sdiv i32 %10, 2
  %12 = call i64 @pthread_barrier_init(i32* @startBarrier, i32* null, i32 %11)
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  store i32 1, i32* %2, align 4
  br label %16

16:                                               ; preds = %47, %0
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @NUM_THREADS, align 4
  %19 = sdiv i32 %18, 2
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %16
  %22 = load i32*, i32** @thread_destroyed, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** @thread_set, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 0, i32* %29, align 4
  %30 = load i32*, i32** @accesscount, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %9, i64 %35
  %37 = load i32, i32* @mythread, align 4
  %38 = load i32*, i32** @accesscount, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = bitcast i32* %41 to i8*
  %43 = call i64 @pthread_create(i32* %36, i32* null, i32 %37, i8* %42)
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  br label %47

47:                                               ; preds = %21
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %16

50:                                               ; preds = %16
  %51 = load i32, i32* @destroy_key, align 4
  %52 = call i64 @pthread_key_create(i32* @key, i32 %51)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = call i32 @pthread_barrier_wait(i32* @startBarrier)
  %57 = load i32*, i32** @accesscount, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 0, i32* %58, align 4
  %59 = load i32*, i32** @accesscount, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = bitcast i32* %60 to i8*
  %62 = call i32 @setkey(i8* %61)
  %63 = load i32, i32* @NUM_THREADS, align 4
  %64 = sdiv i32 %63, 2
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %95, %50
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @NUM_THREADS, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %98

69:                                               ; preds = %65
  %70 = load i32*, i32** @thread_destroyed, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 0, i32* %73, align 4
  %74 = load i32*, i32** @thread_set, align 8
  %75 = load i32, i32* %2, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 0, i32* %77, align 4
  %78 = load i32*, i32** @accesscount, align 8
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %9, i64 %83
  %85 = load i32, i32* @mythread, align 4
  %86 = load i32*, i32** @accesscount, align 8
  %87 = load i32, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = bitcast i32* %89 to i8*
  %91 = call i64 @pthread_create(i32* %84, i32* null, i32 %85, i8* %90)
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  br label %95

95:                                               ; preds = %69
  %96 = load i32, i32* %2, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %2, align 4
  br label %65

98:                                               ; preds = %65
  store i32 1, i32* %2, align 4
  br label %99

99:                                               ; preds = %112, %98
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @NUM_THREADS, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %9, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @pthread_join(i32 %107, i32* null)
  %109 = icmp eq i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  br label %112

112:                                              ; preds = %103
  %113 = load i32, i32* %2, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %2, align 4
  br label %99

115:                                              ; preds = %99
  %116 = load i32, i32* @key, align 4
  %117 = call i64 @pthread_key_delete(i32 %116)
  %118 = icmp eq i64 %117, 0
  %119 = zext i1 %118 to i32
  %120 = call i32 @assert(i32 %119)
  %121 = call i64 @pthread_barrier_destroy(i32* @startBarrier)
  %122 = icmp eq i64 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  store i32 1, i32* %2, align 4
  br label %125

125:                                              ; preds = %153, %115
  %126 = load i32, i32* %2, align 4
  %127 = load i32, i32* @NUM_THREADS, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %156

129:                                              ; preds = %125
  %130 = load i32*, i32** @accesscount, align 8
  %131 = load i32, i32* %2, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 2
  br i1 %135, label %136, label %152

136:                                              ; preds = %129
  %137 = load i32, i32* %3, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %3, align 4
  %139 = load i32, i32* @stderr, align 4
  %140 = load i32, i32* %2, align 4
  %141 = load i32*, i32** @thread_set, align 8
  %142 = load i32, i32* %2, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** @thread_destroyed, align 8
  %147 = load i32, i32* %2, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @fprintf(i32 %139, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %140, i32 %145, i32 %150)
  br label %152

152:                                              ; preds = %136, %129
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %2, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %2, align 4
  br label %125

156:                                              ; preds = %125
  %157 = load i32, i32* @stderr, align 4
  %158 = call i32 @fflush(i32 %157)
  %159 = load i32, i32* %3, align 4
  store i32 %159, i32* %1, align 4
  %160 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i32, i32* %1, align 4
  ret i32 %161
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @pthread_barrier_init(i32*, i32*, i32) #2

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #2

declare dso_local i64 @pthread_key_create(i32*, i32) #2

declare dso_local i32 @pthread_barrier_wait(i32*) #2

declare dso_local i32 @setkey(i8*) #2

declare dso_local i64 @pthread_join(i32, i32*) #2

declare dso_local i64 @pthread_key_delete(i32) #2

declare dso_local i64 @pthread_barrier_destroy(i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @fflush(i32) #2

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
