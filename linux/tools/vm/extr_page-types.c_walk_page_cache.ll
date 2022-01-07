; ModuleID = '/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_walk_page_cache.c'
source_filename = "/home/carl/AnghaBench/linux/tools/vm/extr_page-types.c_walk_page_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@opt_kpageflags = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@kpageflags_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"/proc/self/pagemap\00", align 1
@pagemap_fd = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@sigbus_action = common dso_local global i32 0, align 4
@opt_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"stat failed: %s\0A\00", align 1
@walk_tree = common dso_local global i32 0, align 4
@FTW_MOUNT = common dso_local global i32 0, align 4
@FTW_PHYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"nftw failed: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"unhandled file type: %s\0A\00", align 1
@SIG_DFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @walk_page_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_page_cache() #0 {
  %1 = alloca %struct.stat, align 4
  %2 = load i8*, i8** @opt_kpageflags, align 8
  %3 = load i32, i32* @O_RDONLY, align 4
  %4 = call i32 @checked_open(i8* %2, i32 %3)
  store i32 %4, i32* @kpageflags_fd, align 4
  %5 = load i32, i32* @O_RDONLY, align 4
  %6 = call i32 @checked_open(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %5)
  store i32 %6, i32* @pagemap_fd, align 4
  %7 = load i32, i32* @SIGBUS, align 4
  %8 = call i32 @sigaction(i32 %7, i32* @sigbus_action, i32* null)
  %9 = load i32, i32* @opt_file, align 4
  %10 = call i64 @stat(i32 %9, %struct.stat* %1)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* @opt_file, align 4
  %14 = call i32 @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %0
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @S_ISREG(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @opt_file, align 4
  %22 = call i32 @walk_file(i32 %21, %struct.stat* %1)
  br label %44

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @S_ISDIR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load i32, i32* @opt_file, align 4
  %30 = load i32, i32* @walk_tree, align 4
  %31 = load i32, i32* @FTW_MOUNT, align 4
  %32 = load i32, i32* @FTW_PHYS, align 4
  %33 = or i32 %31, %32
  %34 = call i64 @nftw(i32 %29, i32 %30, i32 64, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @opt_file, align 4
  %38 = call i32 @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %28
  br label %43

40:                                               ; preds = %23
  %41 = load i32, i32* @opt_file, align 4
  %42 = call i32 @fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %39
  br label %44

44:                                               ; preds = %43, %20
  %45 = load i32, i32* @kpageflags_fd, align 4
  %46 = call i32 @close(i32 %45)
  %47 = load i32, i32* @pagemap_fd, align 4
  %48 = call i32 @close(i32 %47)
  %49 = load i32, i32* @SIGBUS, align 4
  %50 = load i32, i32* @SIG_DFL, align 4
  %51 = call i32 @signal(i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @checked_open(i8*, i32) #1

declare dso_local i32 @sigaction(i32, i32*, i32*) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @walk_file(i32, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @nftw(i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
