; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_strnid.c_ASN1_STRING_set_by_NID.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_strnid.c_ASN1_STRING_set_by_NID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@STABLE_NO_MASK = common dso_local global i32 0, align 4
@global_mask = common dso_local global i64 0, align 8
@DIRSTRING_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ASN1_STRING_set_by_NID(i32** %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* null, i32** %13, align 8
  %16 = load i32**, i32*** %7, align 8
  %17 = icmp eq i32** %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32** %13, i32*** %7, align 8
  br label %19

19:                                               ; preds = %18, %5
  %20 = load i32, i32* %11, align 4
  %21 = call %struct.TYPE_3__* @ASN1_STRING_TABLE_get(i32 %20)
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %12, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %51

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %14, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @STABLE_NO_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %24
  %35 = load i64, i64* @global_mask, align 8
  %36 = load i64, i64* %14, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %14, align 8
  br label %38

38:                                               ; preds = %34, %24
  %39 = load i32**, i32*** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i64, i64* %14, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ASN1_mbstring_ncopy(i32** %39, i8* %40, i32 %41, i32 %42, i64 %43, i32 %46, i32 %49)
  store i32 %50, i32* %15, align 4
  br label %60

51:                                               ; preds = %19
  %52 = load i32**, i32*** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i64, i64* @DIRSTRING_TYPE, align 8
  %57 = load i64, i64* @global_mask, align 8
  %58 = and i64 %56, %57
  %59 = call i32 @ASN1_mbstring_copy(i32** %52, i8* %53, i32 %54, i32 %55, i64 %58)
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %51, %38
  %61 = load i32, i32* %15, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32* null, i32** %6, align 8
  br label %67

64:                                               ; preds = %60
  %65 = load i32**, i32*** %7, align 8
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %6, align 8
  br label %67

67:                                               ; preds = %64, %63
  %68 = load i32*, i32** %6, align 8
  ret i32* %68
}

declare dso_local %struct.TYPE_3__* @ASN1_STRING_TABLE_get(i32) #1

declare dso_local i32 @ASN1_mbstring_ncopy(i32**, i8*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @ASN1_mbstring_copy(i32**, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
