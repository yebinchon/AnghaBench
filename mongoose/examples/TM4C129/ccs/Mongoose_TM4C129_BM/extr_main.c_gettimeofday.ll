; ModuleID = '/home/carl/AnghaBench/mongoose/examples/TM4C129/ccs/Mongoose_TM4C129_BM/extr_main.c_gettimeofday.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/TM4C129/ccs/Mongoose_TM4C129_BM/extr_main.c_gettimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gettimeofday(%struct.timeval* %0, i8* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca i8*, align 8
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = call i32 @time(i32* null)
  %6 = load %struct.timeval*, %struct.timeval** %3, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  %8 = load %struct.timeval*, %struct.timeval** %3, align 8
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  ret i32 0
}

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
