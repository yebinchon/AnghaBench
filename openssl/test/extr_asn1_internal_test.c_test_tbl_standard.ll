; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_asn1_internal_test.c_test_tbl_standard.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_asn1_internal_test.c_test_tbl_standard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@tbl_standard = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"asn1 tbl_standard: Table order OK\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"asn1 tbl_standard: out of order\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"asn1 tbl_standard: Index %zu, NID %d, Name=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_tbl_standard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_tbl_standard() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 -1, i32* %3, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tbl_standard, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %2, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %22, %0
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tbl_standard, align 8
  %9 = call i64 @OSSL_NELEM(%struct.TYPE_4__* %8)
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %27

18:                                               ; preds = %11
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %4, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 1
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %2, align 8
  br label %6

27:                                               ; preds = %17, %6
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @TEST_int_ne(i32 %28, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @TEST_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %57

33:                                               ; preds = %27
  %34 = call i32 @TEST_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tbl_standard, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %2, align 8
  store i64 0, i64* %4, align 8
  br label %36

36:                                               ; preds = %51, %33
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @tbl_standard, align 8
  %39 = call i64 @OSSL_NELEM(%struct.TYPE_4__* %38)
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @OBJ_nid2ln(i32 %48)
  %50 = call i32 @TEST_note(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %42, i32 %45, i32 %49)
  br label %51

51:                                               ; preds = %41
  %52 = load i64, i64* %4, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %4, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 1
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %2, align 8
  br label %36

56:                                               ; preds = %36
  store i32 0, i32* %1, align 4
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_4__*) #1

declare dso_local i64 @TEST_int_ne(i32, i32) #1

declare dso_local i32 @TEST_info(i8*) #1

declare dso_local i32 @TEST_note(i8*, i64, i32, i32) #1

declare dso_local i32 @OBJ_nid2ln(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
