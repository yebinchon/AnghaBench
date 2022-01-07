; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_convert.c_ConvExecute.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_convert.c_ConvExecute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i8*, i32 }

@IDC_COMBO_CATEGORY = common dso_local global i32 0, align 4
@CB_GETCURSEL = common dso_local global i32 0, align 4
@IDC_COMBO_FROM = common dso_local global i32 0, align 4
@IDC_COMBO_TO = common dso_local global i32 0, align 4
@CB_GETLBTEXT = common dso_local global i32 0, align 4
@conv_table = common dso_local global %struct.TYPE_12__* null, align 8
@calc = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@WM_HANDLE_FROM = common dso_local global i32 0, align 4
@WM_HANDLE_TO = common dso_local global i32 0, align 4
@WM_START_CONV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConvExecute(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [128 x %struct.TYPE_12__], align 16
  %8 = alloca [128 x %struct.TYPE_12__], align 16
  %9 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @IDC_COMBO_CATEGORY, align 4
  %12 = load i32, i32* @CB_GETCURSEL, align 4
  %13 = call i64 @SendDlgItemMessage(i32 %10, i32 %11, i32 %12, i64 0, i32 0)
  store i64 %13, i64* %3, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @IDC_COMBO_FROM, align 4
  %16 = load i32, i32* @CB_GETCURSEL, align 4
  %17 = call i64 @SendDlgItemMessage(i32 %14, i32 %15, i32 %16, i64 0, i32 0)
  store i64 %17, i64* %5, align 8
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @IDC_COMBO_TO, align 4
  %20 = load i32, i32* @CB_GETCURSEL, align 4
  %21 = call i64 @SendDlgItemMessage(i32 %18, i32 %19, i32 %20, i64 0, i32 0)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %170

26:                                               ; preds = %1
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @IDC_COMBO_CATEGORY, align 4
  %29 = load i32, i32* @CB_GETLBTEXT, align 4
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds [128 x %struct.TYPE_12__], [128 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %32 = ptrtoint %struct.TYPE_12__* %31 to i32
  %33 = call i64 @SendDlgItemMessage(i32 %27, i32 %28, i32 %29, i64 %30, i32 %32)
  store i64 0, i64* %3, align 8
  br label %34

34:                                               ; preds = %61, %26
  %35 = load i64, i64* %3, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** @conv_table, align 8
  %37 = call i64 @SIZEOF(%struct.TYPE_12__* %36)
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %34
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @calc, i32 0, i32 1), align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** @conv_table, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds [128 x %struct.TYPE_12__], [128 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %47 = getelementptr inbounds [128 x %struct.TYPE_12__], [128 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %48 = call i64 @SIZEOF(%struct.TYPE_12__* %47)
  %49 = call i32 @LoadString(i32 %40, i64 %45, %struct.TYPE_12__* %46, i64 %48)
  %50 = getelementptr inbounds [128 x %struct.TYPE_12__], [128 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %51 = getelementptr inbounds [128 x %struct.TYPE_12__], [128 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %52 = call i32 @_tcscmp(%struct.TYPE_12__* %50, %struct.TYPE_12__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %39
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** @conv_table, align 8
  %56 = load i64, i64* %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %4, align 8
  br label %64

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %3, align 8
  br label %34

64:                                               ; preds = %54, %34
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %9, align 8
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @IDC_COMBO_FROM, align 4
  %68 = load i32, i32* @CB_GETLBTEXT, align 4
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds [128 x %struct.TYPE_12__], [128 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %71 = ptrtoint %struct.TYPE_12__* %70 to i32
  %72 = call i64 @SendDlgItemMessage(i32 %66, i32 %67, i32 %68, i64 %69, i32 %71)
  br label %73

73:                                               ; preds = %98, %64
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %73
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @calc, i32 0, i32 1), align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds [128 x %struct.TYPE_12__], [128 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %84 = getelementptr inbounds [128 x %struct.TYPE_12__], [128 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %85 = call i64 @SIZEOF(%struct.TYPE_12__* %84)
  %86 = call i32 @LoadString(i32 %79, i64 %82, %struct.TYPE_12__* %83, i64 %85)
  %87 = getelementptr inbounds [128 x %struct.TYPE_12__], [128 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %88 = getelementptr inbounds [128 x %struct.TYPE_12__], [128 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %89 = call i32 @_tcscmp(%struct.TYPE_12__* %87, %struct.TYPE_12__* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %78
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %94 = ptrtoint %struct.TYPE_11__* %92 to i64
  %95 = ptrtoint %struct.TYPE_11__* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 24
  store i64 %97, i64* %5, align 8
  br label %101

98:                                               ; preds = %78
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 1
  store %struct.TYPE_11__* %100, %struct.TYPE_11__** %9, align 8
  br label %73

101:                                              ; preds = %91, %73
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @IDC_COMBO_TO, align 4
  %104 = load i32, i32* @CB_GETLBTEXT, align 4
  %105 = load i64, i64* %6, align 8
  %106 = getelementptr inbounds [128 x %struct.TYPE_12__], [128 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %107 = ptrtoint %struct.TYPE_12__* %106 to i32
  %108 = call i64 @SendDlgItemMessage(i32 %102, i32 %103, i32 %104, i64 %105, i32 %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %109, %struct.TYPE_11__** %9, align 8
  br label %110

110:                                              ; preds = %135, %101
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %110
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @calc, i32 0, i32 1), align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds [128 x %struct.TYPE_12__], [128 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %121 = getelementptr inbounds [128 x %struct.TYPE_12__], [128 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %122 = call i64 @SIZEOF(%struct.TYPE_12__* %121)
  %123 = call i32 @LoadString(i32 %116, i64 %119, %struct.TYPE_12__* %120, i64 %122)
  %124 = getelementptr inbounds [128 x %struct.TYPE_12__], [128 x %struct.TYPE_12__]* %7, i64 0, i64 0
  %125 = getelementptr inbounds [128 x %struct.TYPE_12__], [128 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %126 = call i32 @_tcscmp(%struct.TYPE_12__* %124, %struct.TYPE_12__* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %115
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %131 = ptrtoint %struct.TYPE_11__* %129 to i64
  %132 = ptrtoint %struct.TYPE_11__* %130 to i64
  %133 = sub i64 %131, %132
  %134 = sdiv exact i64 %133, 24
  store i64 %134, i64* %6, align 8
  br label %138

135:                                              ; preds = %115
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 1
  store %struct.TYPE_11__* %137, %struct.TYPE_11__** %9, align 8
  br label %110

138:                                              ; preds = %128, %110
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %140 = load i64, i64* %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i8*
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @calc, i32 0, i32 0), align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  store i8* %144, i8** %147, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %149 = load i64, i64* %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to i8*
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @calc, i32 0, i32 0), align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i64 1
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  store i8* %153, i8** %156, align 8
  %157 = load i32, i32* @WM_HANDLE_FROM, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @calc, i32 0, i32 0), align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i64 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 8
  %161 = load i32, i32* @WM_HANDLE_TO, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @calc, i32 0, i32 0), align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 1
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 8
  %165 = load i32, i32* %2, align 4
  %166 = load i32, i32* @WM_START_CONV, align 4
  %167 = load i32, i32* @WM_HANDLE_FROM, align 4
  %168 = call i32 @MAKELPARAM(i32 0, i32 %167)
  %169 = call i32 @PostMessage(i32 %165, i32 %166, i32 0, i32 %168)
  br label %170

170:                                              ; preds = %138, %25
  ret void
}

declare dso_local i64 @SendDlgItemMessage(i32, i32, i32, i64, i32) #1

declare dso_local i64 @SIZEOF(%struct.TYPE_12__*) #1

declare dso_local i32 @LoadString(i32, i64, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @_tcscmp(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @PostMessage(i32, i32, i32, i32) #1

declare dso_local i32 @MAKELPARAM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
