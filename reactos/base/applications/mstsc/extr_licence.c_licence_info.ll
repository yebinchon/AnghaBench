; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_licence.c_licence_info.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_licence.c_licence_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEC_LICENSE_PKT = common dso_local global i32 0, align 4
@SEC_RANDOM_SIZE = common dso_local global i32 0, align 4
@SEC_MODULUS_SIZE = common dso_local global i32 0, align 4
@SEC_PADDING_SIZE = common dso_local global i32 0, align 4
@LICENCE_HWID_SIZE = common dso_local global i32 0, align 4
@LICENCE_SIGNATURE_SIZE = common dso_local global i32 0, align 4
@LICENCE_TAG_LICENCE_INFO = common dso_local global i32 0, align 4
@g_rdp_version = common dso_local global i64 0, align 8
@RDP_V5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32*, i32*)* @licence_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @licence_info(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32, i32* @SEC_LICENSE_PKT, align 4
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* @SEC_RANDOM_SIZE, align 4
  %18 = add nsw i32 24, %17
  %19 = load i32, i32* @SEC_MODULUS_SIZE, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* @SEC_PADDING_SIZE, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* @LICENCE_HWID_SIZE, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* @LICENCE_SIGNATURE_SIZE, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %30, 2
  %32 = call i32 @sec_init(i32 %29, i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @LICENCE_TAG_LICENCE_INFO, align 4
  %35 = call i32 @out_uint8(i32 %33, i32 %34)
  %36 = load i32, i32* %15, align 4
  %37 = load i64, i64* @g_rdp_version, align 8
  %38 = load i64, i64* @RDP_V5, align 8
  %39 = icmp sge i64 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 3, i32 2
  %42 = call i32 @out_uint8(i32 %36, i32 %41)
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @out_uint16_le(i32 %43, i32 %44)
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @out_uint32_le(i32 %46, i32 1)
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @out_uint16(i32 %48, i32 0)
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @out_uint16_le(i32 %50, i32 513)
  %52 = load i32, i32* %15, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* @SEC_RANDOM_SIZE, align 4
  %55 = call i32 @out_uint8p(i32 %52, i32* %53, i32 %54)
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @out_uint16_le(i32 %56, i32 2)
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @SEC_MODULUS_SIZE, align 4
  %60 = load i32, i32* @SEC_PADDING_SIZE, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @out_uint16_le(i32 %58, i32 %61)
  %63 = load i32, i32* %15, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* @SEC_MODULUS_SIZE, align 4
  %66 = call i32 @out_uint8p(i32 %63, i32* %64, i32 %65)
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @SEC_PADDING_SIZE, align 4
  %69 = call i32 @out_uint8s(i32 %67, i32 %68)
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @out_uint16_le(i32 %70, i32 1)
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @out_uint16_le(i32 %72, i32 %73)
  %75 = load i32, i32* %15, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @out_uint8p(i32 %75, i32* %76, i32 %77)
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @out_uint16_le(i32 %79, i32 1)
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @LICENCE_HWID_SIZE, align 4
  %83 = call i32 @out_uint16_le(i32 %81, i32 %82)
  %84 = load i32, i32* %15, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* @LICENCE_HWID_SIZE, align 4
  %87 = call i32 @out_uint8p(i32 %84, i32* %85, i32 %86)
  %88 = load i32, i32* %15, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* @LICENCE_SIGNATURE_SIZE, align 4
  %91 = call i32 @out_uint8p(i32 %88, i32* %89, i32 %90)
  %92 = load i32, i32* %15, align 4
  %93 = call i32 @s_mark_end(i32 %92)
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @sec_send(i32 %94, i32 %95)
  ret void
}

declare dso_local i32 @sec_init(i32, i32) #1

declare dso_local i32 @out_uint8(i32, i32) #1

declare dso_local i32 @out_uint16_le(i32, i32) #1

declare dso_local i32 @out_uint32_le(i32, i32) #1

declare dso_local i32 @out_uint16(i32, i32) #1

declare dso_local i32 @out_uint8p(i32, i32*, i32) #1

declare dso_local i32 @out_uint8s(i32, i32) #1

declare dso_local i32 @s_mark_end(i32) #1

declare dso_local i32 @sec_send(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
