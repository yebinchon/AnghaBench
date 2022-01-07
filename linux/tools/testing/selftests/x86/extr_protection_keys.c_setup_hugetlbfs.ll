; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_protection_keys.c_setup_hugetlbfs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_protection_keys.c_setup_hugetlbfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.setup_hugetlbfs.buf = private unnamed_addr constant [4 x i8] c"123\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"WARNING: not run as root, can not do hugetlb test\0A\00", align 1
@GET_NR_HUGE_PAGES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"/proc/sys/vm/nr_hugepages\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"/sys/kernel/mm/hugepages/hugepages-2048kB/nr_hugepages\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"opening sysfs 2M hugetlb config\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"reading sysfs 2M hugetlb config\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"could not confirm 2M pages, got: '%s' expected %d\0A\00", align 1
@hugetlb_setup_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_hugetlbfs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [4 x i8], align 1
  %4 = bitcast [4 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.setup_hugetlbfs.buf, i32 0, i32 0), i64 4, i1 false)
  %5 = call i64 (...) @geteuid()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %41

10:                                               ; preds = %0
  %11 = load i64, i64* @GET_NR_HUGE_PAGES, align 8
  %12 = call i32 @__stringify(i64 %11)
  %13 = call i32 @cat_into_file(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = call i32 @open(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %41

20:                                               ; preds = %10
  %21 = load i32, i32* %2, align 4
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %23 = call i32 @read(i32 %21, i8* %22, i32 3)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @close(i32 %24)
  %26 = load i32, i32* %1, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = call i32 @perror(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %41

30:                                               ; preds = %20
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %32 = call i64 @atoi(i8* %31)
  %33 = load i64, i64* @GET_NR_HUGE_PAGES, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* @stderr, align 4
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %38 = load i64, i64* @GET_NR_HUGE_PAGES, align 8
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8* %37, i64 %38)
  br label %41

40:                                               ; preds = %30
  store i32 1, i32* @hugetlb_setup_ok, align 4
  br label %41

41:                                               ; preds = %40, %35, %28, %18, %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @geteuid(...) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @cat_into_file(i32, i8*) #2

declare dso_local i32 @__stringify(i64) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @atoi(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
