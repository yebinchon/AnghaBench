; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_machpc.c_DetectSerialMouse.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_machpc.c_DetectSerialMouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MOUSE_TYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Mouse data: %x %x %x %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Microsoft Mouse with 3-buttons detected\0A\00", align 1
@MOUSE_TYPE_LOGITECH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Microsoft Wheel Mouse detected\0A\00", align 1
@MOUSE_TYPE_WHEELZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Microsoft Mouse with 2-buttons detected\0A\00", align 1
@MOUSE_TYPE_MICROSOFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @DetectSerialMouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DetectSerialMouse(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca [4 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = add nsw i64 %8, 4
  %10 = call i32 @READ_PORT_UCHAR(i64 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i64, i64* %3, align 8
  %12 = add nsw i64 %11, 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, -3
  %15 = or i32 %14, 1
  %16 = call i32 @WRITE_PORT_UCHAR(i64 %12, i32 %15)
  %17 = call i32 @StallExecutionProcessor(i32 100000)
  store i32 200, i32* %6, align 4
  br label %18

18:                                               ; preds = %30, %1
  %19 = load i64, i64* %3, align 8
  %20 = add nsw i64 %19, 5
  %21 = call i32 @READ_PORT_UCHAR(i64 %20)
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @MOUSE_TYPE_NONE, align 4
  store i32 %29, i32* %2, align 4
  br label %128

30:                                               ; preds = %24
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @READ_PORT_UCHAR(i64 %31)
  br label %18

33:                                               ; preds = %18
  %34 = load i64, i64* %3, align 8
  %35 = add nsw i64 %34, 4
  %36 = call i32 @WRITE_PORT_UCHAR(i64 %35, i32 11)
  %37 = call i32 @StallExecutionProcessor(i32 10000)
  store i32 20, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %64, %33
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 4
  br i1 %40, label %41, label %67

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %56, %41
  %43 = load i64, i64* %3, align 8
  %44 = add nsw i64 %43, 5
  %45 = call i32 @READ_PORT_UCHAR(i64 %44)
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = call i32 @StallExecutionProcessor(i32 100)
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @MOUSE_TYPE_NONE, align 4
  store i32 %55, i32* %2, align 4
  br label %128

56:                                               ; preds = %48
  br label %42

57:                                               ; preds = %42
  %58 = load i64, i64* %3, align 8
  %59 = call i32 @READ_PORT_UCHAR(i64 %58)
  %60 = trunc i32 %59 to i8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 %62
  store i8 %60, i8* %63, align 1
  br label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %38

67:                                               ; preds = %38
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 3
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %73, i32 %76, i32 %79)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %123, %67
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 4
  br i1 %83, label %84, label %126

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 66
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* @MOUSE_TYPE_NONE, align 4
  store i32 %92, i32* %2, align 4
  br label %128

93:                                               ; preds = %84
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 77
  br i1 %99, label %100, label %121

100:                                              ; preds = %93
  %101 = load i32, i32* %5, align 4
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* @MOUSE_TYPE_NONE, align 4
  store i32 %104, i32* %2, align 4
  br label %128

105:                                              ; preds = %100
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  switch i32 %111, label %118 [
    i32 51, label %112
    i32 90, label %115
  ]

112:                                              ; preds = %105
  %113 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* @MOUSE_TYPE_LOGITECH, align 4
  store i32 %114, i32* %2, align 4
  br label %128

115:                                              ; preds = %105
  %116 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %117 = load i32, i32* @MOUSE_TYPE_WHEELZ, align 4
  store i32 %117, i32* %2, align 4
  br label %128

118:                                              ; preds = %105
  %119 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32, i32* @MOUSE_TYPE_MICROSOFT, align 4
  store i32 %120, i32* %2, align 4
  br label %128

121:                                              ; preds = %93
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %81

126:                                              ; preds = %81
  %127 = load i32, i32* @MOUSE_TYPE_NONE, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %126, %118, %115, %112, %103, %91, %54, %28
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @READ_PORT_UCHAR(i64) #1

declare dso_local i32 @WRITE_PORT_UCHAR(i64, i32) #1

declare dso_local i32 @StallExecutionProcessor(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
