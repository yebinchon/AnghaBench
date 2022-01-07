; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_pts_read_number.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_pts_read_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ParseTypedefData = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ParseTypedefData*, i64*)* @stabs_pts_read_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stabs_pts_read_number(%struct.ParseTypedefData* %0, i64* %1) #0 {
  %3 = alloca %struct.ParseTypedefData*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  store %struct.ParseTypedefData* %0, %struct.ParseTypedefData** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %7 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i64 @strtol(i8* %8, i8** %5, i32 10)
  %10 = load i64*, i64** %4, align 8
  store i64 %9, i64* %10, align 8
  %11 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %14 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %11, i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %21 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  ret i32 0
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @PTS_ABORTIF(%struct.ParseTypedefData*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
