; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_dochost.c_update_ready_state.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ieframe/extr_dochost.c_update_ready_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@READYSTATE_LOADING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"histupdate not notified\0A\00", align 1
@DISPID_NAVIGATECOMPLETE2 = common dso_local global i32 0, align 4
@READYSTATE_COMPLETE = common dso_local global i64 0, align 8
@DISPID_DOCUMENTCOMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64)* @update_ready_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_ready_state(%struct.TYPE_7__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @READYSTATE_LOADING, align 8
  %7 = icmp sgt i64 %5, %6
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 4
  br label %26

26:                                               ; preds = %14, %8, %2
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @READYSTATE_LOADING, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @READYSTATE_LOADING, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = load i32, i32* @DISPID_NAVIGATECOMPLETE2, align 4
  %44 = call i32 @notif_complete(%struct.TYPE_7__* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %36, %30, %26
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @READYSTATE_COMPLETE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @READYSTATE_COMPLETE, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = load i64, i64* @READYSTATE_COMPLETE, align 8
  %58 = call i32 @set_doc_state(%struct.TYPE_7__* %56, i64 %57)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %55
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = load i32, i32* @DISPID_DOCUMENTCOMPLETE, align 4
  %66 = call i32 @notif_complete(%struct.TYPE_7__* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %55
  br label %72

68:                                               ; preds = %49, %45
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @set_doc_state(%struct.TYPE_7__* %69, i64 %70)
  br label %72

72:                                               ; preds = %68, %67
  ret void
}

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @notif_complete(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @set_doc_state(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
