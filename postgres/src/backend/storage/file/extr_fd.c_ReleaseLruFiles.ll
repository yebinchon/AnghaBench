; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_ReleaseLruFiles.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_ReleaseLruFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nfile = common dso_local global i64 0, align 8
@numAllocatedDescs = common dso_local global i64 0, align 8
@max_safe_fds = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ReleaseLruFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReleaseLruFiles() #0 {
  br label %1

1:                                                ; preds = %11, %0
  %2 = load i64, i64* @nfile, align 8
  %3 = load i64, i64* @numAllocatedDescs, align 8
  %4 = add nsw i64 %2, %3
  %5 = load i64, i64* @max_safe_fds, align 8
  %6 = icmp sge i64 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = call i32 (...) @ReleaseLruFile()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  br label %12

11:                                               ; preds = %7
  br label %1

12:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @ReleaseLruFile(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
