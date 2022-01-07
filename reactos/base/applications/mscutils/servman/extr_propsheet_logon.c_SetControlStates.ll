; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_logon.c_SetControlStates.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_propsheet_logon.c_SetControlStates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i8*, i8*, i32, i64 }

@IDC_LOGON_INTERACTIVE = common dso_local global i32 0, align 4
@IDC_LOGON_ACCOUNTNAME = common dso_local global i32 0, align 4
@IDC_LOGON_SEARCH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_LOGON_PW1TEXT = common dso_local global i32 0, align 4
@IDC_LOGON_PASSWORD1 = common dso_local global i32 0, align 4
@IDC_LOGON_PW2TEXT = common dso_local global i32 0, align 4
@IDC_LOGON_PASSWORD2 = common dso_local global i32 0, align 4
@BM_SETCHECK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@BM_GETCHECK = common dso_local global i32 0, align 4
@BST_UNCHECKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*, i32)* @SetControlStates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetControlStates(i32 %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @IDC_LOGON_INTERACTIVE, align 4
  %10 = call i32 @GetDlgItem(i32 %8, i32 %9)
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @EnableWindow(i32 %10, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @IDC_LOGON_ACCOUNTNAME, align 4
  %15 = call i32 @GetDlgItem(i32 %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @EnableWindow(i32 %15, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @IDC_LOGON_SEARCH, align 4
  %23 = call i32 @GetDlgItem(i32 %21, i32 %22)
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @EnableWindow(i32 %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @IDC_LOGON_PW1TEXT, align 4
  %28 = call i32 @GetDlgItem(i32 %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @EnableWindow(i32 %28, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @IDC_LOGON_PASSWORD1, align 4
  %36 = call i32 @GetDlgItem(i32 %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @EnableWindow(i32 %36, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @IDC_LOGON_PW2TEXT, align 4
  %44 = call i32 @GetDlgItem(i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @EnableWindow(i32 %44, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @IDC_LOGON_PASSWORD2, align 4
  %52 = call i32 @GetDlgItem(i32 %50, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @EnableWindow(i32 %52, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %103

60:                                               ; preds = %3
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @IDC_LOGON_INTERACTIVE, align 4
  %63 = load i32, i32* @BM_SETCHECK, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 5
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i64 @SendDlgItemMessageW(i32 %61, i32 %62, i32 %63, i32 %67, i32 0)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @TRUE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %60
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @IDC_LOGON_ACCOUNTNAME, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @GetDlgItemText(i32 %75, i32 %76, i8* %79, i32 64)
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @IDC_LOGON_PASSWORD1, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @GetDlgItemText(i32 %81, i32 %82, i8* %85, i32 64)
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @IDC_LOGON_PASSWORD2, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @GetDlgItemText(i32 %87, i32 %88, i8* %91, i32 64)
  br label %93

93:                                               ; preds = %74, %60
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @IDC_LOGON_ACCOUNTNAME, align 4
  %96 = call i32 @SetDlgItemText(i32 %94, i32 %95, i8* bitcast ([1 x i32]* @.str to i8*))
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @IDC_LOGON_PASSWORD1, align 4
  %99 = call i32 @SetDlgItemText(i32 %97, i32 %98, i8* bitcast ([1 x i32]* @.str to i8*))
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @IDC_LOGON_PASSWORD2, align 4
  %102 = call i32 @SetDlgItemText(i32 %100, i32 %101, i8* bitcast ([1 x i32]* @.str to i8*))
  br label %141

103:                                              ; preds = %3
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @TRUE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @IDC_LOGON_INTERACTIVE, align 4
  %112 = load i32, i32* @BM_GETCHECK, align 4
  %113 = call i64 @SendDlgItemMessageW(i32 %110, i32 %111, i32 %112, i32 0, i32 0)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 5
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %109, %103
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @IDC_LOGON_INTERACTIVE, align 4
  %119 = load i32, i32* @BM_SETCHECK, align 4
  %120 = load i64, i64* @BST_UNCHECKED, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i64 @SendDlgItemMessageW(i32 %117, i32 %118, i32 %119, i32 %121, i32 0)
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @IDC_LOGON_ACCOUNTNAME, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @SetDlgItemText(i32 %123, i32 %124, i8* %127)
  %129 = load i32, i32* %5, align 4
  %130 = load i32, i32* @IDC_LOGON_PASSWORD1, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @SetDlgItemText(i32 %129, i32 %130, i8* %133)
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @IDC_LOGON_PASSWORD2, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 3
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @SetDlgItemText(i32 %135, i32 %136, i8* %139)
  br label %141

141:                                              ; preds = %116, %93
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i64 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetDlgItemText(i32, i32, i8*, i32) #1

declare dso_local i32 @SetDlgItemText(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
