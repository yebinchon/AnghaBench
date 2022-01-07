; ModuleID = '/home/carl/AnghaBench/memcached/extr_crawler.c_lru_crawler_poll.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_crawler.c_lru_crawler_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.pollfd = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (i64, i8*, i32)*, i32 (i64, i8*, i32)* }

@POLLOUT = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@POLLHUP = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @lru_crawler_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lru_crawler_poll(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.pollfd], align 4
  %7 = alloca i32, align 4
  %8 = alloca [1 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %15 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @POLLOUT, align 4
  %17 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %18 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %20 = call i32 @poll(%struct.pollfd* %19, i32 1, i32 1000)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %133

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %133

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %30 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @POLLIN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %28
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_6__*
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32 (i64, i8*, i32)*, i32 (i64, i8*, i32)** %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds [1 x i8], [1 x i8]* %8, i64 0, i64 0
  %46 = call i32 %41(i64 %44, i8* %45, i32 1)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %35
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @EAGAIN, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @EWOULDBLOCK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %35
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = call i32 @lru_crawler_close_client(%struct.TYPE_5__* %61)
  store i32 -1, i32* %2, align 4
  br label %133

63:                                               ; preds = %56, %52, %49
  br label %64

64:                                               ; preds = %63, %28
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @bipbuf_peek_all(i32 %67, i32* %5)
  store i8* %68, i8** %4, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %132

70:                                               ; preds = %64
  %71 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %72 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @POLLHUP, align 4
  %75 = load i32, i32* @POLLERR, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = call i32 @lru_crawler_close_client(%struct.TYPE_5__* %80)
  store i32 -1, i32* %2, align 4
  br label %133

82:                                               ; preds = %70
  %83 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %6, i64 0, i64 0
  %84 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @POLLOUT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %130

89:                                               ; preds = %82
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to %struct.TYPE_6__*
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32 (i64, i8*, i32)*, i32 (i64, i8*, i32)** %94, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 %95(i64 %98, i8* %99, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %116

104:                                              ; preds = %89
  %105 = load i64, i64* @errno, align 8
  %106 = load i64, i64* @EAGAIN, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i64, i64* @errno, align 8
  %110 = load i64, i64* @EWOULDBLOCK, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %114 = call i32 @lru_crawler_close_client(%struct.TYPE_5__* %113)
  store i32 -1, i32* %2, align 4
  br label %133

115:                                              ; preds = %108, %104
  br label %129

116:                                              ; preds = %89
  %117 = load i32, i32* %10, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %121 = call i32 @lru_crawler_close_client(%struct.TYPE_5__* %120)
  store i32 -1, i32* %2, align 4
  br label %133

122:                                              ; preds = %116
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @bipbuf_poll(i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128, %115
  br label %130

130:                                              ; preds = %129, %82
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131, %64
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %119, %112, %79, %60, %27, %23
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @lru_crawler_close_client(%struct.TYPE_5__*) #1

declare dso_local i8* @bipbuf_peek_all(i32, i32*) #1

declare dso_local i32 @bipbuf_poll(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
