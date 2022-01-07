; ModuleID = '/home/carl/AnghaBench/proxychains-ng/src/extr_libproxychains.c_sendto.c'
source_filename = "/home/carl/AnghaBench/proxychains-ng/src/extr_libproxychains.c_sendto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@MSG_FASTOPEN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendto(i32 %0, i8* %1, i64 %2, i32 %3, %struct.sockaddr* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.sockaddr* %4, %struct.sockaddr** %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = call i32 (...) @INIT()
  %15 = call i32 (...) @PFUNC()
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @MSG_FASTOPEN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %6
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %23 = load i64, i64* %13, align 8
  %24 = call i32 @connect(i32 %21, %struct.sockaddr* %22, i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @EINPROGRESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 -1, i32* %7, align 4
  br label %44

31:                                               ; preds = %26, %20
  store %struct.sockaddr* null, %struct.sockaddr** %12, align 8
  store i64 0, i64* %13, align 8
  %32 = load i32, i32* @MSG_FASTOPEN, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %31, %6
  %37 = load i32, i32* %8, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @true_sendto(i32 %37, i8* %38, i64 %39, i32 %40, %struct.sockaddr* %41, i64 %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %36, %30
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @INIT(...) #1

declare dso_local i32 @PFUNC(...) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i64) #1

declare dso_local i32 @true_sendto(i32, i8*, i64, i32, %struct.sockaddr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
