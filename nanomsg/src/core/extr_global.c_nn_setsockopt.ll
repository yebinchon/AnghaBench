; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_setsockopt.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_global.c_nn_setsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_sock = type { i32 }

@errno = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_setsockopt(i32 %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nn_sock*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @nn_global_hold_socket(%struct.nn_sock** %13, i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i64 @nn_slow(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %65

24:                                               ; preds = %5
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @nn_slow(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %12, align 4
  br label %60

38:                                               ; preds = %30
  %39 = load %struct.nn_sock*, %struct.nn_sock** %13, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @nn_sock_setopt(%struct.nn_sock* %39, i32 %40, i32 %41, i8* %42, i64 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 @nn_slow(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %60

51:                                               ; preds = %38
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 0, %55
  %57 = call i32 @errnum_assert(i32 %54, i32 %56)
  %58 = load %struct.nn_sock*, %struct.nn_sock** %13, align 8
  %59 = call i32 @nn_global_rele_socket(%struct.nn_sock* %58)
  store i32 0, i32* %6, align 4
  br label %65

60:                                               ; preds = %50, %35
  %61 = load %struct.nn_sock*, %struct.nn_sock** %13, align 8
  %62 = call i32 @nn_global_rele_socket(%struct.nn_sock* %61)
  %63 = load i32, i32* %12, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %65

65:                                               ; preds = %60, %51, %21
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @nn_global_hold_socket(%struct.nn_sock**, i32) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_sock_setopt(%struct.nn_sock*, i32, i32, i8*, i64) #1

declare dso_local i32 @errnum_assert(i32, i32) #1

declare dso_local i32 @nn_global_rele_socket(%struct.nn_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
