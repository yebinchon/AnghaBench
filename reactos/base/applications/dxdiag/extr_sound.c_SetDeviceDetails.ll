; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_sound.c_SetDeviceDetails.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_sound.c_SetDeviceDetails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, i32 }

@MAXPNAMELEN = common dso_local global i32 0, align 4
@IDC_STATIC_DSOUND_PRODUCTID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_STATIC_DSOUND_VENDORID = common dso_local global i32 0, align 4
@MM_MSFT_WDMAUDIO_WAVEOUT = common dso_local global i64 0, align 8
@IDC_STATIC_DSOUND_TYPE = common dso_local global i32 0, align 4
@WM_SETTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 87, i32 68, i32 77, i32 0], align 4
@hInst = common dso_local global i32 0, align 4
@IDS_OPTION_YES = common dso_local global i32 0, align 4
@IDS_OPTION_NO = common dso_local global i32 0, align 4
@IDC_STATIC_DSOUND_STANDARD = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i64 0, align 8
@DIGCF_PRESENT = common dso_local global i32 0, align 4
@DIGCF_PROFILE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@IDC_STATIC_DSOUND_DEVICEID = common dso_local global i32 0, align 4
@SPDRP_MFG = common dso_local global i32 0, align 4
@IDC_STATIC_ADAPTER_PROVIDER = common dso_local global i32 0, align 4
@IDC_STATIC_DSOUND_DRIVER = common dso_local global i32 0, align 4
@IDC_STATIC_DSOUND_VERSION = common dso_local global i32 0, align 4
@IDC_STATIC_DSOUND_DATE = common dso_local global i32 0, align 4
@ERROR_NO_MORE_ITEMS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @SetDeviceDetails to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetDeviceDetails(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca [30 x i32], align 16
  %11 = alloca [3 x i32], align 4
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %15 = call i32 (...) @waveOutGetNumDevs()
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %91

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %88, %18
  %20 = call i32 @ZeroMemory(%struct.TYPE_9__* %12, i32 24)
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = call i64 @waveOutGetDevCapsW(i32 %21, %struct.TYPE_9__* %12, i32 24)
  store i64 %23, i64* %14, align 8
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MAXPNAMELEN, align 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wcslen(i32 %29)
  %31 = call i32 @min(i32 %27, i32 %30)
  %32 = call i32 @wcsncmp(i32 %24, i32 %26, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %79, label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @IDC_STATIC_DSOUND_PRODUCTID, align 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i32 @SetDlgItemInt(i32 %35, i32 %36, i64 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @IDC_STATIC_DSOUND_VENDORID, align 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @SetDlgItemInt(i32 %41, i32 %42, i64 %44, i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MM_MSFT_WDMAUDIO_WAVEOUT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %34
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @IDC_STATIC_DSOUND_TYPE, align 4
  %54 = load i32, i32* @WM_SETTEXT, align 4
  %55 = call i32 @SendDlgItemMessageW(i32 %52, i32 %53, i32 %54, i32 0, i32 ptrtoint ([4 x i32]* @.str to i32))
  br label %56

56:                                               ; preds = %51, %34
  %57 = getelementptr inbounds [30 x i32], [30 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %57, align 16
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32, i32* @hInst, align 4
  %63 = load i32, i32* @IDS_OPTION_YES, align 4
  %64 = getelementptr inbounds [30 x i32], [30 x i32]* %10, i64 0, i64 0
  %65 = call i32 @LoadStringW(i32 %62, i32 %63, i32* %64, i32 30)
  br label %71

66:                                               ; preds = %56
  %67 = load i32, i32* @hInst, align 4
  %68 = load i32, i32* @IDS_OPTION_NO, align 4
  %69 = getelementptr inbounds [30 x i32], [30 x i32]* %10, i64 0, i64 0
  %70 = call i32 @LoadStringW(i32 %67, i32 %68, i32* %69, i32 30)
  br label %71

71:                                               ; preds = %66, %61
  %72 = getelementptr inbounds [30 x i32], [30 x i32]* %10, i64 0, i64 29
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @IDC_STATIC_DSOUND_STANDARD, align 4
  %75 = load i32, i32* @WM_SETTEXT, align 4
  %76 = getelementptr inbounds [30 x i32], [30 x i32]* %10, i64 0, i64 0
  %77 = ptrtoint i32* %76 to i32
  %78 = call i32 @SendDlgItemMessageW(i32 %73, i32 %74, i32 %75, i32 0, i32 %77)
  br label %90

79:                                               ; preds = %19
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* @MMSYSERR_NOERROR, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %85, %86
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i1 [ false, %80 ], [ %87, %84 ]
  br i1 %89, label %19, label %90

90:                                               ; preds = %88, %71
  br label %91

91:                                               ; preds = %90, %3
  store i32 0, i32* %8, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @DIGCF_PRESENT, align 4
  %94 = load i32, i32* @DIGCF_PROFILE, align 4
  %95 = or i32 %93, %94
  %96 = call i64 @SetupDiGetClassDevsW(i32 %92, i32* null, i32* null, i32 %95)
  store i64 %96, i64* %7, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %165

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %159, %101
  %103 = call i32 @ZeroMemory(%struct.TYPE_9__* %9, i32 24)
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  store i32 24, i32* %104, align 8
  %105 = load i64, i64* %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i64 @SetupDiEnumDeviceInfo(i64 %105, i32 %106, %struct.TYPE_9__* %9)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %151

109:                                              ; preds = %102
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds [30 x i32], [30 x i32]* %10, i64 0, i64 0
  %112 = call i64 @SetupDiGetDeviceInstanceId(i64 %110, %struct.TYPE_9__* %9, i32* %111, i32 30, i32* null)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @IDC_STATIC_DSOUND_DEVICEID, align 4
  %117 = load i32, i32* @WM_SETTEXT, align 4
  %118 = getelementptr inbounds [30 x i32], [30 x i32]* %10, i64 0, i64 0
  %119 = ptrtoint i32* %118 to i32
  %120 = call i32 @SendDlgItemMessageW(i32 %115, i32 %116, i32 %117, i32 0, i32 %119)
  br label %121

121:                                              ; preds = %114, %109
  %122 = load i64, i64* %7, align 8
  %123 = load i32, i32* @SPDRP_MFG, align 4
  %124 = getelementptr inbounds [30 x i32], [30 x i32]* %10, i64 0, i64 0
  %125 = ptrtoint i32* %124 to i32
  %126 = call i64 @SetupDiGetDeviceRegistryPropertyW(i64 %122, %struct.TYPE_9__* %9, i32 %123, i32* null, i32 %125, i32 120, i32* null)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @IDC_STATIC_ADAPTER_PROVIDER, align 4
  %131 = load i32, i32* @WM_SETTEXT, align 4
  %132 = getelementptr inbounds [30 x i32], [30 x i32]* %10, i64 0, i64 0
  %133 = ptrtoint i32* %132 to i32
  %134 = call i32 @SendDlgItemMessageW(i32 %129, i32 %130, i32 %131, i32 0, i32 %133)
  br label %135

135:                                              ; preds = %128, %121
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @IDC_STATIC_DSOUND_DRIVER, align 4
  %138 = call i32 @GetDlgItem(i32 %136, i32 %137)
  %139 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @IDC_STATIC_DSOUND_VERSION, align 4
  %142 = call i32 @GetDlgItem(i32 %140, i32 %141)
  %143 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @IDC_STATIC_DSOUND_DATE, align 4
  %146 = call i32 @GetDlgItem(i32 %144, i32 %145)
  %147 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %146, i32* %147, align 4
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %149 = load i64, i64* %7, align 8
  %150 = call i32 @EnumerateDrivers(i32* %148, i64 %149, %struct.TYPE_9__* %9)
  br label %162

151:                                              ; preds = %102
  %152 = call i64 (...) @GetLastError()
  %153 = load i64, i64* @ERROR_NO_MORE_ITEMS, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %162

156:                                              ; preds = %151
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %159

159:                                              ; preds = %156
  %160 = load i64, i64* @TRUE, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %102, label %162

162:                                              ; preds = %159, %155, %135
  %163 = load i64, i64* %7, align 8
  %164 = call i32 @SetupDiDestroyDeviceInfoList(i64 %163)
  br label %165

165:                                              ; preds = %162, %100
  ret void
}

declare dso_local i32 @waveOutGetNumDevs(...) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @waveOutGetDevCapsW(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @wcsncmp(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @wcslen(i32) #1

declare dso_local i32 @SetDlgItemInt(i32, i32, i64, i32) #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i64 @SetupDiGetClassDevsW(i32, i32*, i32*, i32) #1

declare dso_local i64 @SetupDiEnumDeviceInfo(i64, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @SetupDiGetDeviceInstanceId(i64, %struct.TYPE_9__*, i32*, i32, i32*) #1

declare dso_local i64 @SetupDiGetDeviceRegistryPropertyW(i64, %struct.TYPE_9__*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @EnumerateDrivers(i32*, i64, %struct.TYPE_9__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @SetupDiDestroyDeviceInfoList(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
