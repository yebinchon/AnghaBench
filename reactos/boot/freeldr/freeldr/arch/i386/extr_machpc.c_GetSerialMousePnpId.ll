; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_machpc.c_GetSerialMousePnpId.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_machpc.c_GetSerialMousePnpId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @GetSerialMousePnpId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetSerialMousePnpId(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i64, i64* %4, align 8
  %11 = add nsw i64 %10, 4
  %12 = call i32 @WRITE_PORT_UCHAR(i64 %11, i32 9)
  %13 = call i32 @StallExecutionProcessor(i32 10000)
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 %14, 4
  %16 = call i32 @WRITE_PORT_UCHAR(i64 %15, i32 11)
  %17 = call i32 @StallExecutionProcessor(i32 10000)
  br label %18

18:                                               ; preds = %50, %2
  store i32 200, i32* %6, align 4
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i64, i64* %4, align 8
  %21 = add nsw i64 %20, 5
  %22 = call i32 @READ_PORT_UCHAR(i64 %21)
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i1 [ false, %19 ], [ %27, %25 ]
  br i1 %29, label %30, label %38

30:                                               ; preds = %28
  %31 = call i32 @StallExecutionProcessor(i32 1000)
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %105

37:                                               ; preds = %30
  br label %19

38:                                               ; preds = %28
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @READ_PORT_UCHAR(i64 %39)
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %8, align 1
  %42 = load i8, i8* %8, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 8
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i8, i8* %8, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 40
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %38
  br label %51

50:                                               ; preds = %45
  br label %18

51:                                               ; preds = %49
  %52 = load i8, i8* %8, align 1
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 %52, i8* %57, align 1
  %58 = load i8, i8* %8, align 1
  %59 = sext i8 %58 to i32
  %60 = add nsw i32 %59, 1
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %9, align 1
  br label %62

62:                                               ; preds = %102, %51
  store i32 200, i32* %6, align 4
  br label %63

63:                                               ; preds = %81, %62
  %64 = load i64, i64* %4, align 8
  %65 = add nsw i64 %64, 5
  %66 = call i32 @READ_PORT_UCHAR(i64 %65)
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  %71 = icmp sgt i32 %70, 0
  br label %72

72:                                               ; preds = %69, %63
  %73 = phi i1 [ false, %63 ], [ %71, %69 ]
  br i1 %73, label %74, label %82

74:                                               ; preds = %72
  %75 = call i32 @StallExecutionProcessor(i32 1000)
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %105

81:                                               ; preds = %74
  br label %63

82:                                               ; preds = %72
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @READ_PORT_UCHAR(i64 %83)
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %8, align 1
  %86 = load i8, i8* %8, align 1
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8 %86, i8* %91, align 1
  %92 = load i8, i8* %8, align 1
  %93 = sext i8 %92 to i32
  %94 = load i8, i8* %9, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %82
  br label %103

98:                                               ; preds = %82
  %99 = load i32, i32* %7, align 4
  %100 = icmp sge i32 %99, 256
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %103

102:                                              ; preds = %98
  br label %62

103:                                              ; preds = %101, %97
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %80, %36
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @WRITE_PORT_UCHAR(i64, i32) #1

declare dso_local i32 @StallExecutionProcessor(i32) #1

declare dso_local i32 @READ_PORT_UCHAR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
