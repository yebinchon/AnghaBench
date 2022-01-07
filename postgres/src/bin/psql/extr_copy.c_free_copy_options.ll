; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_copy.c_free_copy_options.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_copy.c_free_copy_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.copy_options = type { %struct.copy_options*, %struct.copy_options*, %struct.copy_options* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.copy_options*)* @free_copy_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_copy_options(%struct.copy_options* %0) #0 {
  %2 = alloca %struct.copy_options*, align 8
  store %struct.copy_options* %0, %struct.copy_options** %2, align 8
  %3 = load %struct.copy_options*, %struct.copy_options** %2, align 8
  %4 = icmp ne %struct.copy_options* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %21

6:                                                ; preds = %1
  %7 = load %struct.copy_options*, %struct.copy_options** %2, align 8
  %8 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %7, i32 0, i32 2
  %9 = load %struct.copy_options*, %struct.copy_options** %8, align 8
  %10 = call i32 @free(%struct.copy_options* %9)
  %11 = load %struct.copy_options*, %struct.copy_options** %2, align 8
  %12 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %11, i32 0, i32 1
  %13 = load %struct.copy_options*, %struct.copy_options** %12, align 8
  %14 = call i32 @free(%struct.copy_options* %13)
  %15 = load %struct.copy_options*, %struct.copy_options** %2, align 8
  %16 = getelementptr inbounds %struct.copy_options, %struct.copy_options* %15, i32 0, i32 0
  %17 = load %struct.copy_options*, %struct.copy_options** %16, align 8
  %18 = call i32 @free(%struct.copy_options* %17)
  %19 = load %struct.copy_options*, %struct.copy_options** %2, align 8
  %20 = call i32 @free(%struct.copy_options* %19)
  br label %21

21:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @free(%struct.copy_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
