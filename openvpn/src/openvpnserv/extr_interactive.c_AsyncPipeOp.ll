; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_AsyncPipeOp.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_interactive.c_AsyncPipeOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@write = common dso_local global i64 0, align 8
@ERROR_IO_PENDING = common dso_local global i64 0, align 8
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@peek = common dso_local global i64 0, align 8
@INFINITE = common dso_local global i32 0, align 4
@IO_TIMEOUT = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32, i32, i64*)* @AsyncPipeOp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AsyncPipeOp(i64 %0, i64 %1, i32 %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64* %5, i64** %12, align 8
  store i32 0, i32* %17, align 4
  store i64* null, i64** %19, align 8
  %20 = call i64 @InitOverlapped(i32* %18)
  store i64 %20, i64* %15, align 8
  %21 = load i64, i64* %15, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  br label %115

24:                                               ; preds = %6
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = call i64* @malloc(i32 %29)
  store i64* %30, i64** %19, align 8
  %31 = load i64*, i64** %19, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %115

34:                                               ; preds = %24
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @write, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @WriteFile(i64 %39, i32 %40, i32 %41, i32* null, i32* %18)
  store i32 %42, i32* %14, align 4
  br label %48

43:                                               ; preds = %34
  %44 = load i64, i64* %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @ReadFile(i64 %44, i32 %45, i32 %46, i32* null, i32* %18)
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = call i64 (...) @GetLastError()
  %53 = load i64, i64* @ERROR_IO_PENDING, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = call i64 (...) @GetLastError()
  %57 = load i64, i64* @ERROR_MORE_DATA, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %115

60:                                               ; preds = %55, %51, %48
  %61 = load i64, i64* %15, align 8
  %62 = load i64*, i64** %19, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  store i64 %61, i64* %63, align 8
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %79, %60
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load i64*, i64** %12, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %19, align 8
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  store i64 %73, i64* %78, align 8
  br label %79

79:                                               ; preds = %68
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %64

82:                                               ; preds = %64
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  %85 = load i64*, i64** %19, align 8
  %86 = load i32, i32* @FALSE, align 4
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* @peek, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* @INFINITE, align 4
  br label %94

92:                                               ; preds = %82
  %93 = load i32, i32* @IO_TIMEOUT, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = call i32 @WaitForMultipleObjects(i32 %84, i64* %85, i32 %86, i32 %95)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* @WAIT_OBJECT_0, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @CancelIo(i64 %101)
  br label %115

103:                                              ; preds = %94
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* @peek, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @PeekNamedPipe(i64 %108, i32* null, i32 0, i32* null, i32* %17, i32* null)
  br label %114

110:                                              ; preds = %103
  %111 = load i64, i64* %8, align 8
  %112 = load i32, i32* @TRUE, align 4
  %113 = call i32 @GetOverlappedResult(i64 %111, i32* %18, i32* %17, i32 %112)
  br label %114

114:                                              ; preds = %110, %107
  br label %115

115:                                              ; preds = %114, %100, %59, %33, %23
  %116 = call i32 @CloseHandleEx(i64* %15)
  %117 = load i64*, i64** %19, align 8
  %118 = call i32 @free(i64* %117)
  %119 = load i32, i32* %17, align 4
  ret i32 %119
}

declare dso_local i64 @InitOverlapped(i32*) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @WriteFile(i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @ReadFile(i64, i32, i32, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @WaitForMultipleObjects(i32, i64*, i32, i32) #1

declare dso_local i32 @CancelIo(i64) #1

declare dso_local i32 @PeekNamedPipe(i64, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @GetOverlappedResult(i64, i32*, i32*, i32) #1

declare dso_local i32 @CloseHandleEx(i64*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
