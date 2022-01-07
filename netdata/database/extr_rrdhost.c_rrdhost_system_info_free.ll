; ModuleID = '/home/carl/AnghaBench/netdata/database/extr_rrdhost.c_rrdhost_system_info_free.c'
source_filename = "/home/carl/AnghaBench/netdata/database/extr_rrdhost.c_rrdhost_system_info_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdhost_system_info = type { %struct.rrdhost_system_info*, %struct.rrdhost_system_info*, %struct.rrdhost_system_info*, %struct.rrdhost_system_info*, %struct.rrdhost_system_info*, %struct.rrdhost_system_info*, %struct.rrdhost_system_info*, %struct.rrdhost_system_info*, %struct.rrdhost_system_info*, %struct.rrdhost_system_info*, %struct.rrdhost_system_info*, %struct.rrdhost_system_info*, %struct.rrdhost_system_info* }

@.str = private unnamed_addr constant [21 x i8] c"SYSTEM_INFO: free %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdhost_system_info_free(%struct.rrdhost_system_info* %0) #0 {
  %2 = alloca %struct.rrdhost_system_info*, align 8
  store %struct.rrdhost_system_info* %0, %struct.rrdhost_system_info** %2, align 8
  %3 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %2, align 8
  %4 = call i32 @info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.rrdhost_system_info* %3)
  %5 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %2, align 8
  %6 = call i64 @likely(%struct.rrdhost_system_info* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %63

8:                                                ; preds = %1
  %9 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %2, align 8
  %10 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %9, i32 0, i32 12
  %11 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %10, align 8
  %12 = call i32 @freez(%struct.rrdhost_system_info* %11)
  %13 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %2, align 8
  %14 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %13, i32 0, i32 11
  %15 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %14, align 8
  %16 = call i32 @freez(%struct.rrdhost_system_info* %15)
  %17 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %2, align 8
  %18 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %17, i32 0, i32 10
  %19 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %18, align 8
  %20 = call i32 @freez(%struct.rrdhost_system_info* %19)
  %21 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %2, align 8
  %22 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %21, i32 0, i32 9
  %23 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %22, align 8
  %24 = call i32 @freez(%struct.rrdhost_system_info* %23)
  %25 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %2, align 8
  %26 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %25, i32 0, i32 8
  %27 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %26, align 8
  %28 = call i32 @freez(%struct.rrdhost_system_info* %27)
  %29 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %2, align 8
  %30 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %29, i32 0, i32 7
  %31 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %30, align 8
  %32 = call i32 @freez(%struct.rrdhost_system_info* %31)
  %33 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %2, align 8
  %34 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %33, i32 0, i32 6
  %35 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %34, align 8
  %36 = call i32 @freez(%struct.rrdhost_system_info* %35)
  %37 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %2, align 8
  %38 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %37, i32 0, i32 5
  %39 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %38, align 8
  %40 = call i32 @freez(%struct.rrdhost_system_info* %39)
  %41 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %2, align 8
  %42 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %41, i32 0, i32 4
  %43 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %42, align 8
  %44 = call i32 @freez(%struct.rrdhost_system_info* %43)
  %45 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %2, align 8
  %46 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %45, i32 0, i32 3
  %47 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %46, align 8
  %48 = call i32 @freez(%struct.rrdhost_system_info* %47)
  %49 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %2, align 8
  %50 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %49, i32 0, i32 2
  %51 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %50, align 8
  %52 = call i32 @freez(%struct.rrdhost_system_info* %51)
  %53 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %2, align 8
  %54 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %53, i32 0, i32 1
  %55 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %54, align 8
  %56 = call i32 @freez(%struct.rrdhost_system_info* %55)
  %57 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %2, align 8
  %58 = getelementptr inbounds %struct.rrdhost_system_info, %struct.rrdhost_system_info* %57, i32 0, i32 0
  %59 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %58, align 8
  %60 = call i32 @freez(%struct.rrdhost_system_info* %59)
  %61 = load %struct.rrdhost_system_info*, %struct.rrdhost_system_info** %2, align 8
  %62 = call i32 @freez(%struct.rrdhost_system_info* %61)
  br label %63

63:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @info(i8*, %struct.rrdhost_system_info*) #1

declare dso_local i64 @likely(%struct.rrdhost_system_info*) #1

declare dso_local i32 @freez(%struct.rrdhost_system_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
