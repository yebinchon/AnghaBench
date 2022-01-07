; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/esp/extr_stub_flasher.c_do_flash_digest.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/esp/extr_stub_flasher.c_do_flash_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MD5Context = type { i32 }

@FLASH_SECTOR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_flash_digest(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.MD5Context, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.MD5Context, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  br label %27

25:                                               ; preds = %3
  %26 = mul nuw i64 4, %17
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i64 [ %24, %22 ], [ %26, %25 ]
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = mul nuw i64 4, %17
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 98, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %78

35:                                               ; preds = %27
  %36 = call i32 @MD5Init(%struct.MD5Context* %12)
  br label %37

37:                                               ; preds = %66, %35
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %14, align 4
  %42 = call i32 @MD5Init(%struct.MD5Context* %15)
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %46, %40
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i64 @esp_rom_spiflash_read(i32 %49, i32* %19, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 99, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %78

54:                                               ; preds = %48
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @MD5Update(%struct.MD5Context* %12, i32* %19, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @MD5Update(%struct.MD5Context* %15, i32* %19, i32 %60)
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %63 = call i32 @MD5Final(i32* %62, %struct.MD5Context* %15)
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %65 = call i32 @send_packet(i32* %64, i32 64)
  br label %66

66:                                               ; preds = %59, %54
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %37

73:                                               ; preds = %37
  %74 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %75 = call i32 @MD5Final(i32* %74, %struct.MD5Context* %12)
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %77 = call i32 @send_packet(i32* %76, i32 64)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %78

78:                                               ; preds = %73, %53, %34
  %79 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MD5Init(%struct.MD5Context*) #2

declare dso_local i64 @esp_rom_spiflash_read(i32, i32*, i32) #2

declare dso_local i32 @MD5Update(%struct.MD5Context*, i32*, i32) #2

declare dso_local i32 @MD5Final(i32*, %struct.MD5Context*) #2

declare dso_local i32 @send_packet(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
