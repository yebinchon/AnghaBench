; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_phys_cpy.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_phys_cpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPIFFS_COPY_BUFFER_STACK = common dso_local global i32 0, align 4
@SPIFFS_OP_T_OBJ_DA = common dso_local global i32 0, align 4
@SPIFFS_OP_C_MOVS = common dso_local global i32 0, align 4
@SPIFFS_OP_C_MOVD = common dso_local global i32 0, align 4
@SPIFFS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spiffs_phys_cpy(i32* %0, i32 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @SPIFFS_COPY_BUFFER_STACK, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  br label %20

20:                                               ; preds = %23, %5
  %21 = load i64, i64* %10, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %20
  %24 = load i32, i32* @SPIFFS_COPY_BUFFER_STACK, align 4
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @MIN(i32 %24, i64 %25)
  store i64 %26, i64* %14, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @SPIFFS_OP_T_OBJ_DA, align 4
  %29 = load i32, i32* @SPIFFS_OP_C_MOVS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %14, align 8
  %34 = call i32 @_spiffs_rd(i32* %27, i32 %30, i32 %31, i64 %32, i64 %33, i32* %19)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @SPIFFS_CHECK_RES(i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @SPIFFS_OP_T_OBJ_DA, align 4
  %39 = load i32, i32* @SPIFFS_OP_C_MOVD, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @_spiffs_wr(i32* %37, i32 %40, i32 %41, i64 %42, i64 %43, i32* %19)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @SPIFFS_CHECK_RES(i32 %45)
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %10, align 8
  %49 = sub nsw i64 %48, %47
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %8, align 8
  br label %20

56:                                               ; preds = %20
  %57 = load i32, i32* @SPIFFS_OK, align 4
  %58 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %58)
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @MIN(i32, i64) #2

declare dso_local i32 @_spiffs_rd(i32*, i32, i32, i64, i64, i32*) #2

declare dso_local i32 @SPIFFS_CHECK_RES(i32) #2

declare dso_local i32 @_spiffs_wr(i32*, i32, i32, i64, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
