; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/mods/extr_modusocket.c_modusocket_close_all_user_sockets.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/mods/extr_modusocket.c_modusocket_close_all_user_sockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@modusocket_LockObj = common dso_local global i32 0, align 4
@SL_OS_WAIT_FOREVER = common dso_local global i32 0, align 4
@MOD_NETWORK_MAX_SOCKETS = common dso_local global i32 0, align 4
@modusocket_sockets = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @modusocket_close_all_user_sockets() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SL_OS_WAIT_FOREVER, align 4
  %3 = call i32 @sl_LockObjLock(i32* @modusocket_LockObj, i32 %2)
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %38, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @MOD_NETWORK_MAX_SOCKETS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %41

8:                                                ; preds = %4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @modusocket_sockets, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @modusocket_sockets, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %16
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @modusocket_sockets, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @sl_Close(i32 %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @modusocket_sockets, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  br label %37

37:                                               ; preds = %24, %16, %8
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %4

41:                                               ; preds = %4
  %42 = call i32 @sl_LockObjUnlock(i32* @modusocket_LockObj)
  ret void
}

declare dso_local i32 @sl_LockObjLock(i32*, i32) #1

declare dso_local i32 @sl_Close(i32) #1

declare dso_local i32 @sl_LockObjUnlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
