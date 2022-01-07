; ModuleID = '/home/carl/AnghaBench/reactos/dll/shellext/deskmon/extr_deskmon.c_UpdateRefreshFrequencyList.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/shellext/deskmon/extr_deskmon.c_UpdateRefreshFrequencyList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* (i32, i32)*, %struct.TYPE_9__* (i32)* }
%struct.TYPE_9__ = type { i64, i64, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@IDC_REFRESHRATE = common dso_local global i32 0, align 4
@CB_RESETCONTENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@hInstance = common dso_local global i32 0, align 4
@IDS_USEDEFFRQUENCY = common dso_local global i32 0, align 4
@IDS_FREQFMT = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_SETITEMDATA = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@IDS_MONITORSETTINGSGROUP = common dso_local global i32 0, align 4
@IDS_REFRESHRATELABEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @UpdateRefreshFrequencyList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UpdateRefreshFrequencyList(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca [64 x i32], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [64 x i32], align 16
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %10, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IDC_REFRESHRATE, align 4
  %18 = load i32, i32* @CB_RESETCONTENT, align 4
  %19 = call i64 @SendDlgItemMessage(i32 %16, i32 %17, i32 %18, i32 0, i32 0)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_9__* (i32)*, %struct.TYPE_9__* (i32)** %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.TYPE_9__* %24(i32 %29)
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %4, align 8
  store i64 0, i64* %7, align 8
  br label %31

31:                                               ; preds = %150, %1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__* (i32, i32)*, %struct.TYPE_9__* (i32, i32)** %35, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %7, align 8
  %44 = trunc i64 %42 to i32
  %45 = call %struct.TYPE_9__* %36(i32 %41, i32 %44)
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %5, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = icmp ne %struct.TYPE_9__* %46, null
  br i1 %47, label %48, label %149

48:                                               ; preds = %31
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %149

56:                                               ; preds = %48
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %149

64:                                               ; preds = %56
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %149

72:                                               ; preds = %64
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp sle i32 %75, 1
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %150

81:                                               ; preds = %77
  %82 = load i64, i64* @TRUE, align 8
  store i64 %82, i64* %9, align 8
  %83 = load i32, i32* @hInstance, align 4
  %84 = load i32, i32* @IDS_USEDEFFRQUENCY, align 4
  %85 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %86 = call i32 @LoadString(i32 %83, i32 %84, i32* %85, i32 64)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = call i32 @TEXT(i8 signext 0)
  %90 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  store i32 %89, i32* %90, align 16
  br label %91

91:                                               ; preds = %88, %81
  br label %108

92:                                               ; preds = %72
  %93 = load i32, i32* @hInstance, align 4
  %94 = load i32, i32* @IDS_FREQFMT, align 4
  %95 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %96 = call i32 @LoadString(i32 %93, i32 %94, i32* %95, i32 64)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %92
  %99 = call i32 @TEXT(i8 signext 0)
  %100 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  store i32 %99, i32* %100, align 16
  br label %101

101:                                              ; preds = %98, %92
  %102 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %103 = getelementptr inbounds [64 x i32], [64 x i32]* %11, i64 0, i64 0
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @_sntprintf(i32* %102, i32 64, i32* %103, i32 %106)
  br label %108

108:                                              ; preds = %101, %91
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IDC_REFRESHRATE, align 4
  %113 = load i32, i32* @CB_ADDSTRING, align 4
  %114 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %115 = ptrtoint i32* %114 to i32
  %116 = call i64 @SendDlgItemMessage(i32 %111, i32 %112, i32 %113, i32 0, i32 %115)
  store i64 %116, i64* %8, align 8
  %117 = load i64, i64* %8, align 8
  %118 = icmp sge i64 %117, 0
  br i1 %118, label %119, label %148

119:                                              ; preds = %108
  %120 = load i64, i64* @TRUE, align 8
  store i64 %120, i64* %10, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @IDC_REFRESHRATE, align 4
  %125 = load i32, i32* @CB_SETITEMDATA, align 4
  %126 = load i64, i64* %8, align 8
  %127 = trunc i64 %126 to i32
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %129 = ptrtoint %struct.TYPE_9__* %128 to i32
  %130 = call i64 @SendDlgItemMessage(i32 %123, i32 %124, i32 %125, i32 %127, i32 %129)
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %133, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %119
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @IDC_REFRESHRATE, align 4
  %143 = load i32, i32* @CB_SETCURSEL, align 4
  %144 = load i64, i64* %8, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i64 @SendDlgItemMessage(i32 %141, i32 %142, i32 %143, i32 %145, i32 0)
  br label %147

147:                                              ; preds = %138, %119
  br label %148

148:                                              ; preds = %147, %108
  br label %149

149:                                              ; preds = %148, %64, %56, %48, %31
  br label %150

150:                                              ; preds = %149, %80
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %152 = icmp ne %struct.TYPE_9__* %151, null
  br i1 %152, label %31, label %153

153:                                              ; preds = %150
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @IDS_MONITORSETTINGSGROUP, align 4
  %158 = call i32 @GetDlgItem(i32 %156, i32 %157)
  %159 = load i64, i64* %10, align 8
  %160 = call i32 @EnableWindow(i32 %158, i64 %159)
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @IDS_REFRESHRATELABEL, align 4
  %165 = call i32 @GetDlgItem(i32 %163, i32 %164)
  %166 = load i64, i64* %10, align 8
  %167 = call i32 @EnableWindow(i32 %165, i64 %166)
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @IDC_REFRESHRATE, align 4
  %172 = call i32 @GetDlgItem(i32 %170, i32 %171)
  %173 = load i64, i64* %10, align 8
  %174 = call i32 @EnableWindow(i32 %172, i64 %173)
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %176 = call i32 @GetPruningSettings(%struct.TYPE_10__* %175)
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i64 @SendDlgItemMessage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @LoadString(i32, i32, i32*, i32) #1

declare dso_local i32 @TEXT(i8 signext) #1

declare dso_local i32 @_sntprintf(i32*, i32, i32*, i32) #1

declare dso_local i32 @EnableWindow(i32, i64) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @GetPruningSettings(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
