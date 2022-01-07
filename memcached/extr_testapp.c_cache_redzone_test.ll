; ModuleID = '/home/carl/AnghaBench/memcached/extr_testapp.c_cache_redzone_test.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_testapp.c_cache_redzone_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"test\00", align 1
@SIG_IGN = common dso_local global i32 0, align 4
@SIGABRT = common dso_local global i32 0, align 4
@cache_error = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4
@TEST_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cache_redzone_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_redzone_test() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.sigaction, align 4
  %3 = alloca %struct.sigaction, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = call i32* @cache_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4, i32 8, i32* null, i32* null)
  store i32* %6, i32** %1, align 8
  %7 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  %10 = load i32, i32* @SIG_IGN, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  %12 = call i32 @sigemptyset(i32* %11)
  %13 = load i32, i32* @SIGABRT, align 4
  %14 = call i32 @sigaction(i32 %13, %struct.sigaction* %3, %struct.sigaction* %2)
  %15 = load i32*, i32** %1, align 8
  %16 = call i8* @cache_alloc(i32* %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 -1
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %5, align 1
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 -1
  store i8 0, i8* %21, align 1
  %22 = load i32*, i32** %1, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @cache_free(i32* %22, i8* %23)
  %25 = load i32, i32* @cache_error, align 4
  %26 = icmp eq i32 %25, -1
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i8, i8* %5, align 1
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 -1
  store i8 %29, i8* %31, align 1
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  store i8 0, i8* %33, align 1
  %34 = load i32*, i32** %1, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @cache_free(i32* %34, i8* %35)
  %37 = load i32, i32* @cache_error, align 4
  %38 = icmp eq i32 %37, 1
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* @SIGABRT, align 4
  %42 = call i32 @sigaction(i32 %41, %struct.sigaction* %2, %struct.sigaction* null)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @cache_destroy(i32* %43)
  %45 = load i32, i32* @TEST_PASS, align 4
  ret i32 %45
}

declare dso_local i32* @cache_create(i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i8* @cache_alloc(i32*) #1

declare dso_local i32 @cache_free(i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cache_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
