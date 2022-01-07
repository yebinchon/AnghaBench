; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_mainwnd.c_UpdateServiceCount.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_mainwnd.c_UpdateServiceCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@hInstance = common dso_local global i32 0, align 4
@IDS_NUM_SERVICES = common dso_local global i32 0, align 4
@SB_SETTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UpdateServiceCount(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [32 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = load i32, i32* @hInstance, align 4
  %8 = load i32, i32* @IDS_NUM_SERVICES, align 4
  %9 = call i64 @AllocAndLoadString(i32* %4, i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ListView_GetItemCount(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @_snwprintf(i32* %16, i32 31, i32 %17, i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SB_SETTEXT, align 4
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %25 = ptrtoint i32* %24 to i32
  %26 = call i32 @SendMessage(i32 %22, i32 %23, i32 0, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @LocalFree(i32 %27)
  br label %29

29:                                               ; preds = %11, %1
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @AllocAndLoadString(i32*, i32, i32) #1

declare dso_local i32 @ListView_GetItemCount(i32) #1

declare dso_local i32 @_snwprintf(i32*, i32, i32, i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @LocalFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
