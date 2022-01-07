; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libcdb/extr_cdb.c_cdb_read.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libcdb/extr_cdb.c_cdb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdb = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdb_read(%struct.cdb* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cdb* %0, %struct.cdb** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.cdb*, %struct.cdb** %6, align 8
  %12 = getelementptr inbounds %struct.cdb, %struct.cdb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @SEEK_SET, align 4
  %16 = call i32 @php_stream_seek(i32 %13, i32 %14, i32 %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i64, i64* @EPROTO, align 8
  store i64 %19, i64* @errno, align 8
  store i32 -1, i32* %5, align 4
  br label %59

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %50, %20
  %22 = load i32, i32* %8, align 4
  %23 = icmp ugt i32 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %39, %24
  %26 = load %struct.cdb*, %struct.cdb** %6, align 8
  %27 = getelementptr inbounds %struct.cdb, %struct.cdb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @php_stream_read(i32 %28, i8* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @EINTR, align 8
  %38 = icmp eq i64 %36, %37
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  br i1 %40, label %25, label %41

41:                                               ; preds = %39
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 -1, i32* %5, align 4
  br label %59

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i64, i64* @EPROTO, align 8
  store i64 %49, i64* @errno, align 8
  store i32 -1, i32* %5, align 4
  br label %59

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %21

58:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %48, %44, %18
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @php_stream_seek(i32, i32, i32) #1

declare dso_local i32 @php_stream_read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
