; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/ffs-aio-example/multibuff/device_app/extr_aio_multibuff.c_init_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/ffs-aio-example/multibuff/device_app/extr_aio_multibuff.c_init_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_buffer = type { i32, i32, i8**, i8**, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_bufs(%struct.io_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.io_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.io_buffer* %0, %struct.io_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  %10 = mul i64 %9, 8
  %11 = trunc i64 %10 to i32
  %12 = call i8* @malloc(i32 %11)
  %13 = bitcast i8* %12 to i8**
  %14 = load %struct.io_buffer*, %struct.io_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.io_buffer, %struct.io_buffer* %14, i32 0, i32 3
  store i8** %13, i8*** %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i8* @malloc(i32 %19)
  %21 = bitcast i8* %20 to i8**
  %22 = load %struct.io_buffer*, %struct.io_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.io_buffer, %struct.io_buffer* %22, i32 0, i32 2
  store i8** %21, i8*** %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.io_buffer*, %struct.io_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.io_buffer, %struct.io_buffer* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.io_buffer*, %struct.io_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.io_buffer, %struct.io_buffer* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.io_buffer*, %struct.io_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.io_buffer, %struct.io_buffer* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %55, %3
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = mul i64 %38, 1
  %40 = trunc i64 %39 to i32
  %41 = call i8* @malloc(i32 %40)
  %42 = load %struct.io_buffer*, %struct.io_buffer** %4, align 8
  %43 = getelementptr inbounds %struct.io_buffer, %struct.io_buffer* %42, i32 0, i32 3
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %41, i8** %47, align 8
  %48 = call i8* @malloc(i32 1)
  %49 = load %struct.io_buffer*, %struct.io_buffer** %4, align 8
  %50 = getelementptr inbounds %struct.io_buffer, %struct.io_buffer* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  store i8* %48, i8** %54, align 8
  br label %55

55:                                               ; preds = %36
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %32

58:                                               ; preds = %32
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.io_buffer*, %struct.io_buffer** %4, align 8
  %61 = getelementptr inbounds %struct.io_buffer, %struct.io_buffer* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  ret void
}

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
