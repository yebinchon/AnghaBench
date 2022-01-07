; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/threads/extr_threads.c_thread_set_name.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/threads/extr_threads.c_thread_set_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [49 x i8] c"cannot set pthread name of %d to %s. ErrCode: %d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"set name of thread %d to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @thread_set_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_set_name(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [16 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @strncpyz(i8* %10, i64 %13, i32 15)
  %15 = call i32 (...) @pthread_self()
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %19 = call i32 (i8*, ...) @pthread_setname_np(i8* %17, i8* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %9
  %23 = call i32 (...) @gettid()
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24, i32 %25)
  br label %31

27:                                               ; preds = %9
  %28 = call i32 (...) @gettid()
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %30 = call i32 @info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* %29)
  br label %31

31:                                               ; preds = %27, %22
  br label %32

32:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @strncpyz(i8*, i64, i32) #1

declare dso_local i32 @pthread_setname_np(i8*, ...) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @error(i8*, i32, i8*, i32) #1

declare dso_local i32 @gettid(...) #1

declare dso_local i32 @info(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
