; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_xnu_kernelcache.c_mig_hash_new.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_xnu_kernelcache.c_mig_hash_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_MIG_INDEX_LEN = common dso_local global i32 0, align 4
@mig_index = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @mig_hash_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mig_hash_new() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = call i32* (...) @sdb_ht_new()
  store i32* %6, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %36

10:                                               ; preds = %0
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %31, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @R_MIG_INDEX_LEN, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load i8**, i8*** @mig_index, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %4, align 8
  %21 = load i8**, i8*** @mig_index, align 8
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %21, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %5, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @sdb_ht_insert(i32* %27, i8* %28, i8* %29)
  br label %31

31:                                               ; preds = %15
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 2
  store i32 %33, i32* %3, align 4
  br label %11

34:                                               ; preds = %11
  %35 = load i32*, i32** %2, align 8
  store i32* %35, i32** %1, align 8
  br label %36

36:                                               ; preds = %34, %9
  %37 = load i32*, i32** %1, align 8
  ret i32* %37
}

declare dso_local i32* @sdb_ht_new(...) #1

declare dso_local i32 @sdb_ht_insert(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
