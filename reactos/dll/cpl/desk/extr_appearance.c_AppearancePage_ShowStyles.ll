; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_appearance.c_AppearancePage_ShowStyles.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_appearance.c_AppearancePage_ShowStyles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__* }

@CB_RESETCONTENT = common dso_local global i32 0, align 4
@CB_ADDSTRING = common dso_local global i32 0, align 4
@CB_SETITEMDATA = common dso_local global i32 0, align 4
@CB_SETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__*)* @AppearancePage_ShowStyles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AppearancePage_ShowStyles(i32 %0, i32 %1, %struct.TYPE_4__* %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @GetDlgItem(i32 %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @CB_RESETCONTENT, align 4
  %17 = call i32 @SendMessage(i32 %15, i32 %16, i32 0, i32 0)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %11, align 8
  br label %19

19:                                               ; preds = %45, %4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @CB_ADDSTRING, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @SendMessage(i32 %23, i32 %24, i32 0, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @CB_SETITEMDATA, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %34 = ptrtoint %struct.TYPE_4__* %33 to i32
  %35 = call i32 @SendMessage(i32 %30, i32 %31, i32 %32, i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = icmp eq %struct.TYPE_4__* %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %22
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @CB_SETCURSEL, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @SendMessage(i32 %40, i32 %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %39, %22
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %11, align 8
  br label %19

49:                                               ; preds = %19
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
