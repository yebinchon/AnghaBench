; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-coro.c_coro_strndup.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-coro.c_coro_strndup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coro = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @coro_strndup(%struct.coro* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.coro*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.coro* %0, %struct.coro** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @strnlen(i8* %9, i64 %10)
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %7, align 8
  %14 = load %struct.coro*, %struct.coro** %4, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i8* @coro_malloc(%struct.coro* %14, i64 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @LIKELY(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @memcpy(i8* %21, i8* %22, i64 %23)
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 0, i8* %28, align 1
  br label %29

29:                                               ; preds = %20, %3
  %30 = load i8*, i8** %8, align 8
  ret i8* %30
}

declare dso_local i32 @strnlen(i8*, i64) #1

declare dso_local i8* @coro_malloc(%struct.coro*, i64) #1

declare dso_local i64 @LIKELY(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
