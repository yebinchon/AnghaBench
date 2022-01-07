; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_d2u_time.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_dirent.c__zip_d2u_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @_zip_d2u_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_zip_d2u_time(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tm, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call i32 @memset(%struct.tm* %5, i32 0, i32 28)
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  store i32 -1, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = ashr i32 %8, 9
  %10 = and i32 %9, 127
  %11 = add nsw i32 %10, 1980
  %12 = sub nsw i32 %11, 1900
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 5
  %16 = and i32 %15, 15
  %17 = sub nsw i32 %16, 1
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 31
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = ashr i32 %22, 11
  %24 = and i32 %23, 31
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = ashr i32 %26, 5
  %28 = and i32 %27, 63
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %3, align 4
  %31 = shl i32 %30, 1
  %32 = and i32 %31, 62
  %33 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 6
  store i32 %32, i32* %33, align 4
  %34 = call i32 @mktime(%struct.tm* %5)
  ret i32 %34
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
