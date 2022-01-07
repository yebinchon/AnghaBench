; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_add_field_and_value_to_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_add_field_and_value_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.detail_data = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i64 }

@LVM_GETITEMCOUNT = common dso_local global i32 0, align 4
@LVIF_TEXT = common dso_local global i32 0, align 4
@LVIF_PARAM = common dso_local global i32 0, align 4
@LVM_INSERTITEMW = common dso_local global i32 0, align 4
@LVM_SETITEMTEXTW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.detail_data*, i8*, i8*, i32, i8*)* @add_field_and_value_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_field_and_value_to_list(i32 %0, %struct.detail_data* %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.detail_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_2__, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.detail_data* %1, %struct.detail_data** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @LVM_GETITEMCOUNT, align 4
  %17 = call i32 @SendMessageW(i32 %15, i32 %16, i32 0, i64 0)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* @LVIF_TEXT, align 4
  %19 = load i32, i32* @LVIF_PARAM, align 4
  %20 = or i32 %18, %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %14, align 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32 0, i32* %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i8* %25, i8** %26, align 8
  %27 = load %struct.detail_data*, %struct.detail_data** %8, align 8
  %28 = ptrtoint %struct.detail_data* %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  store i64 %28, i64* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @LVM_INSERTITEMW, align 4
  %32 = ptrtoint %struct.TYPE_2__* %13 to i64
  %33 = call i32 @SendMessageW(i32 %30, i32 %31, i32 0, i64 %32)
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %6
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @LVM_SETITEMTEXTW, align 4
  %42 = load i32, i32* %14, align 4
  %43 = ptrtoint %struct.TYPE_2__* %13 to i64
  %44 = call i32 @SendMessageW(i32 %40, i32 %41, i32 %42, i64 %43)
  br label %45

45:                                               ; preds = %36, %6
  %46 = load %struct.detail_data*, %struct.detail_data** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @add_field_value_data(%struct.detail_data* %46, i32 %47, i8* %48)
  ret void
}

declare dso_local i32 @SendMessageW(i32, i32, i32, i64) #1

declare dso_local i32 @add_field_value_data(%struct.detail_data*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
