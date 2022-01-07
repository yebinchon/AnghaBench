; ModuleID = '/home/carl/AnghaBench/nanomsg/src/transports/utils/extr_iface.c_nn_iface_resolve.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/transports/utils/extr_iface.c_nn_iface_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_iface_resolve(i8* %0, i64 %1, i32 %2, %struct.sockaddr_storage* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_storage*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.sockaddr_storage* %3, %struct.sockaddr_storage** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %15, label %26

15:                                               ; preds = %5
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 42
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %24 = load i64*, i64** %11, align 8
  %25 = call i32 @nn_iface_any(i32 %22, %struct.sockaddr_storage* %23, i64* %24)
  store i32 0, i32* %6, align 4
  br label %47

26:                                               ; preds = %15, %5
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %31 = load i64*, i64** %11, align 8
  %32 = call i32 @nn_literal_resolve(i8* %27, i64 %28, i32 %29, %struct.sockaddr_storage* %30, i64* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %47

40:                                               ; preds = %26
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %12, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 @errnum_assert(i32 %43, i32 %45)
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %40, %37, %21
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @nn_iface_any(i32, %struct.sockaddr_storage*, i64*) #1

declare dso_local i32 @nn_literal_resolve(i8*, i64, i32, %struct.sockaddr_storage*, i64*) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
