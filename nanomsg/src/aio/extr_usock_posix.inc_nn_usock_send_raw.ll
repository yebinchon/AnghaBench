; ModuleID = '/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_send_raw.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/aio/extr_usock_posix.inc_nn_usock_send_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_usock = type { i32 }
%struct.msghdr = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nn_usock*, %struct.msghdr*)* @nn_usock_send_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_usock_send_raw(%struct.nn_usock* %0, %struct.msghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nn_usock*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i64, align 8
  store %struct.nn_usock* %0, %struct.nn_usock** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  %7 = load %struct.nn_usock*, %struct.nn_usock** %4, align 8
  %8 = getelementptr inbounds %struct.nn_usock, %struct.nn_usock* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %11 = call i64 @sendmsg(i32 %9, %struct.msghdr* %10, i32 0)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp slt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @nn_slow(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @EAGAIN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EWOULDBLOCK, align 8
  %24 = icmp eq i64 %22, %23
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ true, %17 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @nn_fast(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i64 0, i64* %6, align 8
  br label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ECONNRESET, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %108

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %2
  br label %36

36:                                               ; preds = %97, %35
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %98

39:                                               ; preds = %36
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %42 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %40, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %39
  %48 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %49 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %53 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %47
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %59 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %57, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @nn_assert(i32 %64)
  store i32 0, i32* %3, align 4
  br label %108

66:                                               ; preds = %47
  %67 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %68 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = sub nsw i64 %72, %71
  store i64 %73, i64* %6, align 8
  %74 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %75 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 1
  store %struct.TYPE_2__* %77, %struct.TYPE_2__** %75, align 8
  br label %97

78:                                               ; preds = %39
  %79 = load i64, i64* %6, align 8
  %80 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %81 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = bitcast i32* %83 to i32**
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 %79
  store i32* %86, i32** %84, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %89 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %92, %87
  store i64 %93, i64* %91, align 8
  %94 = load i64, i64* @EAGAIN, align 8
  %95 = sub nsw i64 0, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %3, align 4
  br label %108

97:                                               ; preds = %66
  br label %36

98:                                               ; preds = %36
  %99 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %100 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i64, i64* @EAGAIN, align 8
  %105 = sub nsw i64 0, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %3, align 4
  br label %108

107:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %103, %78, %56, %31
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @sendmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i64 @nn_fast(i32) #1

declare dso_local i32 @nn_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
