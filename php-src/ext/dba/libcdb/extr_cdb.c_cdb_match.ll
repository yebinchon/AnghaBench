; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libcdb/extr_cdb.c_cdb_match.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libcdb/extr_cdb.c_cdb_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdb*, i8*, i32, i32)* @cdb_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdb_match(%struct.cdb* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.cdb* %0, %struct.cdb** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  br label %12

12:                                               ; preds = %36, %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ugt i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %12
  store i32 32, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = load %struct.cdb*, %struct.cdb** %6, align 8
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @cdb_read(%struct.cdb* %22, i8* %23, i32 %24, i32 %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %48

29:                                               ; preds = %21
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @memcmp(i8* %30, i8* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %48

36:                                               ; preds = %29
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = add i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8* %43, i8** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %8, align 4
  %46 = sub i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %12

47:                                               ; preds = %12
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %35, %28
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @cdb_read(%struct.cdb*, i8*, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
