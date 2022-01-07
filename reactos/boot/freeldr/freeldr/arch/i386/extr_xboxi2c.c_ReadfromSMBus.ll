; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_xboxi2c.c_ReadfromSMBus.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_xboxi2c.c_ReadfromSMBus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@I2C_IO_BASE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @ReadfromSMBus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadfromSMBus(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 50, i32* %10, align 4
  br label %13

13:                                               ; preds = %20, %4
  %14 = load i64, i64* @I2C_IO_BASE, align 8
  %15 = add nsw i64 %14, 0
  %16 = inttoptr i64 %15 to i32*
  %17 = call i32 @READ_PORT_USHORT(i32* %16)
  %18 = and i32 %17, 2048
  %19 = icmp ne i32 0, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %13

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %123, %21
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %10, align 4
  %25 = icmp ne i32 0, %23
  br i1 %25, label %26, label %124

26:                                               ; preds = %22
  %27 = load i64, i64* @I2C_IO_BASE, align 8
  %28 = add nsw i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %30, 1
  %32 = or i32 %31, 1
  %33 = call i32 @WRITE_PORT_UCHAR(i32 %29, i32 %32)
  %34 = load i64, i64* @I2C_IO_BASE, align 8
  %35 = add nsw i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @WRITE_PORT_UCHAR(i32 %36, i32 %37)
  %39 = load i64, i64* @I2C_IO_BASE, align 8
  %40 = add nsw i64 %39, 0
  %41 = inttoptr i64 %40 to i32*
  %42 = call i32 @READ_PORT_USHORT(i32* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i64, i64* @I2C_IO_BASE, align 8
  %44 = add nsw i64 %43, 0
  %45 = inttoptr i64 %44 to i32*
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @WRITE_PORT_USHORT(i32* %45, i32 %46)
  %48 = load i32, i32* %8, align 4
  switch i32 %48, label %59 [
    i32 4, label %49
    i32 2, label %54
  ]

49:                                               ; preds = %26
  %50 = load i64, i64* @I2C_IO_BASE, align 8
  %51 = add nsw i64 %50, 2
  %52 = trunc i64 %51 to i32
  %53 = call i32 @WRITE_PORT_UCHAR(i32 %52, i32 13)
  br label %64

54:                                               ; preds = %26
  %55 = load i64, i64* @I2C_IO_BASE, align 8
  %56 = add nsw i64 %55, 2
  %57 = trunc i64 %56 to i32
  %58 = call i32 @WRITE_PORT_UCHAR(i32 %57, i32 11)
  br label %64

59:                                               ; preds = %26
  %60 = load i64, i64* @I2C_IO_BASE, align 8
  %61 = add nsw i64 %60, 2
  %62 = trunc i64 %61 to i32
  %63 = call i32 @WRITE_PORT_UCHAR(i32 %62, i32 10)
  br label %64

64:                                               ; preds = %59, %54, %49
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %69, %64
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, 54
  %68 = icmp eq i32 0, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i64, i64* @I2C_IO_BASE, align 8
  %71 = add nsw i64 %70, 0
  %72 = trunc i64 %71 to i32
  %73 = call i8* @READ_PORT_UCHAR(i32 %72)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %11, align 4
  br label %65

75:                                               ; preds = %65
  %76 = load i32, i32* %11, align 4
  %77 = and i32 %76, 36
  %78 = icmp ne i32 0, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79, %75
  %81 = load i32, i32* %11, align 4
  %82 = and i32 %81, 16
  %83 = icmp eq i32 0, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %123

85:                                               ; preds = %80
  %86 = load i32, i32* %8, align 4
  switch i32 %86, label %114 [
    i32 4, label %87
    i32 2, label %108
  ]

87:                                               ; preds = %85
  %88 = load i64, i64* @I2C_IO_BASE, align 8
  %89 = add nsw i64 %88, 6
  %90 = trunc i64 %89 to i32
  %91 = call i8* @READ_PORT_UCHAR(i32 %90)
  %92 = load i64, i64* @I2C_IO_BASE, align 8
  %93 = add nsw i64 %92, 9
  %94 = trunc i64 %93 to i32
  %95 = call i8* @READ_PORT_UCHAR(i32 %94)
  %96 = load i64, i64* @I2C_IO_BASE, align 8
  %97 = add nsw i64 %96, 9
  %98 = trunc i64 %97 to i32
  %99 = call i8* @READ_PORT_UCHAR(i32 %98)
  %100 = load i64, i64* @I2C_IO_BASE, align 8
  %101 = add nsw i64 %100, 9
  %102 = trunc i64 %101 to i32
  %103 = call i8* @READ_PORT_UCHAR(i32 %102)
  %104 = load i64, i64* @I2C_IO_BASE, align 8
  %105 = add nsw i64 %104, 9
  %106 = trunc i64 %105 to i32
  %107 = call i8* @READ_PORT_UCHAR(i32 %106)
  br label %121

108:                                              ; preds = %85
  %109 = load i64, i64* @I2C_IO_BASE, align 8
  %110 = add nsw i64 %109, 6
  %111 = inttoptr i64 %110 to i32*
  %112 = call i32 @READ_PORT_USHORT(i32* %111)
  %113 = load i32*, i32** %9, align 8
  store i32 %112, i32* %113, align 4
  br label %121

114:                                              ; preds = %85
  %115 = load i64, i64* @I2C_IO_BASE, align 8
  %116 = add nsw i64 %115, 6
  %117 = trunc i64 %116 to i32
  %118 = call i8* @READ_PORT_UCHAR(i32 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load i32*, i32** %9, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %114, %108, %87
  %122 = load i32, i32* @TRUE, align 4
  store i32 %122, i32* %5, align 4
  br label %126

123:                                              ; preds = %84
  br label %22

124:                                              ; preds = %22
  %125 = load i32, i32* @FALSE, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %124, %121
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @READ_PORT_USHORT(i32*) #1

declare dso_local i32 @WRITE_PORT_UCHAR(i32, i32) #1

declare dso_local i32 @WRITE_PORT_USHORT(i32*, i32) #1

declare dso_local i8* @READ_PORT_UCHAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
