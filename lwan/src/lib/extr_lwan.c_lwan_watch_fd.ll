; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_lwan_watch_fd.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan.c_lwan_watch_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_fd_watch = type { i32, i32 }
%struct.lwan = type { i32, i32 }
%struct.epoll_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EPOLL_CTL_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lwan_fd_watch* @lwan_watch_fd(%struct.lwan* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.lwan_fd_watch*, align 8
  %7 = alloca %struct.lwan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.lwan_fd_watch*, align 8
  %13 = alloca %struct.epoll_event, align 4
  store %struct.lwan* %0, %struct.lwan** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = call %struct.lwan_fd_watch* @malloc(i32 8)
  store %struct.lwan_fd_watch* %14, %struct.lwan_fd_watch** %12, align 8
  %15 = load %struct.lwan_fd_watch*, %struct.lwan_fd_watch** %12, align 8
  %16 = icmp ne %struct.lwan_fd_watch* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.lwan_fd_watch* null, %struct.lwan_fd_watch** %6, align 8
  br label %59

18:                                               ; preds = %5
  %19 = load %struct.lwan*, %struct.lwan** %7, align 8
  %20 = getelementptr inbounds %struct.lwan, %struct.lwan* %19, i32 0, i32 1
  %21 = load i32, i32* %10, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @coro_new(i32* %20, i32 %21, i8* %22)
  %24 = load %struct.lwan_fd_watch*, %struct.lwan_fd_watch** %12, align 8
  %25 = getelementptr inbounds %struct.lwan_fd_watch, %struct.lwan_fd_watch* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.lwan_fd_watch*, %struct.lwan_fd_watch** %12, align 8
  %27 = getelementptr inbounds %struct.lwan_fd_watch, %struct.lwan_fd_watch* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  br label %56

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %13, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.lwan_fd_watch*, %struct.lwan_fd_watch** %12, align 8
  %35 = getelementptr inbounds %struct.lwan_fd_watch, %struct.lwan_fd_watch* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 4
  %37 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %13, i32 0, i32 1
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %37, align 4
  %39 = load %struct.lwan*, %struct.lwan** %7, align 8
  %40 = getelementptr inbounds %struct.lwan, %struct.lwan* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @epoll_ctl(i32 %41, i32 %42, i32 %43, %struct.epoll_event* %13)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %31
  %47 = load %struct.lwan_fd_watch*, %struct.lwan_fd_watch** %12, align 8
  %48 = getelementptr inbounds %struct.lwan_fd_watch, %struct.lwan_fd_watch* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @coro_free(i32 %49)
  br label %56

51:                                               ; preds = %31
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.lwan_fd_watch*, %struct.lwan_fd_watch** %12, align 8
  %54 = getelementptr inbounds %struct.lwan_fd_watch, %struct.lwan_fd_watch* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.lwan_fd_watch*, %struct.lwan_fd_watch** %12, align 8
  store %struct.lwan_fd_watch* %55, %struct.lwan_fd_watch** %6, align 8
  br label %59

56:                                               ; preds = %46, %30
  %57 = load %struct.lwan_fd_watch*, %struct.lwan_fd_watch** %12, align 8
  %58 = call i32 @free(%struct.lwan_fd_watch* %57)
  store %struct.lwan_fd_watch* null, %struct.lwan_fd_watch** %6, align 8
  br label %59

59:                                               ; preds = %56, %51, %17
  %60 = load %struct.lwan_fd_watch*, %struct.lwan_fd_watch** %6, align 8
  ret %struct.lwan_fd_watch* %60
}

declare dso_local %struct.lwan_fd_watch* @malloc(i32) #1

declare dso_local i32 @coro_new(i32*, i32, i8*) #1

declare dso_local i64 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

declare dso_local i32 @coro_free(i32) #1

declare dso_local i32 @free(%struct.lwan_fd_watch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
