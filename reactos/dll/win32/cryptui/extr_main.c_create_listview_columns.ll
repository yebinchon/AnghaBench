; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_create_listview_columns.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_create_listview_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }

@IDC_DETAIL_LIST = common dso_local global i32 0, align 4
@MAX_STRING_LEN = common dso_local global i32 0, align 4
@LVM_SETEXTENDEDLISTVIEWSTYLE = common dso_local global i32 0, align 4
@LVS_EX_FULLROWSELECT = common dso_local global i32 0, align 4
@hInstance = common dso_local global i32 0, align 4
@IDS_FIELD = common dso_local global i32 0, align 4
@LVCF_WIDTH = common dso_local global i32 0, align 4
@LVCF_TEXT = common dso_local global i32 0, align 4
@LVM_INSERTCOLUMNW = common dso_local global i32 0, align 4
@IDS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @create_listview_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_listview_columns(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @IDC_DETAIL_LIST, align 4
  %10 = call i32 @GetDlgItem(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @MAX_STRING_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @LVM_SETEXTENDEDLISTVIEWSTYLE, align 4
  %17 = load i32, i32* @LVS_EX_FULLROWSELECT, align 4
  %18 = call i32 @SendMessageW(i32 %15, i32 %16, i32 0, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @GetWindowRect(i32 %19, %struct.TYPE_4__* %4)
  %21 = load i32, i32* @hInstance, align 4
  %22 = load i32, i32* @IDS_FIELD, align 4
  %23 = call i32 @ARRAY_SIZE(i32* %14)
  %24 = call i32 @LoadStringW(i32 %21, i32 %22, i32* %14, i32 %23)
  %25 = load i32, i32* @LVCF_WIDTH, align 4
  %26 = load i32, i32* @LVCF_TEXT, align 4
  %27 = or i32 %25, %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %30, %32
  %34 = sdiv i32 %33, 2
  %35 = sub nsw i32 %34, 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32* %14, i32** %37, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @LVM_INSERTCOLUMNW, align 4
  %40 = ptrtoint %struct.TYPE_5__* %7 to i32
  %41 = call i32 @SendMessageW(i32 %38, i32 %39, i32 0, i32 %40)
  %42 = load i32, i32* @hInstance, align 4
  %43 = load i32, i32* @IDS_VALUE, align 4
  %44 = call i32 @ARRAY_SIZE(i32* %14)
  %45 = call i32 @LoadStringW(i32 %42, i32 %43, i32* %14, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @LVM_INSERTCOLUMNW, align 4
  %48 = ptrtoint %struct.TYPE_5__* %7 to i32
  %49 = call i32 @SendMessageW(i32 %46, i32 %47, i32 1, i32 %48)
  %50 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %50)
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @LoadStringW(i32, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
