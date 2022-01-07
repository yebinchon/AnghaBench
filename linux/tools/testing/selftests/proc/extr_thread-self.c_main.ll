; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_thread-self.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_thread-self.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_PAGESIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@CLONE_THREAD = common dso_local global i32 0, align 4
@CLONE_SIGHAND = common dso_local global i32 0, align 4
@CLONE_VM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @_SC_PAGESIZE, align 4
  %6 = call i32 @sysconf(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = call i32 @f(i8* null)
  %8 = load i32, i32* %2, align 4
  %9 = mul nsw i32 2, %8
  %10 = load i32, i32* @PROT_READ, align 4
  %11 = load i32, i32* @PROT_WRITE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MAP_PRIVATE, align 4
  %14 = load i32, i32* @MAP_ANONYMOUS, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @mmap(i32* null, i32 %9, i32 %12, i32 %15, i32 -1, i32 0)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = load i8*, i8** @MAP_FAILED, align 8
  %19 = icmp ne i8* %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %22, i64 %24
  %26 = load i32, i32* @CLONE_THREAD, align 4
  %27 = load i32, i32* @CLONE_SIGHAND, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CLONE_VM, align 4
  %30 = or i32 %28, %29
  %31 = call i64 @clone(i32 (i8*)* @f, i8* %25, i32 %30, i8* inttoptr (i64 1 to i8*))
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = icmp sgt i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = call i32 (...) @pause()
  ret i32 0
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i32 @f(i8*) #1

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @clone(i32 (i8*)*, i8*, i32, i8*) #1

declare dso_local i32 @pause(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
