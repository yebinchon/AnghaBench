; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_allocator_thread.c_at_init.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_allocator_thread.c_at_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROT_WRITE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@internal_ips_lock = common dso_local global i8* null, align 8
@internal_ips = common dso_local global i8* null, align 8
@req_pipefd = common dso_local global i32 0, align 4
@resp_pipefd = common dso_local global i32 0, align 4
@PTHREAD_STACK_MIN = common dso_local global i32 0, align 4
@allocator_thread = common dso_local global i32 0, align 4
@threadfunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @at_init() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @PFUNC()
  %4 = load i32, i32* @PROT_WRITE, align 4
  %5 = load i32, i32* @PROT_READ, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @MAP_ANON, align 4
  %8 = load i32, i32* @MAP_SHARED, align 4
  %9 = or i32 %7, %8
  %10 = call i8* @mmap(i32 0, i32 4096, i32 %6, i32 %9, i32 -1, i32 0)
  store i8* %10, i8** %1, align 8
  %11 = load i8*, i8** %1, align 8
  %12 = call i32 @assert(i8* %11)
  %13 = load i8*, i8** %1, align 8
  store i8* %13, i8** @internal_ips_lock, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 2048
  store i8* %15, i8** @internal_ips, align 8
  %16 = load i8*, i8** @internal_ips_lock, align 8
  %17 = call i32 @MUTEX_INIT(i8* %16)
  %18 = load i8*, i8** @internal_ips, align 8
  %19 = call i32 @memset(i8* %18, i32 0, i32 1)
  %20 = load i32, i32* @req_pipefd, align 4
  %21 = call i32 @initpipe(i32 %20)
  %22 = load i32, i32* @resp_pipefd, align 4
  %23 = call i32 @initpipe(i32 %22)
  %24 = call i32 @pthread_attr_init(i32* %2)
  %25 = load i32, i32* @PTHREAD_STACK_MIN, align 4
  %26 = call i32 @MAX(i32 16384, i32 %25)
  %27 = call i32 @pthread_attr_setstacksize(i32* %2, i32 %26)
  %28 = load i32, i32* @threadfunc, align 4
  %29 = call i32 @pthread_create(i32* @allocator_thread, i32* %2, i32 %28, i32 0)
  %30 = call i32 @pthread_attr_destroy(i32* %2)
  ret void
}

declare dso_local i32 @PFUNC(...) #1

declare dso_local i8* @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @MUTEX_INIT(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @initpipe(i32) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setstacksize(i32*, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
