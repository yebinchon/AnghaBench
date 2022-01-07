; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_lwIPBuffer.c_ringbuf_memset.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_lwIPBuffer.c_ringbuf_memset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ringbuf_memset(%struct.TYPE_8__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = call i32* @ringbuf_end(%struct.TYPE_8__* %12)
  store i32* %13, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = trunc i64 %14 to i32
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = call i64 @ringbuf_buffer_size(%struct.TYPE_8__* %16)
  %18 = call i64 @LWIP_MIN(i32 %15, i64 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = call i64 @ringbuf_bytes_free(%struct.TYPE_8__* %20)
  %22 = icmp ugt i64 %19, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %74, %3
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ugt i32* %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @lwIP_ASSERT(i32 %34)
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = ptrtoint i32* %36 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %8, align 8
  %47 = sub i64 %45, %46
  %48 = call i64 @LWIP_MIN(i32 %44, i64 %47)
  store i64 %48, i64* %11, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @os_memset(i32* %51, i32 %52, i64 %53)
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 %55
  store i32* %59, i32** %57, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %8, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = icmp eq i32* %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %28
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  store i32* %71, i32** %73, align 8
  br label %74

74:                                               ; preds = %68, %28
  br label %24

75:                                               ; preds = %24
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @ringbuf_nextp(%struct.TYPE_8__* %79, i32* %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = call i32 @ringbuf_is_full(%struct.TYPE_8__* %86)
  %88 = call i32 @lwIP_ASSERT(i32 %87)
  br label %89

89:                                               ; preds = %78, %75
  %90 = load i64, i64* %8, align 8
  ret i64 %90
}

declare dso_local i32* @ringbuf_end(%struct.TYPE_8__*) #1

declare dso_local i64 @LWIP_MIN(i32, i64) #1

declare dso_local i64 @ringbuf_buffer_size(%struct.TYPE_8__*) #1

declare dso_local i64 @ringbuf_bytes_free(%struct.TYPE_8__*) #1

declare dso_local i32 @lwIP_ASSERT(i32) #1

declare dso_local i32 @os_memset(i32*, i32, i64) #1

declare dso_local i32 @ringbuf_nextp(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ringbuf_is_full(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
