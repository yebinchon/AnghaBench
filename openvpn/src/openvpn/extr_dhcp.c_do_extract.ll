; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_dhcp.c_do_extract.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_dhcp.c_do_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dhcp = type { i32 }

@DHCP_END = common dso_local global i64 0, align 8
@DHCP_PAD = common dso_local global i64 0, align 8
@DHCP_ROUTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dhcp*, i32)* @do_extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_extract(%struct.dhcp* %0, i32 %1) #0 {
  %3 = alloca %struct.dhcp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dhcp* %0, %struct.dhcp** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.dhcp*, %struct.dhcp** %3, align 8
  %18 = getelementptr inbounds %struct.dhcp, %struct.dhcp* %17, i64 1
  %19 = bitcast %struct.dhcp* %18 to i64*
  store i64* %19, i64** %5, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %143, %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %144

24:                                               ; preds = %20
  %25 = load i64*, i64** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @DHCP_END, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %144

37:                                               ; preds = %24
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @DHCP_PAD, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %142

44:                                               ; preds = %37
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @DHCP_ROUTER, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %124

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp sge i32 %49, 2
  br i1 %50, label %51, label %122

51:                                               ; preds = %48
  %52 = load i64*, i64** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %60, 2
  %62 = icmp sle i32 %59, %61
  br i1 %62, label %63, label %120

63:                                               ; preds = %51
  %64 = load i64, i64* %7, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = icmp sge i32 %67, 4
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, 3
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load i64*, i64** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  %79 = call i32 @memcpy(i64* %7, i64* %78, i32 4)
  %80 = load i64, i64* %7, align 8
  %81 = call i64 @ntohl(i64 %80)
  store i64 %81, i64* %7, align 8
  br label %82

82:                                               ; preds = %73, %69, %66, %63
  %83 = load i64*, i64** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64* %86, i64** %11, align 8
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 2
  store i32 %88, i32* %12, align 4
  %89 = load i64*, i64** %11, align 8
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  store i64* %92, i64** %13, align 8
  %93 = load i64*, i64** %5, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64* %96, i64** %14, align 8
  %97 = load i64*, i64** %14, align 8
  %98 = load i64*, i64** %13, align 8
  %99 = ptrtoint i64* %97 to i64
  %100 = ptrtoint i64* %98 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %82
  %107 = load i64*, i64** %11, align 8
  %108 = load i64*, i64** %13, align 8
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @memmove(i64* %107, i64* %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %82
  %112 = load i64*, i64** %14, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = sub i64 0, %114
  %116 = getelementptr inbounds i64, i64* %112, i64 %115
  %117 = load i64, i64* @DHCP_PAD, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @memset(i64* %116, i64 %117, i32 %118)
  br label %121

120:                                              ; preds = %51
  br label %144

121:                                              ; preds = %111
  br label %123

122:                                              ; preds = %48
  br label %144

123:                                              ; preds = %121
  br label %141

124:                                              ; preds = %44
  %125 = load i32, i32* %9, align 4
  %126 = icmp sge i32 %125, 2
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load i64*, i64** %5, align 8
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %128, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %135, 2
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %6, align 4
  br label %140

139:                                              ; preds = %124
  br label %144

140:                                              ; preds = %127
  br label %141

141:                                              ; preds = %140, %123
  br label %142

142:                                              ; preds = %141, %41
  br label %143

143:                                              ; preds = %142
  br label %20

144:                                              ; preds = %139, %122, %120, %36, %20
  %145 = load i64, i64* %7, align 8
  ret i64 %145
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i64 @ntohl(i64) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @memset(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
