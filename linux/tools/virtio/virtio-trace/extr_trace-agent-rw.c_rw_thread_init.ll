; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/virtio-trace/extr_trace-agent-rw.c_rw_thread_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/virtio-trace/extr_trace-agent-rw.c_rw_thread_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rw_thread_info = type { i32, i32, i32, i32, i32, i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not open in_fd (CPU:%d)\0A\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not open out_fd (CPU:%d)\0A\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Could not create pipe in rw-thread(%d)\0A\00", align 1
@F_SETPIPE_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Could not change pipe size in rw-thread(%d)\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rw_thread_init(i32 %0, i8* %1, i8* %2, i32 %3, i64 %4, %struct.rw_thread_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.rw_thread_info*, align 8
  %13 = alloca [2 x i32], align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store %struct.rw_thread_info* %5, %struct.rw_thread_info** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.rw_thread_info*, %struct.rw_thread_info** %12, align 8
  %16 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i8* @open(i8* %17, i32 %18)
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.rw_thread_info*, %struct.rw_thread_info** %12, align 8
  %22 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rw_thread_info*, %struct.rw_thread_info** %12, align 8
  %24 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %82

30:                                               ; preds = %6
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %30
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* @O_WRONLY, align 4
  %36 = call i8* @open(i8* %34, i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.rw_thread_info*, %struct.rw_thread_info** %12, align 8
  %39 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.rw_thread_info*, %struct.rw_thread_info** %12, align 8
  %41 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %82

47:                                               ; preds = %33
  br label %52

48:                                               ; preds = %30
  %49 = load i32, i32* @STDOUT_FILENO, align 4
  %50 = load %struct.rw_thread_info*, %struct.rw_thread_info** %12, align 8
  %51 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %48, %47
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %54 = load i32, i32* @O_NONBLOCK, align 4
  %55 = call i64 @pipe2(i32* %53, i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %82

60:                                               ; preds = %52
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @F_SETPIPE_SZ, align 4
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @fcntl(i32 %62, i32 %63, i64 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %82

70:                                               ; preds = %60
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rw_thread_info*, %struct.rw_thread_info** %12, align 8
  %74 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.rw_thread_info*, %struct.rw_thread_info** %12, align 8
  %78 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.rw_thread_info*, %struct.rw_thread_info** %12, align 8
  %81 = getelementptr inbounds %struct.rw_thread_info, %struct.rw_thread_info* %80, i32 0, i32 5
  store i64 %79, i64* %81, align 8
  ret i8* null

82:                                               ; preds = %67, %57, %44, %27
  %83 = load i32, i32* @EXIT_FAILURE, align 4
  %84 = call i32 @exit(i32 %83) #3
  unreachable
}

declare dso_local i8* @open(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @pipe2(i32*, i32) #1

declare dso_local i64 @fcntl(i32, i32, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
