; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_handshake_status.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_handshake_helper.c_handshake_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERNAL_ERROR = common dso_local global i32 0, align 4
@HANDSHAKE_SUCCESS = common dso_local global i32 0, align 4
@HANDSHAKE_RETRY = common dso_local global i32 0, align 4
@CLIENT_ERROR = common dso_local global i32 0, align 4
@SERVER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @handshake_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handshake_status(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %60 [
    i32 129, label %9
    i32 128, label %11
    i32 130, label %13
    i32 131, label %24
    i32 132, label %26
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @INTERNAL_ERROR, align 4
  store i32 %10, i32* %4, align 4
  br label %62

11:                                               ; preds = %3
  %12 = load i32, i32* @INTERNAL_ERROR, align 4
  store i32 %12, i32* %4, align 4
  br label %62

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %23 [
    i32 129, label %15
    i32 130, label %17
    i32 128, label %19
    i32 131, label %19
    i32 132, label %21
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @INTERNAL_ERROR, align 4
  store i32 %16, i32* %4, align 4
  br label %62

17:                                               ; preds = %13
  %18 = load i32, i32* @HANDSHAKE_SUCCESS, align 4
  store i32 %18, i32* %4, align 4
  br label %62

19:                                               ; preds = %13, %13
  %20 = load i32, i32* @HANDSHAKE_RETRY, align 4
  store i32 %20, i32* %4, align 4
  br label %62

21:                                               ; preds = %13
  %22 = load i32, i32* @INTERNAL_ERROR, align 4
  store i32 %22, i32* %4, align 4
  br label %62

23:                                               ; preds = %13
  br label %60

24:                                               ; preds = %3
  %25 = load i32, i32* @HANDSHAKE_RETRY, align 4
  store i32 %25, i32* %4, align 4
  br label %62

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %59 [
    i32 129, label %28
    i32 128, label %30
    i32 130, label %39
    i32 131, label %48
    i32 132, label %50
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @INTERNAL_ERROR, align 4
  store i32 %29, i32* %4, align 4
  br label %62

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @CLIENT_ERROR, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @INTERNAL_ERROR, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %4, align 4
  br label %62

39:                                               ; preds = %26
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @CLIENT_ERROR, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @SERVER_ERROR, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %4, align 4
  br label %62

48:                                               ; preds = %26
  %49 = load i32, i32* @HANDSHAKE_RETRY, align 4
  store i32 %49, i32* %4, align 4
  br label %62

50:                                               ; preds = %26
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @SERVER_ERROR, align 4
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @CLIENT_ERROR, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %4, align 4
  br label %62

59:                                               ; preds = %26
  br label %60

60:                                               ; preds = %59, %3, %23
  %61 = load i32, i32* @INTERNAL_ERROR, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %57, %48, %46, %37, %28, %24, %21, %19, %17, %15, %11, %9
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
