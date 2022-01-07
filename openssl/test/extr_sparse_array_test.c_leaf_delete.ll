; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_sparse_array_test.c_leaf_delete.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_sparse_array_test.c_leaf_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doall_st = type { i32, i64, i32, %struct.index_cases_st* }
%struct.index_cases_st = type { i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"Index %ju with value %s not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i8*)* @leaf_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @leaf_delete(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.doall_st*, align 8
  %8 = alloca %struct.index_cases_st*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.doall_st*
  store %struct.doall_st* %11, %struct.doall_st** %7, align 8
  %12 = load %struct.doall_st*, %struct.doall_st** %7, align 8
  %13 = getelementptr inbounds %struct.doall_st, %struct.doall_st* %12, i32 0, i32 3
  %14 = load %struct.index_cases_st*, %struct.index_cases_st** %13, align 8
  store %struct.index_cases_st* %14, %struct.index_cases_st** %8, align 8
  %15 = load %struct.doall_st*, %struct.doall_st** %7, align 8
  %16 = getelementptr inbounds %struct.doall_st, %struct.doall_st* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  store i64 0, i64* %9, align 8
  br label %17

17:                                               ; preds = %49, %3
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.doall_st*, %struct.doall_st** %7, align 8
  %20 = getelementptr inbounds %struct.doall_st, %struct.doall_st* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %17
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.index_cases_st*, %struct.index_cases_st** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.index_cases_st, %struct.index_cases_st* %25, i64 %26
  %28 = getelementptr inbounds %struct.index_cases_st, %struct.index_cases_st* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %24, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %23
  %32 = load i8*, i8** %5, align 8
  %33 = load %struct.index_cases_st*, %struct.index_cases_st** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.index_cases_st, %struct.index_cases_st* %33, i64 %34
  %36 = getelementptr inbounds %struct.index_cases_st, %struct.index_cases_st* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @strcmp(i8* %32, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load %struct.doall_st*, %struct.doall_st** %7, align 8
  %42 = getelementptr inbounds %struct.doall_st, %struct.doall_st* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.doall_st*, %struct.doall_st** %7, align 8
  %44 = getelementptr inbounds %struct.doall_st, %struct.doall_st* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @ossl_sa_char_set(i32 %45, i64 %46, i32* null)
  br label %56

48:                                               ; preds = %31, %23
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %17

52:                                               ; preds = %17
  %53 = load i64, i64* %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @TEST_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %53, i8* %54)
  br label %56

56:                                               ; preds = %52, %40
  ret void
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @ossl_sa_char_set(i32, i64, i32*) #1

declare dso_local i32 @TEST_error(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
