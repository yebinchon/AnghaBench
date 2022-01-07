; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_x509_internal_test.c_test_standard_exts.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_x509_internal_test.c_test_standard_exts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@standard_exts = common dso_local global %struct.TYPE_4__** null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Extensions out of order!\00", align 1
@STANDARD_EXTENSION_COUNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"%d : %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_standard_exts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_standard_exts() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__**, align 8
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %3, align 4
  %5 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @standard_exts, align 8
  store %struct.TYPE_4__** %5, %struct.TYPE_4__*** %4, align 8
  store i64 0, i64* %1, align 8
  br label %6

6:                                                ; preds = %24, %0
  %7 = load i64, i64* %1, align 8
  %8 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @standard_exts, align 8
  %9 = call i64 @OSSL_NELEM(%struct.TYPE_4__** %8)
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %6
  %12 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %11
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %1, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %1, align 8
  %27 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %27, i32 1
  store %struct.TYPE_4__** %28, %struct.TYPE_4__*** %4, align 8
  br label %6

29:                                               ; preds = %6
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %56, label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @standard_exts, align 8
  store %struct.TYPE_4__** %33, %struct.TYPE_4__*** %4, align 8
  %34 = call i32 @TEST_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  br label %35

35:                                               ; preds = %50, %32
  %36 = load i64, i64* %1, align 8
  %37 = load i64, i64* @STANDARD_EXTENSION_COUNT, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @OBJ_nid2sn(i32 %47)
  %49 = call i32 @TEST_note(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %48)
  br label %50

50:                                               ; preds = %39
  %51 = load i64, i64* %1, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %1, align 8
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i32 1
  store %struct.TYPE_4__** %54, %struct.TYPE_4__*** %4, align 8
  br label %35

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %55, %29
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_4__**) #1

declare dso_local i32 @TEST_error(i8*) #1

declare dso_local i32 @TEST_note(i8*, i32, i32) #1

declare dso_local i32 @OBJ_nid2sn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
