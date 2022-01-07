; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_show_tracking.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_show_tracking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabinfo = type { i8* }

@.str = private unnamed_addr constant [31 x i8] c"\0A%s: Kernel object allocation\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"-----------------------------------------------------------------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"alloc_calls\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@buffer = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"No Data\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"\0A%s: Kernel object freeing\0A\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"------------------------------------------------------------------------\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"free_calls\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slabinfo*)* @show_tracking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_tracking(%struct.slabinfo* %0) #0 {
  %2 = alloca %struct.slabinfo*, align 8
  store %struct.slabinfo* %0, %struct.slabinfo** %2, align 8
  %3 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %4 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %5)
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %8 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %9 = call i64 @read_slab_obj(%struct.slabinfo* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** @buffer, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %12)
  br label %16

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %11
  %17 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %18 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %19)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0))
  %22 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %23 = call i64 @read_slab_obj(%struct.slabinfo* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i8*, i8** @buffer, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  br label %30

28:                                               ; preds = %16
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %25
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @read_slab_obj(%struct.slabinfo*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
