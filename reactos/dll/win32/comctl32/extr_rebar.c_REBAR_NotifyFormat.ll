; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_NotifyFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_rebar.c_REBAR_NotifyFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@NF_REQUERY = common dso_local global i64 0, align 8
@WM_NOTIFYFORMAT = common dso_local global i32 0, align 4
@NF_QUERY = common dso_local global i32 0, align 4
@NFR_ANSI = common dso_local global i64 0, align 8
@NFR_UNICODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"wrong response to WM_NOTIFYFORMAT (%d), assuming ANSI\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64)* @REBAR_NotifyFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @REBAR_NotifyFormat(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @NF_REQUERY, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = call i32 @REBAR_GetNotifyParent(%struct.TYPE_4__* %11)
  %13 = load i32, i32* @WM_NOTIFYFORMAT, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @NF_QUERY, align 4
  %19 = call i64 @SendMessageW(i32 %12, i32 %13, i32 %17, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @NFR_ANSI, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %10
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @NFR_UNICODE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @ERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* @NFR_ANSI, align 8
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %27, %23, %10
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @NFR_UNICODE, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* %6, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %52

40:                                               ; preds = %2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i64, i64* @NFR_UNICODE, align 8
  br label %49

47:                                               ; preds = %40
  %48 = load i64, i64* @NFR_ANSI, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %31
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @REBAR_GetNotifyParent(%struct.TYPE_4__*) #1

declare dso_local i32 @ERR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
