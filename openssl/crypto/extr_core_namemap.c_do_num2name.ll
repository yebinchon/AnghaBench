; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_core_namemap.c_do_num2name.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_core_namemap.c_do_num2name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.num2name_data_st = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @do_num2name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_num2name(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.num2name_data_st*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.num2name_data_st*
  store %struct.num2name_data_st* %7, %struct.num2name_data_st** %5, align 8
  %8 = load %struct.num2name_data_st*, %struct.num2name_data_st** %5, align 8
  %9 = getelementptr inbounds %struct.num2name_data_st, %struct.num2name_data_st* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.num2name_data_st*, %struct.num2name_data_st** %5, align 8
  %14 = getelementptr inbounds %struct.num2name_data_st, %struct.num2name_data_st* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.num2name_data_st*, %struct.num2name_data_st** %5, align 8
  %19 = getelementptr inbounds %struct.num2name_data_st, %struct.num2name_data_st* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.num2name_data_st*, %struct.num2name_data_st** %5, align 8
  %25 = getelementptr inbounds %struct.num2name_data_st, %struct.num2name_data_st* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  br label %26

26:                                               ; preds = %22, %17
  br label %27

27:                                               ; preds = %26, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
