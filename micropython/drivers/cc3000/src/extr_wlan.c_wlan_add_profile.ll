; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_wlan.c_wlan_add_profile.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_wlan.c_wlan_add_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@tSLInformation = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HEADERS_SIZE_CMD = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_ADD_PROFILE_NOSEC_PARAM_LEN = common dso_local global i32 0, align 4
@WLAN_ADD_PROFILE_WEP_PARAM_LEN = common dso_local global i32 0, align 4
@WLAN_ADD_PROFILE_WPA_PARAM_LEN = common dso_local global i32 0, align 4
@HCI_CMND_WLAN_IOCTL_ADD_PROFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_add_profile(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca [6 x i32], align 16
  %27 = alloca i32*, align 8
  store i32 %0, i32* %11, align 4
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i32 %9, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %24, align 4
  %28 = bitcast [6 x i32]* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %28, i8 0, i64 24, i1 false)
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tSLInformation, i32 0, i32 0), align 8
  store i32* %29, i32** %23, align 8
  %30 = load i32*, i32** %23, align 8
  %31 = load i32, i32* @HEADERS_SIZE_CMD, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32* %33, i32** %25, align 8
  %34 = load i32*, i32** %25, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32* @UINT32_TO_STREAM(i32* %34, i32 %35)
  store i32* %36, i32** %25, align 8
  %37 = load i32, i32* %11, align 4
  switch i32 %37, label %184 [
    i32 131, label %38
    i32 130, label %69
    i32 129, label %131
    i32 128, label %131
  ]

38:                                               ; preds = %10
  %39 = load i32*, i32** %25, align 8
  %40 = call i32* @UINT32_TO_STREAM(i32* %39, i32 20)
  store i32* %40, i32** %25, align 8
  %41 = load i32*, i32** %25, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i32* @UINT32_TO_STREAM(i32* %41, i32 %42)
  store i32* %43, i32** %25, align 8
  %44 = load i32*, i32** %25, align 8
  %45 = call i32* @UINT16_TO_STREAM(i32* %44, i32 0)
  store i32* %45, i32** %25, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load i32*, i32** %25, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* @ETH_ALEN, align 4
  %52 = call i32 @ARRAY_TO_STREAM(i32* %49, i32* %50, i32 %51)
  br label %58

