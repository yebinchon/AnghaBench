; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_mss.c_mss_fixup_dowork.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_mss.c_mss_fixup_dowork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32 }
%struct.openvpn_tcphdr = type { i32, i32 }

@OPENVPN_TCPOPT_EOL = common dso_local global i64 0, align 8
@OPENVPN_TCPOPT_NOP = common dso_local global i64 0, align 8
@OPENVPN_TCPOPT_MAXSEG = common dso_local global i64 0, align 8
@OPENVPN_TCPOLEN_MAXSEG = common dso_local global i32 0, align 4
@D_MSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"MSS: %d -> %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mss_fixup_dowork(%struct.buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.openvpn_tcphdr*, align 8
  store %struct.buffer* %0, %struct.buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.buffer*, %struct.buffer** %3, align 8
  %13 = call i32 @BLEN(%struct.buffer* %12)
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %131

16:                                               ; preds = %2
  %17 = load %struct.buffer*, %struct.buffer** %3, align 8
  %18 = call i32 @verify_align_4(%struct.buffer* %17)
  %19 = load %struct.buffer*, %struct.buffer** %3, align 8
  %20 = call i64 @BPTR(%struct.buffer* %19)
  %21 = inttoptr i64 %20 to %struct.openvpn_tcphdr*
  store %struct.openvpn_tcphdr* %21, %struct.openvpn_tcphdr** %11, align 8
  %22 = load %struct.openvpn_tcphdr*, %struct.openvpn_tcphdr** %11, align 8
  %23 = getelementptr inbounds %struct.openvpn_tcphdr, %struct.openvpn_tcphdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @OPENVPN_TCPH_GET_DOFF(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sle i32 %26, 8
  br i1 %27, label %33, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.buffer*, %struct.buffer** %3, align 8
  %31 = call i32 @BLEN(%struct.buffer* %30)
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %16
  br label %131

34:                                               ; preds = %28
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %6, align 4
  %39 = load %struct.openvpn_tcphdr*, %struct.openvpn_tcphdr** %11, align 8
  %40 = getelementptr inbounds %struct.openvpn_tcphdr, %struct.openvpn_tcphdr* %39, i64 1
  %41 = bitcast %struct.openvpn_tcphdr* %40 to i64*
  store i64* %41, i64** %8, align 8
  br label %42

42:                                               ; preds = %123, %34
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %131

45:                                               ; preds = %42
  %46 = load i64*, i64** %8, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @OPENVPN_TCPOPT_EOL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %131

51:                                               ; preds = %45
  %52 = load i64*, i64** %8, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @OPENVPN_TCPOPT_NOP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 1, i32* %7, align 4
  br label %121

57:                                               ; preds = %51
  %58 = load i64*, i64** %8, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp sle i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %57
  br label %131

69:                                               ; preds = %64
  %70 = load i64*, i64** %8, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @OPENVPN_TCPOPT_MAXSEG, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %120

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @OPENVPN_TCPOLEN_MAXSEG, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %123

79:                                               ; preds = %74
  %80 = load i64*, i64** %8, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 2
  %82 = load i64, i64* %81, align 8
  %83 = shl i64 %82, 8
  %84 = load i64*, i64** %8, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 3
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %79
  %93 = load i32, i32* @D_MSS, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @dmsg(i32 %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @htons(i32 %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %4, align 4
  %100 = ashr i32 %99, 8
  %101 = and i32 %100, 255
  %102 = sext i32 %101 to i64
  %103 = load i64*, i64** %8, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 2
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* %4, align 4
  %106 = and i32 %105, 255
  %107 = sext i32 %106 to i64
  %108 = load i64*, i64** %8, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 3
  store i64 %107, i64* %109, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @htons(i32 %110)
  %112 = load i32, i32* %10, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.openvpn_tcphdr*, %struct.openvpn_tcphdr** %11, align 8
  %116 = getelementptr inbounds %struct.openvpn_tcphdr, %struct.openvpn_tcphdr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ADJUST_CHECKSUM(i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %92, %79
  br label %120

120:                                              ; preds = %119, %69
  br label %121

121:                                              ; preds = %120, %56
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122, %78
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, %124
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i64*, i64** %8, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  store i64* %130, i64** %8, align 8
  br label %42

131:                                              ; preds = %15, %33, %68, %50, %42
  ret void
}

declare dso_local i32 @BLEN(%struct.buffer*) #1

declare dso_local i32 @verify_align_4(%struct.buffer*) #1

declare dso_local i64 @BPTR(%struct.buffer*) #1

declare dso_local i32 @OPENVPN_TCPH_GET_DOFF(i32) #1

declare dso_local i32 @dmsg(i32, i8*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ADJUST_CHECKSUM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
