; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_create_cert_details_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_create_cert_details_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.detail_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.detail_data*)* @create_cert_details_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_cert_details_list(i32 %0, %struct.detail_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.detail_data*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.detail_data* %1, %struct.detail_data** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %7 = call i32 @create_show_list(i32 %5, %struct.detail_data* %6)
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @create_listview_columns(i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.detail_data*, %struct.detail_data** %4, align 8
  %12 = call i32 @set_fields_selection(i32 %10, %struct.detail_data* %11, i32 0)
  ret void
}

declare dso_local i32 @create_show_list(i32, %struct.detail_data*) #1

declare dso_local i32 @create_listview_columns(i32) #1

declare dso_local i32 @set_fields_selection(i32, %struct.detail_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
