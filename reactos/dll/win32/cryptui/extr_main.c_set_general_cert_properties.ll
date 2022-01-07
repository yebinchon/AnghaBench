; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_set_general_cert_properties.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_set_general_cert_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_cert_data = type { i32 }

@CERT_FRIENDLY_NAME_PROP_ID = common dso_local global i32 0, align 4
@IDC_FRIENDLY_NAME = common dso_local global i32 0, align 4
@WM_SETTEXT = common dso_local global i32 0, align 4
@CERT_DESCRIPTION_PROP_ID = common dso_local global i32 0, align 4
@IDC_DESCRIPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.edit_cert_data*)* @set_general_cert_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_general_cert_properties(i32 %0, %struct.edit_cert_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.edit_cert_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.edit_cert_data* %1, %struct.edit_cert_data** %4, align 8
  %7 = load %struct.edit_cert_data*, %struct.edit_cert_data** %4, align 8
  %8 = getelementptr inbounds %struct.edit_cert_data, %struct.edit_cert_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @CERT_FRIENDLY_NAME_PROP_ID, align 4
  %12 = call i32* @get_cert_property_as_string(i32 %10, i32 %11)
  store i32* %12, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @IDC_FRIENDLY_NAME, align 4
  %17 = call i32 @GetDlgItem(i32 %15, i32 %16)
  %18 = load i32, i32* @WM_SETTEXT, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = ptrtoint i32* %19 to i32
  %21 = call i32 @SendMessageW(i32 %17, i32 %18, i32 0, i32 %20)
  %22 = call i32 (...) @GetProcessHeap()
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @HeapFree(i32 %22, i32 0, i32* %23)
  br label %25

25:                                               ; preds = %14, %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @CERT_DESCRIPTION_PROP_ID, align 4
  %28 = call i32* @get_cert_property_as_string(i32 %26, i32 %27)
  store i32* %28, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @IDC_DESCRIPTION, align 4
  %33 = call i32 @GetDlgItem(i32 %31, i32 %32)
  %34 = load i32, i32* @WM_SETTEXT, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = ptrtoint i32* %35 to i32
  %37 = call i32 @SendMessageW(i32 %33, i32 %34, i32 0, i32 %36)
  %38 = call i32 (...) @GetProcessHeap()
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @HeapFree(i32 %38, i32 0, i32* %39)
  br label %41

41:                                               ; preds = %30, %25
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.edit_cert_data*, %struct.edit_cert_data** %4, align 8
  %44 = call i32 @show_cert_usages(i32 %42, %struct.edit_cert_data* %43)
  ret void
}

declare dso_local i32* @get_cert_property_as_string(i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @show_cert_usages(i32, %struct.edit_cert_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
