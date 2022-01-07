; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_add_msghdr.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_add_msghdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i32, i64, i32, i32*, %struct.msghdr* }
%struct.msghdr = type { i64, i32*, i32* }

@stats = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@UDP_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @add_msghdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_msghdr(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.msghdr*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = icmp ne %struct.TYPE_5__* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 8
  %19 = load %struct.msghdr*, %struct.msghdr** %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 2
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 24
  %26 = trunc i64 %25 to i32
  %27 = call %struct.msghdr* @realloc(%struct.msghdr* %19, i32 %26)
  store %struct.msghdr* %27, %struct.msghdr** %4, align 8
  %28 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %29 = icmp ne %struct.msghdr* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %16
  %31 = call i32 (...) @STATS_LOCK()
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @stats, i32 0, i32 0), align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @stats, i32 0, i32 0), align 4
  %34 = call i32 (...) @STATS_UNLOCK()
  store i32 -1, i32* %2, align 4
  br label %100

35:                                               ; preds = %16
  %36 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 8
  store %struct.msghdr* %36, %struct.msghdr** %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %35, %1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 8
  %46 = load %struct.msghdr*, %struct.msghdr** %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %46, i64 %50
  store %struct.msghdr* %51, %struct.msghdr** %4, align 8
  %52 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %53 = call i32 @memset(%struct.msghdr* %52, i32 0, i32 24)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 7
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %62 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %61, i32 0, i32 2
  store i32* %60, i32** %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @IS_UDP(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %43
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 6
  %76 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %77 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %76, i32 0, i32 1
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %82 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %73, %68, %43
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 5
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @IS_UDP(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %83
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %97 = load i32, i32* @UDP_HEADER_SIZE, align 4
  %98 = call i32 @add_iov(%struct.TYPE_5__* %96, i32* null, i32 %97)
  store i32 %98, i32* %2, align 4
  br label %100

99:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %95, %30
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.msghdr* @realloc(%struct.msghdr*, i32) #1

declare dso_local i32 @STATS_LOCK(...) #1

declare dso_local i32 @STATS_UNLOCK(...) #1

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i64 @IS_UDP(i32) #1

declare dso_local i32 @add_iov(%struct.TYPE_5__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
