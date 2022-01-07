; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_transhuge-stress.c_allocate_transhuge.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_transhuge-stress.c_allocate_transhuge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPAGE_SIZE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_NORESERVE = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mmap transhuge\00", align 1
@MADV_HUGEPAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"MADV_HUGEPAGE\00", align 1
@pagemap_fd = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"read pagemap\00", align 1
@HPAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @allocate_transhuge(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [2 x i32], align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* @HPAGE_SIZE, align 4
  %7 = load i32, i32* @PROT_READ, align 4
  %8 = load i32, i32* @PROT_WRITE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MAP_FIXED, align 4
  %11 = load i32, i32* @MAP_ANONYMOUS, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MAP_NORESERVE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MAP_PRIVATE, align 4
  %16 = or i32 %14, %15
  %17 = call i8* @mmap(i8* %5, i32 %6, i32 %9, i32 %16, i32 -1, i32 0)
  %18 = load i8*, i8** %3, align 8
  %19 = icmp ne i8* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @errx(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %1
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* @HPAGE_SIZE, align 4
  %25 = load i32, i32* @MADV_HUGEPAGE, align 4
  %26 = call i64 @madvise(i8* %23, i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @err(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %22
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = bitcast i8* %32 to i8**
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* @pagemap_fd, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %36 = load i8*, i8** %3, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load i32, i32* @PAGE_SHIFT, align 4
  %39 = sub nsw i32 %38, 3
  %40 = zext i32 %39 to i64
  %41 = lshr i64 %37, %40
  %42 = call i32 @pread(i32 %34, i32* %35, i32 8, i64 %41)
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, 8
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = call i32 @err(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %30
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @PAGEMAP_PRESENT(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %47
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @PAGEMAP_PRESENT(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %52
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PAGEMAP_PFN(i32 %59)
  %61 = add nsw i32 %60, 1
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @PAGEMAP_PFN(i32 %63)
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %57
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PAGEMAP_PFN(i32 %68)
  %70 = load i32, i32* @HPAGE_SHIFT, align 4
  %71 = load i32, i32* @PAGE_SHIFT, align 4
  %72 = sub nsw i32 %70, %71
  %73 = shl i32 1, %72
  %74 = sub nsw i32 %73, 1
  %75 = and i32 %69, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %66
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @PAGEMAP_PFN(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %82

81:                                               ; preds = %66, %57, %52, %47
  store i32 -1, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %77
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i8* @mmap(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @madvise(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @pread(i32, i32*, i32, i64) #1

declare dso_local i64 @PAGEMAP_PRESENT(i32) #1

declare dso_local i32 @PAGEMAP_PFN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
