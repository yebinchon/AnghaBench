; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_licence.c_licence_send_new_licence_request.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_licence.c_licence_send_new_licence_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEC_LICENSE_PKT = common dso_local global i32 0, align 4
@SEC_RANDOM_SIZE = common dso_local global i32 0, align 4
@SEC_MODULUS_SIZE = common dso_local global i32 0, align 4
@SEC_PADDING_SIZE = common dso_local global i32 0, align 4
@LICENCE_TAG_NEW_LICENCE_REQUEST = common dso_local global i32 0, align 4
@g_rdp_version = common dso_local global i64 0, align 8
@RDP_V5 = common dso_local global i64 0, align 8
@BB_CLIENT_USER_NAME_BLOB = common dso_local global i32 0, align 4
@BB_CLIENT_MACHINE_NAME_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*)* @licence_send_new_licence_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @licence_send_new_licence_request(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* @SEC_LICENSE_PKT, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %10, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @SEC_RANDOM_SIZE, align 4
  %22 = add nsw i32 24, %21
  %23 = load i32, i32* @SEC_MODULUS_SIZE, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* @SEC_PADDING_SIZE, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 2
  %34 = call i32 @sec_init(i32 %31, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @LICENCE_TAG_NEW_LICENCE_REQUEST, align 4
  %37 = call i32 @out_uint8(i32 %35, i32 %36)
  %38 = load i32, i32* %13, align 4
  %39 = load i64, i64* @g_rdp_version, align 8
  %40 = load i64, i64* @RDP_V5, align 8
  %41 = icmp sge i64 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 3, i32 2
  %44 = call i32 @out_uint8(i32 %38, i32 %43)
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @out_uint16_le(i32 %45, i32 %46)
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @out_uint32_le(i32 %48, i32 1)
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @out_uint16(i32 %50, i32 0)
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @out_uint16_le(i32 %52, i32 65281)
  %54 = load i32, i32* %13, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* @SEC_RANDOM_SIZE, align 4
  %57 = call i32 @out_uint8p(i32 %54, i8* %55, i32 %56)
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @out_uint16_le(i32 %58, i32 2)
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @SEC_MODULUS_SIZE, align 4
  %62 = load i32, i32* @SEC_PADDING_SIZE, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i32 @out_uint16_le(i32 %60, i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* @SEC_MODULUS_SIZE, align 4
  %68 = call i32 @out_uint8p(i32 %65, i8* %66, i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @SEC_PADDING_SIZE, align 4
  %71 = call i32 @out_uint8s(i32 %69, i32 %70)
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @BB_CLIENT_USER_NAME_BLOB, align 4
  %74 = call i32 @out_uint16_le(i32 %72, i32 %73)
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @out_uint16_le(i32 %75, i32 %76)
  %78 = load i32, i32* %13, align 4
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @out_uint8p(i32 %78, i8* %79, i32 %80)
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @BB_CLIENT_MACHINE_NAME_BLOB, align 4
  %84 = call i32 @out_uint16_le(i32 %82, i32 %83)
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @out_uint16_le(i32 %85, i32 %86)
  %88 = load i32, i32* %13, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @out_uint8p(i32 %88, i8* %89, i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @s_mark_end(i32 %92)
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @sec_send(i32 %94, i32 %95)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sec_init(i32, i32) #1

declare dso_local i32 @out_uint8(i32, i32) #1

declare dso_local i32 @out_uint16_le(i32, i32) #1

declare dso_local i32 @out_uint32_le(i32, i32) #1

declare dso_local i32 @out_uint16(i32, i32) #1

declare dso_local i32 @out_uint8p(i32, i8*, i32) #1

declare dso_local i32 @out_uint8s(i32, i32) #1

declare dso_local i32 @s_mark_end(i32) #1

declare dso_local i32 @sec_send(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
