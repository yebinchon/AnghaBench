; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_tsd2.c_destroy_key.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_tsd2.c_destroy_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@key = common dso_local global i32 0, align 4
@thread_destroyed = common dso_local global i32* null, align 8
@accesscount = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @destroy_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_key(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to i32*
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @key, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @pthread_setspecific(i32 %13, i8* %14)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  br label %25

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 3
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  br label %25

25:                                               ; preds = %19, %12
  %26 = load i32*, i32** @thread_destroyed, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** @accesscount, align 8
  %29 = ptrtoint i32* %27 to i64
  %30 = ptrtoint i32* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 4
  %33 = getelementptr inbounds i32, i32* %26, i64 %32
  store i32 1, i32* %33, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pthread_setspecific(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
