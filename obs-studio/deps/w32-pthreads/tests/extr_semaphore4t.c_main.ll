; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_semaphore4t.c_main.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_semaphore4t.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_COUNT = common dso_local global i32 0, align 4
@s = common dso_local global i32 0, align 4
@PTHREAD_PROCESS_PRIVATE = common dso_local global i32 0, align 4
@thr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %6 = load i32, i32* @MAX_COUNT, align 4
  %7 = add nsw i32 %6, 1
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32, i32* @PTHREAD_PROCESS_PRIVATE, align 4
  %12 = call i64 @sem_init(i32* @s, i32 %11, i32 0)
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = call i64 @sem_getvalue(i32* @s, i32* %2)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  store i32 1, i32* %3, align 4
  br label %24

24:                                               ; preds = %55, %0
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @MAX_COUNT, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %10, i64 %30
  %32 = load i32, i32* @thr, align 4
  %33 = call i64 @pthread_create(i32* %31, i32* null, i32 %32, i32* null)
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  br label %37

37:                                               ; preds = %43, %28
  %38 = call i32 (...) @sched_yield()
  %39 = call i64 @sem_getvalue(i32* @s, i32* %2)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  br label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* %3, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %37, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %2, align 4
  %50 = sub nsw i32 0, %49
  %51 = load i32, i32* %3, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %24

58:                                               ; preds = %24
  %59 = call i64 @sem_getvalue(i32* @s, i32* %2)
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load i32, i32* %2, align 4
  %64 = sub nsw i32 0, %63
  %65 = load i32, i32* @MAX_COUNT, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = getelementptr inbounds i32, i32* %10, i64 50
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @pthread_cancel(i32 %70)
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = getelementptr inbounds i32, i32* %10, i64 50
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @pthread_join(i32 %76, i32* null)
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = call i64 @sem_getvalue(i32* @s, i32* %2)
  %82 = icmp eq i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load i32, i32* %2, align 4
  %86 = sub nsw i32 0, %85
  %87 = load i32, i32* @MAX_COUNT, align 4
  %88 = sub nsw i32 %87, 1
  %89 = icmp eq i32 %86, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load i32, i32* @MAX_COUNT, align 4
  %93 = sub nsw i32 %92, 2
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %112, %58
  %95 = load i32, i32* %3, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %94
  %98 = call i64 @sem_post(i32* @s)
  %99 = icmp eq i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  %102 = call i64 @sem_getvalue(i32* @s, i32* %2)
  %103 = icmp eq i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i32, i32* %2, align 4
  %107 = sub nsw i32 0, %106
  %108 = load i32, i32* %3, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  br label %112

112:                                              ; preds = %97
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %3, align 4
  br label %94

115:                                              ; preds = %94
  store i32 1, i32* %3, align 4
  br label %116

116:                                              ; preds = %133, %115
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @MAX_COUNT, align 4
  %119 = icmp sle i32 %117, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %116
  %121 = load i32, i32* %3, align 4
  %122 = icmp ne i32 %121, 50
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %10, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @pthread_join(i32 %127, i32* null)
  %129 = icmp eq i64 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  br label %132

132:                                              ; preds = %123, %120
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %3, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %3, align 4
  br label %116

136:                                              ; preds = %116
  store i32 0, i32* %1, align 4
  %137 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %1, align 4
  ret i32 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @sem_init(i32*, i32, i32) #2

declare dso_local i64 @sem_getvalue(i32*, i32*) #2

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #2

declare dso_local i32 @sched_yield(...) #2

declare dso_local i64 @pthread_cancel(i32) #2

declare dso_local i64 @pthread_join(i32, i32*) #2

declare dso_local i64 @sem_post(i32*) #2

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
