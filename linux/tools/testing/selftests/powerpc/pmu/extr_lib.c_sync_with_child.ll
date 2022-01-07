; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_lib.c_sync_with_child.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/pmu/extr_lib.c_sync_with_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pipe = type { i32 }

@PARENT_TOKEN = common dso_local global i8 0, align 1
@CHILD_TOKEN = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sync_with_child(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.pipe, align 4
  %5 = alloca %union.pipe, align 4
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %union.pipe, %union.pipe* %4, i32 0, i32 0
  store i32 %0, i32* %7, align 4
  %8 = getelementptr inbounds %union.pipe, %union.pipe* %5, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  %9 = load i8, i8* @PARENT_TOKEN, align 1
  store i8 %9, i8* %6, align 1
  %10 = bitcast %union.pipe* %5 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @write(i32 %11, i8* %6, i32 1)
  %13 = icmp ne i32 %12, 1
  %14 = zext i1 %13 to i32
  %15 = call i32 @FAIL_IF(i32 %14)
  %16 = bitcast %union.pipe* %4 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @read(i32 %17, i8* %6, i32 1)
  %19 = icmp ne i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = call i32 @FAIL_IF(i32 %20)
  %22 = load i8, i8* %6, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* @CHILD_TOKEN, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @FAIL_IF(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
