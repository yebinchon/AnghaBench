; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_process_stats_detail.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_process_stats_detail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@settings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"CLIENT_ERROR usage: stats detail on|off|dump\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @process_stats_detail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_stats_detail(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @settings, i32 0, i32 0), align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @out_string(i32* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %39

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @settings, i32 0, i32 0), align 4
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @out_string(i32* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %38

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = call i8* @stats_prefix_dump(i32* %5)
  store i8* %29, i8** %6, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @write_and_free(i32* %30, i8* %31, i32 %32)
  br label %37

34:                                               ; preds = %24
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @out_string(i32* %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %28
  br label %38

38:                                               ; preds = %37, %21
  br label %39

39:                                               ; preds = %38, %14
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @out_string(i32*, i8*) #1

declare dso_local i8* @stats_prefix_dump(i32*) #1

declare dso_local i32 @write_and_free(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
