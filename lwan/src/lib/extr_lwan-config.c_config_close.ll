; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_config_close.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_config_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { %struct.TYPE_4__, %struct.config*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @config_close(%struct.config* %0) #0 {
  %2 = alloca %struct.config*, align 8
  store %struct.config* %0, %struct.config** %2, align 8
  %3 = load %struct.config*, %struct.config** %2, align 8
  %4 = icmp ne %struct.config* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %33

6:                                                ; preds = %1
  %7 = load %struct.config*, %struct.config** %2, align 8
  %8 = getelementptr inbounds %struct.config, %struct.config* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  %13 = load %struct.config*, %struct.config** %2, align 8
  %14 = getelementptr inbounds %struct.config, %struct.config* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.config*, %struct.config** %2, align 8
  %18 = getelementptr inbounds %struct.config, %struct.config* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @munmap(i64 %16, i32 %20)
  br label %22

22:                                               ; preds = %12, %6
  %23 = load %struct.config*, %struct.config** %2, align 8
  %24 = getelementptr inbounds %struct.config, %struct.config* %23, i32 0, i32 1
  %25 = load %struct.config*, %struct.config** %24, align 8
  %26 = call i32 @free(%struct.config* %25)
  %27 = load %struct.config*, %struct.config** %2, align 8
  %28 = getelementptr inbounds %struct.config, %struct.config* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @lwan_strbuf_free(i32* %29)
  %31 = load %struct.config*, %struct.config** %2, align 8
  %32 = call i32 @free(%struct.config* %31)
  br label %33

33:                                               ; preds = %22, %5
  ret void
}

declare dso_local i32 @munmap(i64, i32) #1

declare dso_local i32 @free(%struct.config*) #1

declare dso_local i32 @lwan_strbuf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
