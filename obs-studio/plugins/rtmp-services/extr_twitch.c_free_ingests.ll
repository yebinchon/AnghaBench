; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_twitch.c_free_ingests.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/rtmp-services/extr_twitch.c_free_ingests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.ingest* }
%struct.ingest = type { i32, i32 }

@cur_ingests = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @free_ingests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_ingests() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.ingest*, align 8
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %19, %0
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cur_ingests, i32 0, i32 0), align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load %struct.ingest*, %struct.ingest** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cur_ingests, i32 0, i32 1), align 8
  %9 = load i64, i64* %1, align 8
  %10 = getelementptr inbounds %struct.ingest, %struct.ingest* %8, i64 %9
  store %struct.ingest* %10, %struct.ingest** %2, align 8
  %11 = load %struct.ingest*, %struct.ingest** %2, align 8
  %12 = getelementptr inbounds %struct.ingest, %struct.ingest* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bfree(i32 %13)
  %15 = load %struct.ingest*, %struct.ingest** %2, align 8
  %16 = getelementptr inbounds %struct.ingest, %struct.ingest* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bfree(i32 %17)
  br label %19

19:                                               ; preds = %7
  %20 = load i64, i64* %1, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %1, align 8
  br label %3

22:                                               ; preds = %3
  %23 = load i64, i64* getelementptr inbounds ({ i64, %struct.ingest* }, { i64, %struct.ingest* }* bitcast (%struct.TYPE_3__* @cur_ingests to { i64, %struct.ingest* }*), i32 0, i32 0), align 8
  %24 = load %struct.ingest*, %struct.ingest** getelementptr inbounds ({ i64, %struct.ingest* }, { i64, %struct.ingest* }* bitcast (%struct.TYPE_3__* @cur_ingests to { i64, %struct.ingest* }*), i32 0, i32 1), align 8
  %25 = call i32 @da_free(i64 %23, %struct.ingest* %24)
  ret void
}

declare dso_local i32 @bfree(i32) #1

declare dso_local i32 @da_free(i64, %struct.ingest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
