; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_streamsfuncs.c_decode_context_param.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_streamsfuncs.c_decode_context_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32*)* @decode_context_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @decode_context_param(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 (...) @php_le_stream_context()
  %7 = call %struct.TYPE_9__* @zend_fetch_resource_ex(i32* %5, i32* null, i32 %6)
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = icmp eq %struct.TYPE_9__* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 (...) @php_file_le_stream()
  %13 = call i32 (...) @php_file_le_pstream()
  %14 = call %struct.TYPE_10__* @zend_fetch_resource2_ex(i32* %11, i32* null, i32 %12, i32 %13)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %4, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %10
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = call %struct.TYPE_9__* @PHP_STREAM_CONTEXT(%struct.TYPE_10__* %18)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %3, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = icmp eq %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = call %struct.TYPE_9__* (...) @php_stream_context_alloc()
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %3, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %17
  br label %30

30:                                               ; preds = %29, %10
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %32
}

declare dso_local %struct.TYPE_9__* @zend_fetch_resource_ex(i32*, i32*, i32) #1

declare dso_local i32 @php_le_stream_context(...) #1

declare dso_local %struct.TYPE_10__* @zend_fetch_resource2_ex(i32*, i32*, i32, i32) #1

declare dso_local i32 @php_file_le_stream(...) #1

declare dso_local i32 @php_file_le_pstream(...) #1

declare dso_local %struct.TYPE_9__* @PHP_STREAM_CONTEXT(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @php_stream_context_alloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
