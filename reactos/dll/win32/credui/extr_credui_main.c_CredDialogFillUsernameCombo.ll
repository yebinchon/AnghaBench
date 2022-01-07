; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/credui/extr_credui_main.c_CredDialogFillUsernameCombo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/credui/extr_credui_main.c_CredDialogFillUsernameCombo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred_dialog_params = type { i32 }
%struct.TYPE_5__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32, i32*, i32 }

@FALSE = common dso_local global i64 0, align 8
@CREDUI_FLAGS_GENERIC_CREDENTIALS = common dso_local global i32 0, align 4
@CRED_TYPE_GENERIC = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@CBEIF_TEXT = common dso_local global i32 0, align 4
@CBEM_INSERTITEMW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.cred_dialog_params*)* @CredDialogFillUsernameCombo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CredDialogFillUsernameCombo(i32 %0, %struct.cred_dialog_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cred_dialog_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.cred_dialog_params* %1, %struct.cred_dialog_params** %4, align 8
  %11 = call i32 @CredEnumerateW(i32* null, i32 0, i64* %5, %struct.TYPE_5__*** %7)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %127

14:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  br label %15

15:                                               ; preds = %121, %14
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %124

19:                                               ; preds = %15
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %21, i64 %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %121

29:                                               ; preds = %19
  %30 = load %struct.cred_dialog_params*, %struct.cred_dialog_params** %4, align 8
  %31 = getelementptr inbounds %struct.cred_dialog_params, %struct.cred_dialog_params* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CREDUI_FLAGS_GENERIC_CREDENTIALS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %29
  %37 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %37, i64 %38
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CRED_TYPE_GENERIC, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %46, i64 %47
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  br label %121

51:                                               ; preds = %36
  br label %68

52:                                               ; preds = %29
  %53 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %54 = load i64, i64* %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %53, i64 %54
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CRED_TYPE_GENERIC, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %62, i64 %63
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  br label %121

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67, %51
  store i64 0, i64* %9, align 8
  br label %69

69:                                               ; preds = %99, %68
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %6, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %102

73:                                               ; preds = %69
  %74 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %74, i64 %75
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %98

81:                                               ; preds = %73
  %82 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %82, i64 %83
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %88, i64 %89
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @lstrcmpW(i32* %87, i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %81
  %97 = load i64, i64* @TRUE, align 8
  store i64 %97, i64* %10, align 8
  br label %102

98:                                               ; preds = %81, %73
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %9, align 8
  br label %69

102:                                              ; preds = %96, %69
  %103 = load i64, i64* %10, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %121

106:                                              ; preds = %102
  %107 = load i32, i32* @CBEIF_TEXT, align 4
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32 %107, i32* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 -1, i32* %109, align 8
  %110 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %111 = load i64, i64* %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %110, i64 %111
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i32* %115, i32** %116, align 8
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @CBEM_INSERTITEMW, align 4
  %119 = ptrtoint %struct.TYPE_6__* %8 to i32
  %120 = call i32 @SendMessageW(i32 %117, i32 %118, i32 0, i32 %119)
  br label %121

121:                                              ; preds = %106, %105, %61, %45, %28
  %122 = load i64, i64* %6, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %6, align 8
  br label %15

124:                                              ; preds = %15
  %125 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %126 = call i32 @CredFree(%struct.TYPE_5__** %125)
  br label %127

127:                                              ; preds = %124, %13
  ret void
}

declare dso_local i32 @CredEnumerateW(i32*, i32, i64*, %struct.TYPE_5__***) #1

declare dso_local i32 @lstrcmpW(i32*, i32*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @CredFree(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
