; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_userfaultfd.c_uffd_read_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_userfaultfd.c_uffd_read_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uffd_msg = type { i32 }

@uffd_read_mutex = common dso_local global i32 0, align 4
@uffd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @uffd_read_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @uffd_read_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca %struct.uffd_msg, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to i64*
  store i64* %6, i64** %3, align 8
  %7 = load i64*, i64** %3, align 8
  store i64 0, i64* %7, align 8
  %8 = call i32 @pthread_mutex_unlock(i32* @uffd_read_mutex)
  br label %9

9:                                                ; preds = %14, %13, %1
  %10 = load i32, i32* @uffd, align 4
  %11 = call i64 @uffd_read_msg(i32 %10, %struct.uffd_msg* %4)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %9

14:                                               ; preds = %9
  %15 = call i64 @uffd_handle_page_fault(%struct.uffd_msg* %4)
  %16 = load i64*, i64** %3, align 8
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, %15
  store i64 %18, i64* %16, align 8
  br label %9
}

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @uffd_read_msg(i32, %struct.uffd_msg*) #1

declare dso_local i64 @uffd_handle_page_fault(%struct.uffd_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
