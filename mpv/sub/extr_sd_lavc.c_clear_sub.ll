; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_clear_sub.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_sd_lavc.c_clear_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sub = type { i32, i32, i8*, i8*, i64 }

@MP_NOPTS_VALUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sub*)* @clear_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_sub(%struct.sub* %0) #0 {
  %2 = alloca %struct.sub*, align 8
  store %struct.sub* %0, %struct.sub** %2, align 8
  %3 = load %struct.sub*, %struct.sub** %2, align 8
  %4 = getelementptr inbounds %struct.sub, %struct.sub* %3, i32 0, i32 4
  store i64 0, i64* %4, align 8
  %5 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %6 = load %struct.sub*, %struct.sub** %2, align 8
  %7 = getelementptr inbounds %struct.sub, %struct.sub* %6, i32 0, i32 3
  store i8* %5, i8** %7, align 8
  %8 = load i8*, i8** @MP_NOPTS_VALUE, align 8
  %9 = load %struct.sub*, %struct.sub** %2, align 8
  %10 = getelementptr inbounds %struct.sub, %struct.sub* %9, i32 0, i32 2
  store i8* %8, i8** %10, align 8
  %11 = load %struct.sub*, %struct.sub** %2, align 8
  %12 = getelementptr inbounds %struct.sub, %struct.sub* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.sub*, %struct.sub** %2, align 8
  %17 = getelementptr inbounds %struct.sub, %struct.sub* %16, i32 0, i32 1
  %18 = call i32 @avsubtitle_free(i32* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.sub*, %struct.sub** %2, align 8
  %21 = getelementptr inbounds %struct.sub, %struct.sub* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  ret void
}

declare dso_local i32 @avsubtitle_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
