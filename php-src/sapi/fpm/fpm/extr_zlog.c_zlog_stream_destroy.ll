; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_destroy.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlog_stream = type { i32*, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zlog_stream_destroy(%struct.zlog_stream* %0) #0 {
  %2 = alloca %struct.zlog_stream*, align 8
  store %struct.zlog_stream* %0, %struct.zlog_stream** %2, align 8
  %3 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %4 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %10 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @free(i32* %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %16 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %21 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @free(i32* %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %26 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %31 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @free(i32* %32)
  br label %45

34:                                               ; preds = %24
  %35 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %36 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.zlog_stream*, %struct.zlog_stream** %2, align 8
  %41 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @free(i32* %42)
  br label %44

44:                                               ; preds = %39, %34
  br label %45

45:                                               ; preds = %44, %29
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
