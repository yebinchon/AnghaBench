; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_show_cert_usages.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_show_cert_usages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_cert_data = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i32 }

@IDC_CERTIFICATE_USAGES = common dso_local global i64 0, align 8
@PurposeEnableAll = common dso_local global i64 0, align 8
@LVCF_WIDTH = common dso_local global i32 0, align 4
@LVM_INSERTCOLUMNW = common dso_local global i32 0, align 4
@LVM_SETIMAGELIST = common dso_local global i32 0, align 4
@LVSIL_STATE = common dso_local global i32 0, align 4
@CERT_FIND_PROP_ONLY_ENHKEY_USAGE_FLAG = common dso_local global i32 0, align 4
@PurposeEnableSelected = common dso_local global i64 0, align 8
@PurposeDisableAll = common dso_local global i64 0, align 8
@CERT_FIND_EXT_ONLY_ENHKEY_USAGE_FLAG = common dso_local global i32 0, align 4
@CRYPT_OID_INFO_OID_KEY = common dso_local global i32 0, align 4
@CRYPT_ENHKEY_USAGE_OID_GROUP_ID = common dso_local global i32 0, align 4
@CheckBitmapIndexDisabledChecked = common dso_local global i32 0, align 4
@IDC_ENABLE_ALL_PURPOSES = common dso_local global i64 0, align 8
@BM_CLICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.edit_cert_data*)* @show_cert_usages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_cert_usages(i32 %0, %struct.edit_cert_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edit_cert_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.edit_cert_data* %1, %struct.edit_cert_data** %4, align 8
  %14 = load %struct.edit_cert_data*, %struct.edit_cert_data** %4, align 8
  %15 = getelementptr inbounds %struct.edit_cert_data, %struct.edit_cert_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i64, i64* @IDC_CERTIFICATE_USAGES, align 8
  %19 = call i32 @GetDlgItem(i32 %17, i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i64, i64* @PurposeEnableAll, align 8
  store i64 %20, i64* %11, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @GetWindowRect(i32 %21, %struct.TYPE_8__* %9)
  %23 = load i32, i32* @LVCF_WIDTH, align 4
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %26, %28
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @LVM_INSERTCOLUMNW, align 4
  %33 = ptrtoint %struct.TYPE_10__* %10 to i32
  %34 = call i32 @SendMessageW(i32 %31, i32 %32, i32 0, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @LVM_SETIMAGELIST, align 4
  %37 = load i32, i32* @LVSIL_STATE, align 4
  %38 = load %struct.edit_cert_data*, %struct.edit_cert_data** %4, align 8
  %39 = getelementptr inbounds %struct.edit_cert_data, %struct.edit_cert_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @SendMessageW(i32 %35, i32 %36, i32 %37, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @CERT_FIND_PROP_ONLY_ENHKEY_USAGE_FLAG, align 4
  %45 = call i64 @CertGetEnhancedKeyUsage(i32 %43, i32 %44, %struct.TYPE_9__* null, i64* %8)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %2
  %48 = call i32 (...) @GetProcessHeap()
  %49 = load i64, i64* %8, align 8
  %50 = call %struct.TYPE_9__* @HeapAlloc(i32 %48, i32 0, i64 %49)
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %7, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @CERT_FIND_PROP_ONLY_ENHKEY_USAGE_FLAG, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = call i64 @CertGetEnhancedKeyUsage(i32 %51, i32 %52, %struct.TYPE_9__* %53, i64* %8)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %47
  %57 = call i32 (...) @GetProcessHeap()
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %59 = call i32 @HeapFree(i32 %57, i32 0, %struct.TYPE_9__* %58)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  br label %70

60:                                               ; preds = %47
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i64, i64* @PurposeEnableSelected, align 8
  store i64 %66, i64* %11, align 8
  br label %69

67:                                               ; preds = %60
  %68 = load i64, i64* @PurposeDisableAll, align 8
  store i64 %68, i64* %11, align 8
  br label %69

69:                                               ; preds = %67, %65
  br label %70

70:                                               ; preds = %69, %56
  br label %103

71:                                               ; preds = %2
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @CERT_FIND_EXT_ONLY_ENHKEY_USAGE_FLAG, align 4
  %74 = call i64 @CertGetEnhancedKeyUsage(i32 %72, i32 %73, %struct.TYPE_9__* null, i64* %8)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %71
  %77 = call i32 (...) @GetProcessHeap()
  %78 = load i64, i64* %8, align 8
  %79 = call %struct.TYPE_9__* @HeapAlloc(i32 %77, i32 0, i64 %78)
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %7, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @CERT_FIND_EXT_ONLY_ENHKEY_USAGE_FLAG, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = call i64 @CertGetEnhancedKeyUsage(i32 %80, i32 %81, %struct.TYPE_9__* %82, i64* %8)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %76
  %86 = call i32 (...) @GetProcessHeap()
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = call i32 @HeapFree(i32 %86, i32 0, %struct.TYPE_9__* %87)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  br label %99

89:                                               ; preds = %76
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i64, i64* @PurposeEnableAll, align 8
  store i64 %95, i64* %11, align 8
  br label %98

96:                                               ; preds = %89
  %97 = load i64, i64* @PurposeDisableAll, align 8
  store i64 %97, i64* %11, align 8
  br label %98

98:                                               ; preds = %96, %94
  br label %99

99:                                               ; preds = %98, %85
  br label %102

100:                                              ; preds = %71
  %101 = load i64, i64* @PurposeEnableAll, align 8
  store i64 %101, i64* %11, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  br label %102

102:                                              ; preds = %100, %99
  br label %103

103:                                              ; preds = %102, %70
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = icmp ne %struct.TYPE_9__* %104, null
  br i1 %105, label %106, label %147

106:                                              ; preds = %103
  store i64 0, i64* %12, align 8
  br label %107

107:                                              ; preds = %140, %106
  %108 = load i64, i64* %12, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ult i64 %108, %111
  br i1 %112, label %113, label %143

113:                                              ; preds = %107
  %114 = load i32, i32* @CRYPT_OID_INFO_OID_KEY, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* %12, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @CRYPT_ENHKEY_USAGE_OID_GROUP_ID, align 4
  %122 = call i64 @CryptFindOIDInfo(i32 %114, i32 %120, i32 %121)
  store i64 %122, i64* %13, align 8
  %123 = load i64, i64* %13, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %113
  %126 = load i32, i32* %6, align 4
  %127 = load i64, i64* %13, align 8
  %128 = load i32, i32* @CheckBitmapIndexDisabledChecked, align 4
  %129 = call i32 @add_known_usage(i32 %126, i64 %127, i32 %128)
  br label %139

130:                                              ; preds = %113
  %131 = load i32, i32* %3, align 4
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* %12, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @add_purpose(i32 %131, i32 %137)
  br label %139

139:                                              ; preds = %130, %125
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %12, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %12, align 8
  br label %107

143:                                              ; preds = %107
  %144 = call i32 (...) @GetProcessHeap()
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %146 = call i32 @HeapFree(i32 %144, i32 0, %struct.TYPE_9__* %145)
  br label %151

147:                                              ; preds = %103
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @CheckBitmapIndexDisabledChecked, align 4
  %150 = call i32 @add_known_usages_to_list(i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %143
  %152 = load i32, i32* %3, align 4
  %153 = load i64, i64* %11, align 8
  %154 = call i32 @select_purposes(i32 %152, i64 %153)
  %155 = load i32, i32* %3, align 4
  %156 = load i64, i64* @IDC_ENABLE_ALL_PURPOSES, align 8
  %157 = load i64, i64* %11, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @GetDlgItem(i32 %155, i64 %158)
  %160 = load i32, i32* @BM_CLICK, align 4
  %161 = call i32 @SendMessageW(i32 %159, i32 %160, i32 0, i32 0)
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i64) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i64 @CertGetEnhancedKeyUsage(i32, i32, %struct.TYPE_9__*, i64*) #1

declare dso_local %struct.TYPE_9__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i64 @CryptFindOIDInfo(i32, i32, i32) #1

declare dso_local i32 @add_known_usage(i32, i64, i32) #1

declare dso_local i32 @add_purpose(i32, i32) #1

declare dso_local i32 @add_known_usages_to_list(i32, i32) #1

declare dso_local i32 @select_purposes(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