53:                                               ; preds = %38
  %54 = load i32*, i32** %25, align 8
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 0
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @ARRAY_TO_STREAM(i32* %54, i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32*, i32** %25, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32* @UINT32_TO_STREAM(i32* %59, i32 %60)
  store i32* %61, i32** %25, align 8
  %62 = load i32*, i32** %25, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @ARRAY_TO_STREAM(i32* %62, i32* %63, i32 %64)
  %66 = load i32, i32* @WLAN_ADD_PROFILE_NOSEC_PARAM_LEN, align 4
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %21, align 4
  br label %184

69:                                               ; preds = %10
  %70 = load i32*, i32** %25, align 8
  %71 = call i32* @UINT32_TO_STREAM(i32* %70, i32 32)
  store i32* %71, i32** %25, align 8
  %72 = load i32*, i32** %25, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32* @UINT32_TO_STREAM(i32* %72, i32 %73)
  store i32* %74, i32** %25, align 8
  %75 = load i32*, i32** %25, align 8
  %76 = call i32* @UINT16_TO_STREAM(i32* %75, i32 0)
  store i32* %76, i32** %25, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = load i32*, i32** %25, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = load i32, i32* @ETH_ALEN, align 4
  %83 = call i32 @ARRAY_TO_STREAM(i32* %80, i32* %81, i32 %82)
  br label %89

84:                                               ; preds = %69
  %85 = load i32*, i32** %25, align 8
  %86 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 0
  %87 = load i32, i32* @ETH_ALEN, align 4
  %88 = call i32 @ARRAY_TO_STREAM(i32* %85, i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32*, i32** %25, align 8
  %91 = load i32, i32* %15, align 4
  %92 = call i32* @UINT32_TO_STREAM(i32* %90, i32 %91)
  store i32* %92, i32** %25, align 8
  %93 = load i32*, i32** %25, align 8
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 12, %94
  %96 = call i32* @UINT32_TO_STREAM(i32* %93, i32 %95)
  store i32* %96, i32** %25, align 8
  %97 = load i32*, i32** %25, align 8
  %98 = load i32, i32* %16, align 4
  %99 = call i32* @UINT32_TO_STREAM(i32* %97, i32 %98)
  store i32* %99, i32** %25, align 8
  %100 = load i32*, i32** %25, align 8
  %101 = load i32, i32* %17, align 4
  %102 = call i32* @UINT32_TO_STREAM(i32* %100, i32 %101)
  store i32* %102, i32** %25, align 8
  %103 = load i32*, i32** %25, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @ARRAY_TO_STREAM(i32* %103, i32* %104, i32 %105)
  store i32 0, i32* %24, align 4
  br label %107

107:                                              ; preds = %121, %89
  %108 = load i32, i32* %24, align 4
  %109 = icmp slt i32 %108, 4
  br i1 %109, label %110, label %124

110:                                              ; preds = %107
  %111 = load i32*, i32** %19, align 8
  %112 = load i32, i32* %24, align 4
  %113 = load i32, i32* %16, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  store i32* %116, i32** %27, align 8
  %117 = load i32*, i32** %25, align 8
  %118 = load i32*, i32** %27, align 8
  %119 = load i32, i32* %16, align 4
  %120 = call i32 @ARRAY_TO_STREAM(i32* %117, i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %24, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %24, align 4
  br label %107

124:                                              ; preds = %107
  %125 = load i32, i32* @WLAN_ADD_PROFILE_WEP_PARAM_LEN, align 4
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* %16, align 4
  %129 = mul nsw i32 %128, 4
  %130 = add nsw i32 %127, %129
  store i32 %130, i32* %21, align 4
  br label %184

131:                                              ; preds = %10, %10
  %132 = load i32*, i32** %25, align 8
  %133 = call i32* @UINT32_TO_STREAM(i32* %132, i32 40)
  store i32* %133, i32** %25, align 8
  %134 = load i32*, i32** %25, align 8
  %135 = load i32, i32* %13, align 4
  %136 = call i32* @UINT32_TO_STREAM(i32* %134, i32 %135)
  store i32* %136, i32** %25, align 8
  %137 = load i32*, i32** %25, align 8
  %138 = call i32* @UINT16_TO_STREAM(i32* %137, i32 0)
  store i32* %138, i32** %25, align 8
  %139 = load i32*, i32** %14, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %131
  %142 = load i32*, i32** %25, align 8
  %143 = load i32*, i32** %14, align 8
  %144 = load i32, i32* @ETH_ALEN, align 4
  %145 = call i32 @ARRAY_TO_STREAM(i32* %142, i32* %143, i32 %144)
  br label %151

146:                                              ; preds = %131
  %147 = load i32*, i32** %25, align 8
  %148 = getelementptr inbounds [6 x i32], [6 x i32]* %26, i64 0, i64 0
  %149 = load i32, i32* @ETH_ALEN, align 4
  %150 = call i32 @ARRAY_TO_STREAM(i32* %147, i32* %148, i32 %149)
  br label %151

151:                                              ; preds = %146, %141
  %152 = load i32*, i32** %25, align 8
  %153 = load i32, i32* %15, align 4
  %154 = call i32* @UINT32_TO_STREAM(i32* %152, i32 %153)
  store i32* %154, i32** %25, align 8
  %155 = load i32*, i32** %25, align 8
  %156 = load i32, i32* %16, align 4
  %157 = call i32* @UINT32_TO_STREAM(i32* %155, i32 %156)
  store i32* %157, i32** %25, align 8
  %158 = load i32*, i32** %25, align 8
  %159 = load i32, i32* %17, align 4
  %160 = call i32* @UINT32_TO_STREAM(i32* %158, i32 %159)
  store i32* %160, i32** %25, align 8
  %161 = load i32*, i32** %25, align 8
  %162 = load i32, i32* %18, align 4
  %163 = call i32* @UINT32_TO_STREAM(i32* %161, i32 %162)
  store i32* %163, i32** %25, align 8
  %164 = load i32*, i32** %25, align 8
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 8, %165
  %167 = call i32* @UINT32_TO_STREAM(i32* %164, i32 %166)
  store i32* %167, i32** %25, align 8
  %168 = load i32*, i32** %25, align 8
  %169 = load i32, i32* %20, align 4
  %170 = call i32* @UINT32_TO_STREAM(i32* %168, i32 %169)
  store i32* %170, i32** %25, align 8
  %171 = load i32*, i32** %25, align 8
  %172 = load i32*, i32** %12, align 8
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @ARRAY_TO_STREAM(i32* %171, i32* %172, i32 %173)
  %175 = load i32*, i32** %25, align 8
  %176 = load i32*, i32** %19, align 8
  %177 = load i32, i32* %20, align 4
  %178 = call i32 @ARRAY_TO_STREAM(i32* %175, i32* %176, i32 %177)
  %179 = load i32, i32* @WLAN_ADD_PROFILE_WPA_PARAM_LEN, align 4
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %20, align 4
  %183 = add nsw i32 %181, %182
  store i32 %183, i32* %21, align 4
  br label %184

184:                                              ; preds = %10, %151, %124, %58
  %185 = load i32, i32* @HCI_CMND_WLAN_IOCTL_ADD_PROFILE, align 4
  %186 = load i32*, i32** %23, align 8
  %187 = load i32, i32* %21, align 4
  %188 = call i32 @hci_command_send(i32 %185, i32* %186, i32 %187)
  %189 = load i32, i32* @HCI_CMND_WLAN_IOCTL_ADD_PROFILE, align 4
  %190 = call i32 @SimpleLinkWaitEvent(i32 %189, i32* %22)
  %191 = load i32, i32* %22, align 4
  ret i32 %191
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @UINT32_TO_STREAM(i32*, i32) #2

declare dso_local i32* @UINT16_TO_STREAM(i32*, i32) #2

declare dso_local i32 @ARRAY_TO_STREAM(i32*, i32*, i32) #2

declare dso_local i32 @hci_command_send(i32, i32*, i32) #2

declare dso_local i32 @SimpleLinkWaitEvent(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
