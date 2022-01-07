; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_LButtonDblClk.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_header.c_HEADER_LButtonDblClk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i8* }

@HDS_BUTTONS = common dso_local global i32 0, align 4
@HHT_ONHEADER = common dso_local global i64 0, align 8
@HDN_ITEMDBLCLICKW = common dso_local global i32 0, align 4
@HHT_ONDIVIDER = common dso_local global i64 0, align 8
@HHT_ONDIVOPEN = common dso_local global i64 0, align 8
@HDN_DIVIDERDBLCLICKW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i8*)* @HEADER_LButtonDblClk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HEADER_LButtonDblClk(%struct.TYPE_8__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i8* %10, i8** %11, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = call i32 @HEADER_InternalHitTest(%struct.TYPE_8__* %14, %struct.TYPE_7__* %7, i64* %8, i8** %9)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HDS_BUTTONS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @HHT_ONHEADER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = load i32, i32* @HDN_ITEMDBLCLICKW, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @HEADER_SendNotifyWithHDItemT(%struct.TYPE_8__* %27, i32 %28, i8* %29, i32* null)
  br label %45

31:                                               ; preds = %22, %3
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @HHT_ONDIVIDER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @HHT_ONDIVOPEN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35, %31
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = load i32, i32* @HDN_DIVIDERDBLCLICKW, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @HEADER_SendNotifyWithHDItemT(%struct.TYPE_8__* %40, i32 %41, i8* %42, i32* null)
  br label %44

44:                                               ; preds = %39, %35
  br label %45

45:                                               ; preds = %44, %26
  ret i32 0
}

declare dso_local i32 @HEADER_InternalHitTest(%struct.TYPE_8__*, %struct.TYPE_7__*, i64*, i8**) #1

declare dso_local i32 @HEADER_SendNotifyWithHDItemT(%struct.TYPE_8__*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
