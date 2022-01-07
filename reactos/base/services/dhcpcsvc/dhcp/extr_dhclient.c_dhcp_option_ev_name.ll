; ModuleID = '/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_dhcp_option_ev_name.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/dhcpcsvc/dhcp/extr_dhclient.c_dhcp_option_ev_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dhcp_option = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dhcp_option_ev_name(i8* %0, i64 %1, %struct.dhcp_option* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dhcp_option*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dhcp_option* %2, %struct.dhcp_option** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %53, %3
  %10 = load %struct.dhcp_option*, %struct.dhcp_option** %7, align 8
  %11 = getelementptr inbounds %struct.dhcp_option, %struct.dhcp_option* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %9
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %61

25:                                               ; preds = %18
  %26 = load %struct.dhcp_option*, %struct.dhcp_option** %7, align 8
  %27 = getelementptr inbounds %struct.dhcp_option, %struct.dhcp_option* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 45
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 95, i8* %39, align 1
  br label %52

40:                                               ; preds = %25
  %41 = load %struct.dhcp_option*, %struct.dhcp_option** %7, align 8
  %42 = getelementptr inbounds %struct.dhcp_option, %struct.dhcp_option* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 %47, i8* %51, align 1
  br label %52

52:                                               ; preds = %40, %35
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %9

56:                                               ; preds = %9
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8 0, i8* %60, align 1
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %56, %24
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
