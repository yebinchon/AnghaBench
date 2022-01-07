; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_getnetconfig.c___nc_error.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtirpc/src/extr_getnetconfig.c___nc_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__nc_error.nc_error = internal global i32 0, align 4
@nc_key = external dso_local global i32, align 4
@nc_lock = external dso_local global i32, align 4
@TLS_OUT_OF_INDEXES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @__nc_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @__nc_error() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @nc_key, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %19

6:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  %7 = call i32 @mutex_lock(i32* @nc_lock)
  %8 = load i32, i32* @nc_key, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 (...) @TlsAlloc()
  store i32 %11, i32* @nc_key, align 4
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %10, %6
  %13 = call i32 @mutex_unlock(i32* @nc_lock)
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @TLS_OUT_OF_INDEXES, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32* @__nc_error.nc_error, i32** %1, align 8
  br label %43

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %0
  %20 = load i32, i32* @nc_key, align 4
  %21 = call i64 @thr_getspecific(i32 %20)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %3, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  %25 = call i64 @malloc(i32 8)
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %3, align 8
  %27 = load i32, i32* @nc_key, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = bitcast i32* %28 to i8*
  %30 = call i64 @thr_setspecific(i32 %27, i8* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load i32*, i32** %3, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @free(i32* %36)
  br label %38

38:                                               ; preds = %35, %32
  store i32* @__nc_error.nc_error, i32** %1, align 8
  br label %43

39:                                               ; preds = %24
  %40 = load i32*, i32** %3, align 8
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %19
  %42 = load i32*, i32** %3, align 8
  store i32* %42, i32** %1, align 8
  br label %43

43:                                               ; preds = %41, %38, %17
  %44 = load i32*, i32** %1, align 8
  ret i32* %44
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @TlsAlloc(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @thr_getspecific(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @thr_setspecific(i32, i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
