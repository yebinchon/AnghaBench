; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_parse_cgroup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_parse_cgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@opt_cgroup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"stat failed: %s: %m\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"cgroup supposed to be a directory: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_cgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_cgroup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 64
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = call i32 @parse_number(i8* %11)
  store i32 %12, i32* @opt_cgroup, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @stat(i8* %14, %struct.stat* %3)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %17, %13
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @S_ISDIR(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @fatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* @opt_cgroup, align 4
  br label %31

31:                                               ; preds = %28, %9
  ret void
}

declare dso_local i32 @parse_number(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @fatal(i8*, i8*) #1

declare dso_local i32 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
