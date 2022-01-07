; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/nvram/src/extr_nvram.c_nvram_find_staging.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/nvram/src/extr_nvram.c_nvram_find_staging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@NVRAM_STAGING = common dso_local global i8* null, align 8
@S_IFREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nvram_find_staging() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.stat, align 4
  %3 = load i8*, i8** @NVRAM_STAGING, align 8
  %4 = call i32 @stat(i8* %3, %struct.stat* %2)
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @S_IFREG, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = load i8*, i8** @NVRAM_STAGING, align 8
  store i8* %13, i8** %1, align 8
  br label %15

14:                                               ; preds = %6, %0
  store i8* null, i8** %1, align 8
  br label %15

15:                                               ; preds = %14, %12
  %16 = load i8*, i8** %1, align 8
  ret i8* %16
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
