; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_lwIPSocket.c_lwip_recvfrom.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_lwIPSocket.c_lwip_recvfrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@NETCONN_STATE_ESTABLISHED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwip_recvfrom(i32 %0, i8* %1, i64 %2, i32 %3, %struct.sockaddr* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @lwIP_ASSERT(i8* %17)
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.TYPE_5__* @get_socket(i32 %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %14, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %66

24:                                               ; preds = %6
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ne %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %65

29:                                               ; preds = %24
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NETCONN_STATE_ESTABLISHED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %29
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @ringbuf_bytes_used(i32 %42)
  store i64 %43, i64* %15, align 8
  %44 = load i64, i64* %15, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %37
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %15, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* %15, align 8
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i8*, i8** %9, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @ringbuf_memcpy_from(i8* %53, i32 %58, i64 %59)
  %61 = load i64, i64* %10, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %7, align 4
  br label %66

63:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %66

64:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %66

65:                                               ; preds = %24
  store i32 -1, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %64, %63, %52, %23
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @lwIP_ASSERT(i8*) #1

declare dso_local %struct.TYPE_5__* @get_socket(i32) #1

declare dso_local i64 @ringbuf_bytes_used(i32) #1

declare dso_local i32 @ringbuf_memcpy_from(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
