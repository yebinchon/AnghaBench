; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_pts_read_enum.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_pts_read_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ParseTypedefData = type { i8*, i32, i64, i32 }
%struct.symt_enum = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ParseTypedefData*, %struct.symt_enum*)* @stabs_pts_read_enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stabs_pts_read_enum(%struct.ParseTypedefData* %0, %struct.symt_enum* %1) #0 {
  %3 = alloca %struct.ParseTypedefData*, align 8
  %4 = alloca %struct.symt_enum*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ParseTypedefData* %0, %struct.ParseTypedefData** %3, align 8
  store %struct.symt_enum* %1, %struct.symt_enum** %4, align 8
  br label %7

7:                                                ; preds = %14, %2
  %8 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %9 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 59
  br i1 %13, label %14, label %55

14:                                               ; preds = %7
  %15 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %16 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %19 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %20 = call i32 @stabs_pts_read_id(%struct.ParseTypedefData* %19)
  %21 = icmp eq i32 %20, -1
  %22 = zext i1 %21 to i32
  %23 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %18, i32 %22)
  %24 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %25 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %26 = call i32 @stabs_pts_read_number(%struct.ParseTypedefData* %25, i64* %5)
  %27 = icmp eq i32 %26, -1
  %28 = zext i1 %27 to i32
  %29 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %24, i32 %28)
  %30 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %31 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %32 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %32, align 8
  %35 = load i8, i8* %33, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 44
  %38 = zext i1 %37 to i32
  %39 = call i32 @PTS_ABORTIF(%struct.ParseTypedefData* %30, i32 %38)
  %40 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %41 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.symt_enum*, %struct.symt_enum** %4, align 8
  %44 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %45 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @symt_add_enum_element(i32 %42, %struct.symt_enum* %43, i64 %49, i64 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %54 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %7

55:                                               ; preds = %7
  %56 = load %struct.ParseTypedefData*, %struct.ParseTypedefData** %3, align 8
  %57 = getelementptr inbounds %struct.ParseTypedefData, %struct.ParseTypedefData* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %57, align 8
  ret i32 0
}

declare dso_local i32 @PTS_ABORTIF(%struct.ParseTypedefData*, i32) #1

declare dso_local i32 @stabs_pts_read_id(%struct.ParseTypedefData*) #1

declare dso_local i32 @stabs_pts_read_number(%struct.ParseTypedefData*, i64*) #1

declare dso_local i32 @symt_add_enum_element(i32, %struct.symt_enum*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
