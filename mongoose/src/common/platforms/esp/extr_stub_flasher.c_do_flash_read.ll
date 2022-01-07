; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/esp/extr_stub_flasher.c_do_flash_read.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/esp/extr_stub_flasher.c_do_flash_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MD5Context = type { i32 }

@FLASH_SECTOR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_flash_read(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [16 x i32], align 16
  %13 = alloca %struct.MD5Context, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = mul nuw i64 4, %19
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 82, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %87

27:                                               ; preds = %4
  %28 = call i32 @MD5Init(%struct.MD5Context* %13)
  br label %29

29:                                               ; preds = %81, %27
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %82

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %61, %33
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %15, align 4
  %41 = sub nsw i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i1 [ false, %34 ], [ %43, %38 ]
  br i1 %45, label %46, label %72

46:                                               ; preds = %44
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %14, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %17, align 4
  br label %55

55:                                               ; preds = %53, %46
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %17, align 4
  %58 = call i64 @esp_rom_spiflash_read(i32 %56, i32* %21, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 83, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %87

61:                                               ; preds = %55
  %62 = load i32, i32* %17, align 4
  %63 = call i32 @send_packet(i32* %21, i32 %62)
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @MD5Update(%struct.MD5Context* %13, i32* %21, i32 %64)
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %14, align 4
  br label %34

72:                                               ; preds = %44
  %73 = call i32 @SLIP_recv(i32* %15, i32 4)
  %74 = icmp ne i32 %73, 4
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 84, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %87

76:                                               ; preds = %72
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 85, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %87

81:                                               ; preds = %76
  br label %29

82:                                               ; preds = %29
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %84 = call i32 @MD5Final(i32* %83, %struct.MD5Context* %13)
  %85 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %86 = call i32 @send_packet(i32* %85, i32 64)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %87

87:                                               ; preds = %82, %80, %75, %60, %26
  %88 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MD5Init(%struct.MD5Context*) #2

declare dso_local i64 @esp_rom_spiflash_read(i32, i32*, i32) #2

declare dso_local i32 @send_packet(i32*, i32) #2

declare dso_local i32 @MD5Update(%struct.MD5Context*, i32*, i32) #2

declare dso_local i32 @SLIP_recv(i32*, i32) #2

declare dso_local i32 @MD5Final(i32*, %struct.MD5Context*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
