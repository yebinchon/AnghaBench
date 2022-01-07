; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_create_show_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_create_show_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.detail_data = type { i32 }

@IDC_DETAIL_SELECT = common dso_local global i32 0, align 4
@MAX_STRING_LEN = common dso_local global i32 0, align 4
@listItems = common dso_local global %struct.TYPE_5__* null, align 8
@hInstance = common dso_local global i32 0, align 4
@CB_INSERTSTRING = common dso_local global i32 0, align 4
@CB_SETITEMDATA = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.detail_data*)* @create_show_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_show_list(i32 %0, %struct.detail_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.detail_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.detail_data* %1, %struct.detail_data** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @IDC_DETAIL_SELECT, align 4
  %12 = call i32 @GetDlgItem(i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @MAX_STRING_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca %struct.TYPE_5__, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %42, %2
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @listItems, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %17
  %23 = load i32, i32* @hInstance, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @listItems, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %16)
  %31 = call i32 @LoadStringW(i32 %23, i32 %29, %struct.TYPE_5__* %16, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @CB_INSERTSTRING, align 4
  %34 = ptrtoint %struct.TYPE_5__* %16 to i32
  %35 = call i32 @SendMessageW(i32 %32, i32 %33, i32 -1, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @CB_SETITEMDATA, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %40 = ptrtoint %struct.detail_data* %39 to i32
  %41 = call i32 @SendMessageW(i32 %36, i32 %37, i32 %38, i32 %40)
  br label %42

42:                                               ; preds = %22
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %17

45:                                               ; preds = %17
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @CB_SETCURSEL, align 4
  %48 = call i32 @SendMessageW(i32 %46, i32 %47, i32 0, i32 0)
  %49 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %49)
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @LoadStringW(i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
