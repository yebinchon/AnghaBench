; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_process_pdu_logon.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_process_pdu_logon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INFOTYPE_LOGON_EXTENDED_INF = common dso_local global i64 0, align 8
@LOGON_EX_AUTORECONNECTCOOKIE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Invalid length in Auto-Reconnect packet\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Unsupported version of Auto-Reconnect packet\0A\00", align 1
@g_reconnect_logonid = common dso_local global i64 0, align 8
@g_reconnect_random = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4
@g_has_reconnect_random = common dso_local global i32 0, align 4
@g_reconnect_random_ts = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Saving auto-reconnect cookie, id=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_pdu_logon(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @in_uint32_le(i32 %7, i64 %8)
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @INFOTYPE_LOGON_EXTENDED_INF, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %54

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @in_uint8s(i32 %14, i32 2)
  %16 = load i32, i32* %2, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @in_uint32_le(i32 %16, i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @LOGON_EX_AUTORECONNECTCOOKIE, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %13
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @in_uint8s(i32 %24, i32 4)
  %26 = load i32, i32* %2, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @in_uint32_le(i32 %26, i64 %27)
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 28
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call i32 @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %54

33:                                               ; preds = %23
  %34 = load i32, i32* %2, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @in_uint32_le(i32 %34, i64 %35)
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %54

41:                                               ; preds = %33
  %42 = load i32, i32* %2, align 4
  %43 = load i64, i64* @g_reconnect_logonid, align 8
  %44 = call i32 @in_uint32_le(i32 %42, i64 %43)
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @g_reconnect_random, align 4
  %47 = call i32 @in_uint8a(i32 %45, i32 %46, i32 16)
  %48 = load i32, i32* @True, align 4
  store i32 %48, i32* @g_has_reconnect_random, align 4
  %49 = call i32 @time(i32* null)
  store i32 %49, i32* @g_reconnect_random_ts, align 4
  %50 = load i64, i64* @g_reconnect_logonid, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @DEBUG(i8* %51)
  br label %53

53:                                               ; preds = %41, %13
  br label %54

54:                                               ; preds = %31, %39, %53, %1
  ret void
}

declare dso_local i32 @in_uint32_le(i32, i64) #1

declare dso_local i32 @in_uint8s(i32, i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @in_uint8a(i32, i32, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
