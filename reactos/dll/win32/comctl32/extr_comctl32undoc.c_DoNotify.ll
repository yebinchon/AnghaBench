; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comctl32undoc.c_DoNotify.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_comctl32undoc.c_DoNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64, i8*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"(%p %p %d %p 0x%08x)\0A\00", align 1
@WM_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, %struct.TYPE_8__*)* @DoNotify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoNotify(%struct.TYPE_7__* %0, i8* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %9, align 8
  store i8* null, i8** %10, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %13, i32 %16, i8* %17, %struct.TYPE_8__* %18, i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %76

28:                                               ; preds = %3
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, -1
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %9, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %10, align 8
  br label %67

38:                                               ; preds = %28
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i8* @GetDlgCtrlID(i64 %46)
  store i8* %47, i8** %10, align 8
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = icmp ne %struct.TYPE_8__* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  br label %54

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi %struct.TYPE_8__* [ %52, %51 ], [ %8, %53 ]
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %9, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %54, %33
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @WM_NOTIFY, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %74 = ptrtoint %struct.TYPE_8__* %73 to i32
  %75 = call i32 @SendMessageW(i32 %70, i32 %71, i8* %72, i32 %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %67, %27
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @TRACE(i8*, i64, i32, i8*, %struct.TYPE_8__*, i32) #1

declare dso_local i8* @GetDlgCtrlID(i64) #1

declare dso_local i32 @SendMessageW(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
