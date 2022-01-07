; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libcdb/extr_cdb_make.c_cdb_make_addbegin.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libcdb/extr_cdb_make.c_cdb_make_addbegin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdb_make = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdb_make_addbegin(%struct.cdb_make* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdb_make*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i8], align 1
  store %struct.cdb_make* %0, %struct.cdb_make** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ugt i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i32, i32* @ENOMEM, align 4
  store i32 %12, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %32

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ugt i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* @ENOMEM, align 4
  store i32 %17, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %32

18:                                               ; preds = %13
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @uint32_pack(i8* %19, i32 %20)
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @uint32_pack(i8* %23, i32 %24)
  %26 = load %struct.cdb_make*, %struct.cdb_make** %5, align 8
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %28 = call i64 @cdb_make_write(%struct.cdb_make* %26, i8* %27, i32 8)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %32

31:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %30, %16, %11
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @uint32_pack(i8*, i32) #1

declare dso_local i64 @cdb_make_write(%struct.cdb_make*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
