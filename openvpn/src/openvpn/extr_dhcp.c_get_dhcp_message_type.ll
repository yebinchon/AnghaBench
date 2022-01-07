; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_dhcp.c_get_dhcp_message_type.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_dhcp.c_get_dhcp_message_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dhcp = type { i32 }

@DHCP_END = common dso_local global i64 0, align 8
@DHCP_PAD = common dso_local global i64 0, align 8
@DHCP_MSG_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dhcp*, i32)* @get_dhcp_message_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dhcp_message_type(%struct.dhcp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dhcp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dhcp* %0, %struct.dhcp** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.dhcp*, %struct.dhcp** %4, align 8
  %12 = getelementptr inbounds %struct.dhcp, %struct.dhcp* %11, i64 1
  %13 = bitcast %struct.dhcp* %12 to i64*
  store i64* %13, i64** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %80, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %83

18:                                               ; preds = %14
  %19 = load i64*, i64** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @DHCP_END, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %84

31:                                               ; preds = %18
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @DHCP_PAD, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %78

36:                                               ; preds = %31
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @DHCP_MSG_TYPE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = icmp sge i32 %41, 3
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load i64*, i64** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 1
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load i64*, i64** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %3, align 4
  br label %84

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %40
  store i32 -1, i32* %3, align 4
  br label %84

61:                                               ; preds = %36
  %62 = load i32, i32* %9, align 4
  %63 = icmp sge i32 %62, 2
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load i64*, i64** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %64, %61
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %35
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %14

83:                                               ; preds = %14
  store i32 -1, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %60, %51, %30
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
