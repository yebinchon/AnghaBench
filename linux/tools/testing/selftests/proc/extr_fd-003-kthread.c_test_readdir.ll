; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_fd-003-kthread.c_test_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_fd-003-kthread.c_test_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DT_DIR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_readdir(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dirent*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32* @fdopendir(i32 %5)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = ptrtoint i32* %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.dirent* @xreaddir(i32* %10)
  store %struct.dirent* %11, %struct.dirent** %4, align 8
  %12 = load %struct.dirent*, %struct.dirent** %4, align 8
  %13 = getelementptr inbounds %struct.dirent, %struct.dirent* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @streq(i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.dirent*, %struct.dirent** %4, align 8
  %18 = getelementptr inbounds %struct.dirent, %struct.dirent* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DT_DIR, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call %struct.dirent* @xreaddir(i32* %24)
  store %struct.dirent* %25, %struct.dirent** %4, align 8
  %26 = load %struct.dirent*, %struct.dirent** %4, align 8
  %27 = getelementptr inbounds %struct.dirent, %struct.dirent* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @streq(i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.dirent*, %struct.dirent** %4, align 8
  %32 = getelementptr inbounds %struct.dirent, %struct.dirent* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DT_DIR, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32*, i32** %3, align 8
  %39 = call %struct.dirent* @xreaddir(i32* %38)
  store %struct.dirent* %39, %struct.dirent** %4, align 8
  %40 = load %struct.dirent*, %struct.dirent** %4, align 8
  %41 = icmp ne %struct.dirent* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  ret void
}

declare dso_local i32* @fdopendir(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.dirent* @xreaddir(i32*) #1

declare dso_local i32 @streq(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
