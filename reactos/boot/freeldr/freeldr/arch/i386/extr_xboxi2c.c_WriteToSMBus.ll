; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_xboxi2c.c_WriteToSMBus.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_xboxi2c.c_WriteToSMBus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_IO_BASE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @WriteToSMBus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteToSMBus(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 50, i32* %10, align 4
  br label %13

13:                                               ; preds = %20, %4
  %14 = load i64, i64* @I2C_IO_BASE, align 8
  %15 = add nsw i64 %14, 0
  %16 = trunc i64 %15 to i32
  %17 = call i32 @READ_PORT_USHORT(i32 %16)
  %18 = and i32 %17, 2048
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %13

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %127, %21
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %10, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %129

26:                                               ; preds = %22
  %27 = load i64, i64* @I2C_IO_BASE, align 8
  %28 = add nsw i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %30, 1
  %32 = call i32 @WRITE_PORT_UCHAR(i32 %29, i32 %31)
  %33 = load i64, i64* @I2C_IO_BASE, align 8
  %34 = add nsw i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @WRITE_PORT_UCHAR(i32 %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %78 [
    i32 4, label %39
    i32 2, label %71
  ]

39:                                               ; preds = %26
  %40 = load i64, i64* @I2C_IO_BASE, align 8
  %41 = add nsw i64 %40, 9
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 255
  %45 = call i32 @WRITE_PORT_UCHAR(i32 %42, i32 %44)
  %46 = load i64, i64* @I2C_IO_BASE, align 8
  %47 = add nsw i64 %46, 9
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %9, align 4
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 255
  %52 = call i32 @WRITE_PORT_UCHAR(i32 %48, i32 %51)
  %53 = load i64, i64* @I2C_IO_BASE, align 8
  %54 = add nsw i64 %53, 9
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* %9, align 4
  %57 = ashr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = call i32 @WRITE_PORT_UCHAR(i32 %55, i32 %58)
  %60 = load i64, i64* @I2C_IO_BASE, align 8
  %61 = add nsw i64 %60, 9
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* %9, align 4
  %64 = ashr i32 %63, 24
  %65 = and i32 %64, 255
  %66 = call i32 @WRITE_PORT_UCHAR(i32 %62, i32 %65)
  %67 = load i64, i64* @I2C_IO_BASE, align 8
  %68 = add nsw i64 %67, 6
  %69 = trunc i64 %68 to i32
  %70 = call i32 @WRITE_PORT_USHORT(i32 %69, i32 4)
  br label %85

71:                                               ; preds = %26
  %72 = load i64, i64* @I2C_IO_BASE, align 8
  %73 = add nsw i64 %72, 6
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, 65535
  %77 = call i32 @WRITE_PORT_USHORT(i32 %74, i32 %76)
  br label %85

78:                                               ; preds = %26
  %79 = load i64, i64* @I2C_IO_BASE, align 8
  %80 = add nsw i64 %79, 6
  %81 = trunc i64 %80 to i32
  %82 = load i32, i32* %9, align 4
  %83 = and i32 %82, 255
  %84 = call i32 @WRITE_PORT_USHORT(i32 %81, i32 %83)
  br label %85

85:                                               ; preds = %78, %71, %39
  %86 = load i64, i64* @I2C_IO_BASE, align 8
  %87 = add nsw i64 %86, 0
  %88 = trunc i64 %87 to i32
  %89 = call i32 @READ_PORT_USHORT(i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i64, i64* @I2C_IO_BASE, align 8
  %91 = add nsw i64 %90, 0
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @WRITE_PORT_USHORT(i32 %92, i32 %93)
  %95 = load i32, i32* %8, align 4
  switch i32 %95, label %106 [
    i32 4, label %96
    i32 2, label %101
  ]

96:                                               ; preds = %85
  %97 = load i64, i64* @I2C_IO_BASE, align 8
  %98 = add nsw i64 %97, 2
  %99 = trunc i64 %98 to i32
  %100 = call i32 @WRITE_PORT_UCHAR(i32 %99, i32 29)
  br label %111

101:                                              ; preds = %85
  %102 = load i64, i64* @I2C_IO_BASE, align 8
  %103 = add nsw i64 %102, 2
  %104 = trunc i64 %103 to i32
  %105 = call i32 @WRITE_PORT_UCHAR(i32 %104, i32 27)
  br label %111

106:                                              ; preds = %85
  %107 = load i64, i64* @I2C_IO_BASE, align 8
  %108 = add nsw i64 %107, 2
  %109 = trunc i64 %108 to i32
  %110 = call i32 @WRITE_PORT_UCHAR(i32 %109, i32 26)
  br label %111

111:                                              ; preds = %106, %101, %96
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %116, %111
  %113 = load i32, i32* %11, align 4
  %114 = and i32 %113, 54
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load i64, i64* @I2C_IO_BASE, align 8
  %118 = add nsw i64 %117, 0
  %119 = trunc i64 %118 to i32
  %120 = call i32 @READ_PORT_UCHAR(i32 %119)
  store i32 %120, i32* %11, align 4
  br label %112

121:                                              ; preds = %112
  %122 = load i32, i32* %11, align 4
  %123 = and i32 %122, 16
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* @TRUE, align 4
  store i32 %126, i32* %5, align 4
  br label %131

127:                                              ; preds = %121
  %128 = call i32 @StallExecutionProcessor(i32 1)
  br label %22

129:                                              ; preds = %22
  %130 = load i32, i32* @FALSE, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %129, %125
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @READ_PORT_USHORT(i32) #1

declare dso_local i32 @WRITE_PORT_UCHAR(i32, i32) #1

declare dso_local i32 @WRITE_PORT_USHORT(i32, i32) #1

declare dso_local i32 @READ_PORT_UCHAR(i32) #1

declare dso_local i32 @StallExecutionProcessor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
