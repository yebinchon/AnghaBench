; ModuleID = '/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_buffer.c_buffer_init.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_buffer.c_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32, i64, i64, i32*, i64, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buffer_init(%struct.buffer* %0, i32 %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.buffer* %0, %struct.buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.buffer*, %struct.buffer** %6, align 8
  %13 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load %struct.buffer*, %struct.buffer** %6, align 8
  %18 = getelementptr inbounds %struct.buffer, %struct.buffer* %17, i32 0, i32 6
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @memcpy(i32* %18, i32* %19, i32 4)
  br label %39

21:                                               ; preds = %5
  %22 = load %struct.buffer*, %struct.buffer** %6, align 8
  %23 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = load %struct.buffer*, %struct.buffer** %6, align 8
  %28 = getelementptr inbounds %struct.buffer, %struct.buffer* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.buffer*, %struct.buffer** %6, align 8
  %31 = getelementptr inbounds %struct.buffer, %struct.buffer* %30, i32 0, i32 6
  %32 = call i32 @zend_fstat(i32 %29, i32* %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %38

34:                                               ; preds = %26, %21
  %35 = load %struct.buffer*, %struct.buffer** %6, align 8
  %36 = getelementptr inbounds %struct.buffer, %struct.buffer* %35, i32 0, i32 6
  %37 = call i32 @memset(i32* %36, i32 0, i32 4)
  br label %38

38:                                               ; preds = %34, %26
  br label %39

39:                                               ; preds = %38, %16
  %40 = load i8*, i8** %9, align 8
  %41 = load %struct.buffer*, %struct.buffer** %6, align 8
  %42 = getelementptr inbounds %struct.buffer, %struct.buffer* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.buffer*, %struct.buffer** %6, align 8
  %45 = getelementptr inbounds %struct.buffer, %struct.buffer* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.buffer*, %struct.buffer** %6, align 8
  %47 = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.buffer*, %struct.buffer** %6, align 8
  %49 = getelementptr inbounds %struct.buffer, %struct.buffer* %48, i32 0, i32 3
  store i32* null, i32** %49, align 8
  %50 = load %struct.buffer*, %struct.buffer** %6, align 8
  %51 = getelementptr inbounds %struct.buffer, %struct.buffer* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @zend_fstat(i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
