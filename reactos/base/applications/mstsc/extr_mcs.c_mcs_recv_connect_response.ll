; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_mcs.c_mcs_recv_connect_response.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_mcs.c_mcs_recv_connect_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@False = common dso_local global i32 0, align 4
@MCS_CONNECT_RESPONSE = common dso_local global i32 0, align 4
@BER_TAG_RESULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"MCS connect: %d\0A\00", align 1
@BER_TAG_INTEGER = common dso_local global i32 0, align 4
@BER_TAG_OCTET_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @mcs_recv_connect_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs_recv_connect_response(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = call i32* @iso_recv(i32* null)
  store i32* %7, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @False, align 4
  store i32 %11, i32* %2, align 4
  br label %44

12:                                               ; preds = %1
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @MCS_CONNECT_RESPONSE, align 4
  %15 = call i32 @ber_parse_header(i32* %13, i32 %14, i32* %5)
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @BER_TAG_RESULT, align 4
  %18 = call i32 @ber_parse_header(i32* %16, i32 %17, i32* %5)
  %19 = load i32*, i32** %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @in_uint8(i32* %19, i64 %20)
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %12
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i32, i32* @False, align 4
  store i32 %27, i32* %2, align 4
  br label %44

28:                                               ; preds = %12
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @BER_TAG_INTEGER, align 4
  %31 = call i32 @ber_parse_header(i32* %29, i32 %30, i32* %5)
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @in_uint8s(i32* %32, i32 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @mcs_parse_domain_params(i32* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @BER_TAG_OCTET_STRING, align 4
  %39 = call i32 @ber_parse_header(i32* %37, i32 %38, i32* %5)
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @sec_process_mcs_data(i32* %40)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @s_check_end(i32* %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %28, %24, %10
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32* @iso_recv(i32*) #1

declare dso_local i32 @ber_parse_header(i32*, i32, i32*) #1

declare dso_local i32 @in_uint8(i32*, i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i32 @in_uint8s(i32*, i32) #1

declare dso_local i32 @mcs_parse_domain_params(i32*) #1

declare dso_local i32 @sec_process_mcs_data(i32*) #1

declare dso_local i32 @s_check_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
