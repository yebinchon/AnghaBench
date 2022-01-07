; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_lwIPBuffer.c_ringbuf_findchr.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_lwIPBuffer.c_ringbuf_findchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ringbuf_t = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ringbuf_findchr(%struct.ringbuf_t* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ringbuf_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.ringbuf_t* %0, %struct.ringbuf_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load %struct.ringbuf_t*, %struct.ringbuf_t** %5, align 8
  %14 = call i32* @ringbuf_end(%struct.ringbuf_t* %13)
  store i32* %14, i32** %8, align 8
  %15 = load %struct.ringbuf_t*, %struct.ringbuf_t** %5, align 8
  %16 = call i64 @ringbuf_bytes_used(%struct.ringbuf_t* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %4, align 8
  br label %82

22:                                               ; preds = %3
  %23 = load %struct.ringbuf_t*, %struct.ringbuf_t** %5, align 8
  %24 = getelementptr inbounds %struct.ringbuf_t, %struct.ringbuf_t* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.ringbuf_t*, %struct.ringbuf_t** %5, align 8
  %27 = getelementptr inbounds %struct.ringbuf_t, %struct.ringbuf_t* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.ringbuf_t*, %struct.ringbuf_t** %5, align 8
  %30 = getelementptr inbounds %struct.ringbuf_t, %struct.ringbuf_t* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = ptrtoint i32* %28 to i64
  %33 = ptrtoint i32* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %35, %36
  %38 = load %struct.ringbuf_t*, %struct.ringbuf_t** %5, align 8
  %39 = call i32 @ringbuf_buffer_size(%struct.ringbuf_t* %38)
  %40 = sext i32 %39 to i64
  %41 = urem i64 %37, %40
  %42 = getelementptr inbounds i32, i32* %25, i64 %41
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ugt i32* %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @lwIP_ASSERT(i32 %46)
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %7, align 8
  %57 = sub i64 %55, %56
  %58 = call i64 @LWIP_MIN(i32 %54, i64 %57)
  store i64 %58, i64* %11, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i64, i64* %11, align 8
  %62 = call i64 @memchr(i32* %59, i32 %60, i64 %61)
  %63 = inttoptr i64 %62 to i32*
  store i32* %63, i32** %12, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %22
  %67 = load i64, i64* %7, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = ptrtoint i32* %68 to i64
  %71 = ptrtoint i32* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 4
  %74 = add i64 %67, %73
  store i64 %74, i64* %4, align 8
  br label %82

75:                                               ; preds = %22
  %76 = load %struct.ringbuf_t*, %struct.ringbuf_t** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %78, %79
  %81 = call i64 @ringbuf_findchr(%struct.ringbuf_t* %76, i32 %77, i64 %80)
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %75, %66, %20
  %83 = load i64, i64* %4, align 8
  ret i64 %83
}

declare dso_local i32* @ringbuf_end(%struct.ringbuf_t*) #1

declare dso_local i64 @ringbuf_bytes_used(%struct.ringbuf_t*) #1

declare dso_local i32 @ringbuf_buffer_size(%struct.ringbuf_t*) #1

declare dso_local i32 @lwIP_ASSERT(i32) #1

declare dso_local i64 @LWIP_MIN(i32, i64) #1

declare dso_local i64 @memchr(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
