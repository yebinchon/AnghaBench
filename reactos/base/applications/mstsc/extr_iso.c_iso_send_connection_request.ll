; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_iso.c_iso_send_connection_request.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_iso.c_iso_send_connection_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_rdp_version = common dso_local global i64 0, align 8
@RDP_V5 = common dso_local global i64 0, align 8
@g_negotiate_rdp_protocol = common dso_local global i64 0, align 8
@ISO_PDU_CR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Cookie: mstshash=\00", align 1
@RDP_NEG_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @iso_send_connection_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iso_send_connection_request(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = add nsw i32 30, %8
  store i32 %9, i32* %6, align 4
  %10 = load i64, i64* @g_rdp_version, align 8
  %11 = load i64, i64* @RDP_V5, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i64, i64* @g_negotiate_rdp_protocol, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 8
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %16, %13, %2
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @tcp_init(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @out_uint8(i32 %22, i32 3)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @out_uint8(i32 %24, i32 0)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @out_uint16_be(i32 %26, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 5
  %32 = call i32 @out_uint8(i32 %29, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @ISO_PDU_CR, align 4
  %35 = call i32 @out_uint8(i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @out_uint16(i32 %36, i32 0)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @out_uint16(i32 %38, i32 0)
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @out_uint8(i32 %40, i32 0)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @strlen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 @out_uint8p(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i8*, i8** %3, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = call i32 @out_uint8p(i32 %45, i8* %46, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @out_uint8(i32 %50, i32 13)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @out_uint8(i32 %52, i32 10)
  %54 = load i64, i64* @g_rdp_version, align 8
  %55 = load i64, i64* @RDP_V5, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %19
  %58 = load i64, i64* @g_negotiate_rdp_protocol, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @RDP_NEG_REQ, align 4
  %63 = call i32 @out_uint8(i32 %61, i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @out_uint8(i32 %64, i32 0)
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @out_uint16(i32 %66, i32 8)
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @out_uint32(i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %60, %57, %19
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @s_mark_end(i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @tcp_send(i32 %74)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tcp_init(i32) #1

declare dso_local i32 @out_uint8(i32, i32) #1

declare dso_local i32 @out_uint16_be(i32, i32) #1

declare dso_local i32 @out_uint16(i32, i32) #1

declare dso_local i32 @out_uint8p(i32, i8*, i32) #1

declare dso_local i32 @out_uint32(i32, i32) #1

declare dso_local i32 @s_mark_end(i32) #1

declare dso_local i32 @tcp_send(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
