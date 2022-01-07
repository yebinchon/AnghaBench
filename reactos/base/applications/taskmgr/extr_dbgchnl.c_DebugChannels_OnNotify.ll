; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_dbgchnl.c_DebugChannels_OnNotify.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/taskmgr/extr_dbgchnl.c_DebugChannels_OnNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cce_user = type { i32*, i32, i32, i32, i32 }

@IDC_DEBUG_CHANNELS_LIST = common dso_local global i32 0, align 4
@PROCESS_VM_OPERATION = common dso_local global i32 0, align 4
@PROCESS_VM_READ = common dso_local global i32 0, align 4
@PROCESS_VM_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LVM_SUBITEMHITTEST = common dso_local global i32 0, align 4
@change_channel_CB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Some channel instance weren't correctly set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @DebugChannels_OnNotify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DebugChannels_OnNotify(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca [2 x i32], align 4
  %11 = alloca [32 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca %struct.cce_user, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %121 [
    i32 128, label %19
  ]

19:                                               ; preds = %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IDC_DEBUG_CHANNELS_LIST, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %120

25:                                               ; preds = %19
  %26 = load i64, i64* %4, align 8
  %27 = inttoptr i64 %26 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %9, align 8
  %28 = load i32, i32* @PROCESS_VM_OPERATION, align 4
  %29 = load i32, i32* @PROCESS_VM_READ, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PROCESS_VM_WRITE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @FALSE, align 4
  %34 = call i32 (...) @GetSelectedProcessId()
  %35 = call i32 @OpenProcess(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  br label %121

39:                                               ; preds = %25
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @IDC_DEBUG_CHANNELS_LIST, align 4
  %46 = call i32 @GetDlgItem(i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @LVM_SUBITEMHITTEST, align 4
  %49 = ptrtoint %struct.TYPE_6__* %6 to i64
  %50 = call i32 @SendMessageW(i32 %47, i32 %48, i32 0, i64 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 1
  br i1 %54, label %55, label %117

55:                                               ; preds = %39
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sle i32 %58, 4
  br i1 %59, label %60, label %117

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  %64 = shl i32 1, %63
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %7, align 4
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %69 = call i32 @ListView_GetItemText(i32 %65, i32 %67, i32 0, i32* %68, i32 32)
  %70 = load i32, i32* %7, align 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %76 = call i32 @ListView_GetItemText(i32 %70, i32 %72, i32 %74, i32* %75, i32 2)
  %77 = getelementptr inbounds [32 x i32], [32 x i32]* %11, i64 0, i64 0
  %78 = getelementptr inbounds %struct.cce_user, %struct.cce_user* %13, i32 0, i32 0
  store i32* %77, i32** %78, align 8
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 120
  br i1 %81, label %82, label %83

82:                                               ; preds = %60
  br label %85

83:                                               ; preds = %60
  %84 = load i32, i32* %12, align 4
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i32 [ 0, %82 ], [ %84, %83 ]
  %87 = getelementptr inbounds %struct.cce_user, %struct.cce_user* %13, i32 0, i32 1
  store i32 %86, i32* %87, align 8
  %88 = load i32, i32* %12, align 4
  %89 = getelementptr inbounds %struct.cce_user, %struct.cce_user* %13, i32 0, i32 2
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.cce_user, %struct.cce_user* %13, i32 0, i32 3
  store i32 0, i32* %90, align 8
  %91 = getelementptr inbounds %struct.cce_user, %struct.cce_user* %13, i32 0, i32 4
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @change_channel_CB, align 4
  %94 = load i32, i32* @FALSE, align 4
  %95 = call i32 @enum_channel(i32 %92, i32 %93, %struct.cce_user* %13, i32 %94)
  %96 = getelementptr inbounds %struct.cce_user, %struct.cce_user* %13, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %85
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = xor i32 %101, 88
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %7, align 4
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %109 = call i32 @ListView_SetItemText(i32 %103, i32 %105, i32 %107, i32* %108)
  br label %110

110:                                              ; preds = %99, %85
  %111 = getelementptr inbounds %struct.cce_user, %struct.cce_user* %13, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %110
  br label %117

117:                                              ; preds = %116, %55, %39
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @CloseHandle(i32 %118)
  br label %120

120:                                              ; preds = %117, %19
  br label %121

121:                                              ; preds = %38, %2, %120
  ret void
}

declare dso_local i32 @OpenProcess(i32, i32, i32) #1

declare dso_local i32 @GetSelectedProcessId(...) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i64) #1

declare dso_local i32 @ListView_GetItemText(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @enum_channel(i32, i32, %struct.cce_user*, i32) #1

declare dso_local i32 @ListView_SetItemText(i32, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
