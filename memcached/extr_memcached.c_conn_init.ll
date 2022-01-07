; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_conn_init.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_conn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.rlimit = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Failed to duplicate file descriptor\0A\00", align 1
@settings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@max_fds = common dso_local global i32 0, align 4
@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Failed to query maximum file descriptor; falling back to maxconns\0A\00", align 1
@conns = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to allocate connection structures\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @conn_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conn_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.rlimit, align 4
  %4 = call i32 @dup(i32 1)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = call i32 @perror(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @exit(i32 1) #3
  unreachable

10:                                               ; preds = %0
  store i32 10, i32* %2, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @settings, i32 0, i32 0), align 4
  %12 = load i32, i32* %2, align 4
  %13 = add nsw i32 %11, %12
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* @max_fds, align 4
  %16 = load i32, i32* @RLIMIT_NOFILE, align 4
  %17 = call i64 @getrlimit(i32 %16, %struct.rlimit* %3)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @max_fds, align 4
  br label %25

22:                                               ; preds = %10
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @close(i32 %26)
  %28 = load i32, i32* @max_fds, align 4
  %29 = call i32* @calloc(i32 %28, i32 8)
  store i32* %29, i32** @conns, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 @exit(i32 1) #3
  unreachable

35:                                               ; preds = %25
  ret void
}

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
