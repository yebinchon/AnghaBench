; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_config_read_line.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-config.c_config_read_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_line = type { i32 }
%struct.config = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.config_line* @config_read_line(%struct.config* %0) #0 {
  %2 = alloca %struct.config*, align 8
  store %struct.config* %0, %struct.config** %2, align 8
  %3 = load %struct.config*, %struct.config** %2, align 8
  %4 = getelementptr inbounds %struct.config, %struct.config* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %12

8:                                                ; preds = %1
  %9 = load %struct.config*, %struct.config** %2, align 8
  %10 = getelementptr inbounds %struct.config, %struct.config* %9, i32 0, i32 0
  %11 = call %struct.config_line* @parser_next(i32* %10)
  br label %12

12:                                               ; preds = %8, %7
  %13 = phi %struct.config_line* [ null, %7 ], [ %11, %8 ]
  ret %struct.config_line* %13
}

declare dso_local %struct.config_line* @parser_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
