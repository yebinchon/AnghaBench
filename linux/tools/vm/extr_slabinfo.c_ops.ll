; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_ops.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_slabinfo.c_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabinfo = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"\0A%s: kmem_cache operations\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"--------------------------------------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@buffer = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"\0A%s has no kmem_cache operations\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slabinfo*)* @ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ops(%struct.slabinfo* %0) #0 {
  %2 = alloca %struct.slabinfo*, align 8
  store %struct.slabinfo* %0, %struct.slabinfo** %2, align 8
  %3 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %4 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = call i64 @strcmp(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %11 = call i64 @read_slab_obj(%struct.slabinfo* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %15 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i8*, i8** @buffer, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %19)
  br label %26

21:                                               ; preds = %9
  %22 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %23 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %8, %21, %13
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @read_slab_obj(%struct.slabinfo*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
