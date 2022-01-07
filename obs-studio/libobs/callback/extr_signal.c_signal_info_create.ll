; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_signal.c_signal_info_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_signal.c_signal_info_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signal_info = type { i32, %struct.decl_info, i32, i32, i32* }
%struct.decl_info = type { i32 }

@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Could not create signal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.signal_info* (%struct.decl_info*)* @signal_info_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.signal_info* @signal_info_create(%struct.decl_info* %0) #0 {
  %2 = alloca %struct.signal_info*, align 8
  %3 = alloca %struct.decl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.signal_info*, align 8
  store %struct.decl_info* %0, %struct.decl_info** %3, align 8
  %6 = call i64 @pthread_mutexattr_init(i32* %4)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.signal_info* null, %struct.signal_info** %2, align 8
  br label %43

9:                                                ; preds = %1
  %10 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %11 = call i64 @pthread_mutexattr_settype(i32* %4, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store %struct.signal_info* null, %struct.signal_info** %2, align 8
  br label %43

14:                                               ; preds = %9
  %15 = call %struct.signal_info* @bmalloc(i32 24)
  store %struct.signal_info* %15, %struct.signal_info** %5, align 8
  %16 = load %struct.signal_info*, %struct.signal_info** %5, align 8
  %17 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %16, i32 0, i32 1
  %18 = load %struct.decl_info*, %struct.decl_info** %3, align 8
  %19 = bitcast %struct.decl_info* %17 to i8*
  %20 = bitcast %struct.decl_info* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load %struct.signal_info*, %struct.signal_info** %5, align 8
  %22 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %21, i32 0, i32 4
  store i32* null, i32** %22, align 8
  %23 = load %struct.signal_info*, %struct.signal_info** %5, align 8
  %24 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.signal_info*, %struct.signal_info** %5, align 8
  %26 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @da_init(i32 %27)
  %29 = load %struct.signal_info*, %struct.signal_info** %5, align 8
  %30 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %29, i32 0, i32 2
  %31 = call i64 @pthread_mutex_init(i32* %30, i32* %4)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %14
  %34 = load i32, i32* @LOG_ERROR, align 4
  %35 = call i32 @blog(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.signal_info*, %struct.signal_info** %5, align 8
  %37 = getelementptr inbounds %struct.signal_info, %struct.signal_info* %36, i32 0, i32 1
  %38 = call i32 @decl_info_free(%struct.decl_info* %37)
  %39 = load %struct.signal_info*, %struct.signal_info** %5, align 8
  %40 = call i32 @bfree(%struct.signal_info* %39)
  store %struct.signal_info* null, %struct.signal_info** %2, align 8
  br label %43

41:                                               ; preds = %14
  %42 = load %struct.signal_info*, %struct.signal_info** %5, align 8
  store %struct.signal_info* %42, %struct.signal_info** %2, align 8
  br label %43

43:                                               ; preds = %41, %33, %13, %8
  %44 = load %struct.signal_info*, %struct.signal_info** %2, align 8
  ret %struct.signal_info* %44
}

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i64 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local %struct.signal_info* @bmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @da_init(i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @decl_info_free(%struct.decl_info*) #1

declare dso_local i32 @bfree(%struct.signal_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
