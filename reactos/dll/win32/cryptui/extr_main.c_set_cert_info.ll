; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_set_cert_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_set_cert_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_17__*, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i64, i32 }

@IDC_CERTIFICATE_ICON = common dso_local global i32 0, align 4
@IDC_CERTIFICATE_INFO = common dso_local global i32 0, align 4
@CERT_TRUST_IS_PARTIAL_CHAIN = common dso_local global i32 0, align 4
@IDB_CERT_WARNING = common dso_local global i32 0, align 4
@IDB_CERT_ERROR = common dso_local global i32 0, align 4
@IDB_CERT = common dso_local global i32 0, align 4
@CFM_BOLD = common dso_local global i32 0, align 4
@CFE_BOLD = common dso_local global i32 0, align 4
@EM_SETCHARFORMAT = common dso_local global i32 0, align 4
@SCF_SELECTION = common dso_local global i32 0, align 4
@PFM_STARTINDENT = common dso_local global i32 0, align 4
@MY_INDENT = common dso_local global i32 0, align 4
@IDS_CERTIFICATEINFORMATION = common dso_local global i32 0, align 4
@IDC_CERTIFICATE_STATUS = common dso_local global i32 0, align 4
@TRUST_E_CERT_SIGNATURE = common dso_local global i64 0, align 8
@IDS_CERT_INFO_BAD_SIG = common dso_local global i32 0, align 4
@IDS_CERT_INFO_PARTIAL_CHAIN = common dso_local global i32 0, align 4
@IDS_CERT_INFO_UNTRUSTED_CA = common dso_local global i32 0, align 4
@IDS_CERT_INFO_UNTRUSTED_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_18__*)* @set_cert_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cert_info(i32 %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_22__, align 4
  %6 = alloca %struct.TYPE_19__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IDC_CERTIFICATE_ICON, align 4
  %13 = call i32 @GetDlgItem(i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @IDC_CERTIFICATE_INFO, align 4
  %16 = call i32 @GetDlgItem(i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_20__* @WTHelperGetProvSignerFromChain(i32* %21, i32 %24, i32 %27, i32 %30)
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %9, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i64 %39
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %10, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = icmp ne %struct.TYPE_17__* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %2
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CERT_TRUST_IS_PARTIAL_CHAIN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45, %2
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @IDB_CERT_WARNING, align 4
  %58 = call i32 @add_icon_to_control(i32 %56, i32 %57)
  br label %73

59:                                               ; preds = %45
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @IDB_CERT_ERROR, align 4
  %67 = call i32 @add_icon_to_control(i32 %65, i32 %66)
  br label %72

68:                                               ; preds = %59
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @IDB_CERT, align 4
  %71 = call i32 @add_icon_to_control(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %55
  %74 = call i32 @memset(%struct.TYPE_22__* %5, i32 0, i32 12)
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  store i32 12, i32* %75, align 4
  %76 = load i32, i32* @CFM_BOLD, align 4
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 2
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @CFE_BOLD, align 4
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @EM_SETCHARFORMAT, align 4
  %82 = load i32, i32* @SCF_SELECTION, align 4
  %83 = ptrtoint %struct.TYPE_22__* %5 to i32
  %84 = call i32 @SendMessageW(i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  store i32 12, i32* %85, align 4
  %86 = load i32, i32* @PFM_STARTINDENT, align 4
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* @MY_INDENT, align 4
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @IDS_CERTIFICATEINFORMATION, align 4
  %92 = call i32 @add_string_resource_with_paraformat_to_control(i32 %90, i32 %91, %struct.TYPE_19__* %6)
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @IDC_CERTIFICATE_STATUS, align 4
  %95 = call i32 @GetDlgItem(i32 %93, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @EM_SETCHARFORMAT, align 4
  %98 = load i32, i32* @SCF_SELECTION, align 4
  %99 = ptrtoint %struct.TYPE_22__* %5 to i32
  %100 = call i32 @SendMessageW(i32 %96, i32 %97, i32 %98, i32 %99)
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TRUST_E_CERT_SIGNATURE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %73
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @IDS_CERT_INFO_BAD_SIG, align 4
  %109 = call i32 @add_string_resource_with_paraformat_to_control(i32 %107, i32 %108, %struct.TYPE_19__* %6)
  br label %162

110:                                              ; preds = %73
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = icmp ne %struct.TYPE_17__* %113, null
  br i1 %114, label %115, label %125

115:                                              ; preds = %110
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @CERT_TRUST_IS_PARTIAL_CHAIN, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %115, %110
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @IDS_CERT_INFO_PARTIAL_CHAIN, align 4
  %128 = call i32 @add_string_resource_with_paraformat_to_control(i32 %126, i32 %127, %struct.TYPE_19__* %6)
  br label %161

129:                                              ; preds = %115
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %153, label %134

134:                                              ; preds = %129
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @IDS_CERT_INFO_UNTRUSTED_CA, align 4
  %147 = call i32 @add_string_resource_with_paraformat_to_control(i32 %145, i32 %146, %struct.TYPE_19__* %6)
  br label %152

148:                                              ; preds = %139, %134
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @IDS_CERT_INFO_UNTRUSTED_ROOT, align 4
  %151 = call i32 @add_string_resource_with_paraformat_to_control(i32 %149, i32 %150, %struct.TYPE_19__* %6)
  br label %152

152:                                              ; preds = %148, %144
  br label %160

153:                                              ; preds = %129
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %156 = call i32 @set_policy_text(i32 %154, %struct.TYPE_18__* %155)
  %157 = load i32, i32* %3, align 4
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %159 = call i32 @set_issuer_statement(i32 %157, %struct.TYPE_18__* %158)
  br label %160

160:                                              ; preds = %153, %152
  br label %161

161:                                              ; preds = %160, %125
  br label %162

162:                                              ; preds = %161, %106
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local %struct.TYPE_20__* @WTHelperGetProvSignerFromChain(i32*, i32, i32, i32) #1

declare dso_local i32 @add_icon_to_control(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @add_string_resource_with_paraformat_to_control(i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @set_policy_text(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @set_issuer_statement(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
