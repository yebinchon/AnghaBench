; ModuleID = '/home/carl/AnghaBench/linux/tools/virtio/virtio-trace/extr_trace-agent.c_agent_info_free.c'
source_filename = "/home/carl/AnghaBench/linux/tools/virtio/virtio-trace/extr_trace-agent.c_agent_info_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_info = type { i32, %struct.agent_info**, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agent_info*)* @agent_info_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agent_info_free(%struct.agent_info* %0) #0 {
  %2 = alloca %struct.agent_info*, align 8
  %3 = alloca i32, align 4
  store %struct.agent_info* %0, %struct.agent_info** %2, align 8
  %4 = load %struct.agent_info*, %struct.agent_info** %2, align 8
  %5 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @close(i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %63, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.agent_info*, %struct.agent_info** %2, align 8
  %11 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %66

14:                                               ; preds = %8
  %15 = load %struct.agent_info*, %struct.agent_info** %2, align 8
  %16 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %15, i32 0, i32 1
  %17 = load %struct.agent_info**, %struct.agent_info*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.agent_info*, %struct.agent_info** %17, i64 %19
  %21 = load %struct.agent_info*, %struct.agent_info** %20, align 8
  %22 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @close(i32 %23)
  %25 = load %struct.agent_info*, %struct.agent_info** %2, align 8
  %26 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %25, i32 0, i32 1
  %27 = load %struct.agent_info**, %struct.agent_info*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.agent_info*, %struct.agent_info** %27, i64 %29
  %31 = load %struct.agent_info*, %struct.agent_info** %30, align 8
  %32 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @close(i32 %33)
  %35 = load %struct.agent_info*, %struct.agent_info** %2, align 8
  %36 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %35, i32 0, i32 1
  %37 = load %struct.agent_info**, %struct.agent_info*** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.agent_info*, %struct.agent_info** %37, i64 %39
  %41 = load %struct.agent_info*, %struct.agent_info** %40, align 8
  %42 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @close(i32 %43)
  %45 = load %struct.agent_info*, %struct.agent_info** %2, align 8
  %46 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %45, i32 0, i32 1
  %47 = load %struct.agent_info**, %struct.agent_info*** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.agent_info*, %struct.agent_info** %47, i64 %49
  %51 = load %struct.agent_info*, %struct.agent_info** %50, align 8
  %52 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @close(i32 %53)
  %55 = load %struct.agent_info*, %struct.agent_info** %2, align 8
  %56 = getelementptr inbounds %struct.agent_info, %struct.agent_info* %55, i32 0, i32 1
  %57 = load %struct.agent_info**, %struct.agent_info*** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.agent_info*, %struct.agent_info** %57, i64 %59
  %61 = load %struct.agent_info*, %struct.agent_info** %60, align 8
  %62 = call i32 @free(%struct.agent_info* %61)
  br label %63

63:                                               ; preds = %14
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %8

66:                                               ; preds = %8
  %67 = load %struct.agent_info*, %struct.agent_info** %2, align 8
  %68 = call i32 @free(%struct.agent_info* %67)
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.agent_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
