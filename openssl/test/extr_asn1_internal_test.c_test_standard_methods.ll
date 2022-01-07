; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_asn1_internal_test.c_test_standard_methods.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_asn1_internal_test.c_test_standard_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }

@standard_methods = common dso_local global %struct.TYPE_4__** null, align 8
@ASN1_PKEY_ALIAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"asn1 standard methods: Index %zu, pkey ID %d, Name=%s\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"asn1 standard methods: Table order OK\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"asn1 standard methods: out of order\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_standard_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_standard_methods() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %5, align 4
  %6 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @standard_methods, align 8
  store %struct.TYPE_4__** %6, %struct.TYPE_4__*** %2, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %72, %0
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @standard_methods, align 8
  %10 = call i64 @OSSL_NELEM(%struct.TYPE_4__** %9)
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %77

12:                                               ; preds = %7
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %77

20:                                               ; preds = %12
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %3, align 4
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ASN1_PKEY_ALIAS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %30, %20
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ASN1_PKEY_ALIAS, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br label %52

52:                                               ; preds = %44, %38
  %53 = phi i1 [ false, %38 ], [ %51, %44 ]
  br label %54

54:                                               ; preds = %52, %30
  %55 = phi i1 [ true, %30 ], [ %53, %52 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @TEST_true(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @OBJ_nid2sn(i32 %68)
  %70 = call i32 (i8*, ...) @TEST_note(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %60, i32 %64, i32 %69)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %59, %54
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %4, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %4, align 8
  %75 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %75, i32 1
  store %struct.TYPE_4__** %76, %struct.TYPE_4__*** %2, align 8
  br label %7

77:                                               ; preds = %19, %7
  %78 = load i32, i32* %3, align 4
  %79 = call i64 @TEST_int_ne(i32 %78, i32 0)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = call i32 @TEST_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %1, align 4
  br label %110

84:                                               ; preds = %77
  %85 = call i32 (i8*, ...) @TEST_note(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %86 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @standard_methods, align 8
  store %struct.TYPE_4__** %86, %struct.TYPE_4__*** %2, align 8
  store i64 0, i64* %4, align 8
  br label %87

87:                                               ; preds = %104, %84
  %88 = load i64, i64* %4, align 8
  %89 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @standard_methods, align 8
  %90 = call i64 @OSSL_NELEM(%struct.TYPE_4__** %89)
  %91 = icmp ult i64 %88, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %87
  %93 = load i64, i64* %4, align 8
  %94 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @OBJ_nid2sn(i32 %101)
  %103 = call i32 (i8*, ...) @TEST_note(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %93, i32 %97, i32 %102)
  br label %104

104:                                              ; preds = %92
  %105 = load i64, i64* %4, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %4, align 8
  %107 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %107, i32 1
  store %struct.TYPE_4__** %108, %struct.TYPE_4__*** %2, align 8
  br label %87

109:                                              ; preds = %87
  store i32 0, i32* %1, align 4
  br label %110

110:                                              ; preds = %109, %81
  %111 = load i32, i32* %1, align 4
  ret i32 %111
}

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_4__**) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @TEST_note(i8*, ...) #1

declare dso_local i32 @OBJ_nid2sn(i32) #1

declare dso_local i64 @TEST_int_ne(i32, i32) #1

declare dso_local i32 @TEST_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
