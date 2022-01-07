; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/esp/extr_stub_flasher.c_cmd_loop.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/esp/extr_stub_flasher.c_cmd_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UART_RXFIFO_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_loop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 85, i32* %2, align 4
  br label %7

7:                                                ; preds = %117, %0
  %8 = call i32 @UART_CONF0_REG(i32 0)
  %9 = load i32, i32* @UART_RXFIFO_RST, align 4
  %10 = call i32 @SET_PERI_REG_MASK(i32 %8, i32 %9)
  %11 = call i32 @UART_CONF0_REG(i32 0)
  %12 = load i32, i32* @UART_RXFIFO_RST, align 4
  %13 = call i32 @CLEAR_PERI_REG_MASK(i32 %11, i32 %12)
  %14 = call i32 @SLIP_recv(i32* %2, i32 1)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %7
  br label %111

18:                                               ; preds = %7
  store i32 255, i32* %5, align 4
  %19 = load i32, i32* %2, align 4
  switch i32 %19, label %109 [
    i32 131, label %20
    i32 133, label %35
    i32 135, label %52
    i32 132, label %67
    i32 134, label %69
    i32 137, label %71
    i32 129, label %71
    i32 136, label %74
    i32 130, label %80
    i32 128, label %94
  ]

20:                                               ; preds = %18
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %22 = call i32 @SLIP_recv(i32* %21, i32 16)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 12
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %27 = load i32, i32* %26, align 16
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @do_flash_write(i32 %27, i32 %29, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %34

33:                                               ; preds = %20
  store i32 65, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %25
  br label %109

35:                                               ; preds = %18
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %37 = call i32 @SLIP_recv(i32* %36, i32 16)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 16
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %42 = load i32, i32* %41, align 16
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @do_flash_read(i32 %42, i32 %44, i32 %46, i32 %48)
  store i32 %49, i32* %5, align 4
  br label %51

50:                                               ; preds = %35
  store i32 81, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %40
  br label %109

52:                                               ; preds = %18
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %54 = call i32 @SLIP_recv(i32* %53, i32 16)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 12
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %59 = load i32, i32* %58, align 16
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @do_flash_digest(i32 %59, i32 %61, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %66

65:                                               ; preds = %52
  store i32 97, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %57
  br label %109

67:                                               ; preds = %18
  %68 = call i32 (...) @do_flash_read_chip_id()
  store i32 %68, i32* %5, align 4
  br label %109

69:                                               ; preds = %18
  %70 = call i32 (...) @esp_rom_spiflash_erase_chip()
  store i32 %70, i32* %5, align 4
  br label %109

71:                                               ; preds = %18, %18
  store i32 0, i32* %5, align 4
  %72 = call i32 @SLIP_send(i32* %5, i32 1)
  %73 = load i32, i32* %2, align 4
  store i32 %73, i32* %1, align 4
  br label %121

74:                                               ; preds = %18
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %76 = call i32 @SLIP_recv(i32* %75, i32 16)
  store i32 %76, i32* %4, align 4
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @SLIP_send(i32* %77, i32 %78)
  store i32 0, i32* %5, align 4
  br label %109

80:                                               ; preds = %18
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %82 = call i32 @SLIP_recv(i32* %81, i32 16)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %83, 4
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %87 = load i32, i32* %86, align 16
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i32*
  %90 = call i32 @READ_PERI_REG(i32* %89)
  store i32 %90, i32* %6, align 4
  %91 = call i32 @SLIP_send(i32* %6, i32 4)
  store i32 0, i32* %5, align 4
  br label %93

92:                                               ; preds = %80
  store i32 145, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %85
  br label %109

94:                                               ; preds = %18
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %96 = call i32 @SLIP_recv(i32* %95, i32 16)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp eq i32 %97, 8
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %101 = load i32, i32* %100, align 16
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i32*
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @WRITE_PERI_REG(i32* %103, i32 %105)
  store i32 0, i32* %5, align 4
  br label %108

107:                                              ; preds = %94
  store i32 161, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %99
  br label %109

109:                                              ; preds = %18, %108, %93, %74, %69, %67, %66, %51, %34
  %110 = call i32 @SLIP_send(i32* %5, i32 1)
  br label %111

111:                                              ; preds = %109, %17
  %112 = load i32, i32* %2, align 4
  %113 = icmp ne i32 %112, 137
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %2, align 4
  %116 = icmp ne i32 %115, 129
  br label %117

117:                                              ; preds = %114, %111
  %118 = phi i1 [ false, %111 ], [ %116, %114 ]
  br i1 %118, label %7, label %119

119:                                              ; preds = %117
  %120 = load i32, i32* %2, align 4
  store i32 %120, i32* %1, align 4
  br label %121

121:                                              ; preds = %119, %71
  %122 = load i32, i32* %1, align 4
  ret i32 %122
}

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @UART_CONF0_REG(i32) #1

declare dso_local i32 @CLEAR_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @SLIP_recv(i32*, i32) #1

declare dso_local i32 @do_flash_write(i32, i32, i32) #1

declare dso_local i32 @do_flash_read(i32, i32, i32, i32) #1

declare dso_local i32 @do_flash_digest(i32, i32, i32) #1

declare dso_local i32 @do_flash_read_chip_id(...) #1

declare dso_local i32 @esp_rom_spiflash_erase_chip(...) #1

declare dso_local i32 @SLIP_send(i32*, i32) #1

declare dso_local i32 @READ_PERI_REG(i32*) #1

declare dso_local i32 @WRITE_PERI_REG(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
