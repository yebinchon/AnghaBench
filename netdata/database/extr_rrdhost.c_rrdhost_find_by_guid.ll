; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrdhost.c_rrdhost_find_by_guid.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrdhost.c_rrdhost_find_by_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@D_RRDHOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Searching in index for host with guid '%s'\00", align 1
@GUID_LEN = common dso_local global i32 0, align 4
@rrdhost_root_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @rrdhost_find_by_guid(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @D_RRDHOST, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @debug(i32 %6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @GUID_LEN, align 4
  %13 = call i32 @strncpyz(i32 %10, i8* %11, i32 %12)
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  br label %22

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @simple_hash(i32 %20)
  br label %22

22:                                               ; preds = %18, %16
  %23 = phi i64 [ %17, %16 ], [ %21, %18 ]
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = bitcast %struct.TYPE_3__* %5 to i32*
  %26 = call i64 @avl_search_lock(i32* @rrdhost_root_index, i32* %25)
  %27 = inttoptr i64 %26 to %struct.TYPE_3__*
  ret %struct.TYPE_3__* %27
}

declare dso_local i32 @debug(i32, i8*, i8*) #1

declare dso_local i32 @strncpyz(i32, i8*, i32) #1

declare dso_local i64 @simple_hash(i32) #1

declare dso_local i64 @avl_search_lock(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
