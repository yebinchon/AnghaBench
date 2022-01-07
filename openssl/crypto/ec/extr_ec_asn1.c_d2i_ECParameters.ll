; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_asn1.c_d2i_ECParameters.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_asn1.c_d2i_ECParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@EC_F_D2I_ECPARAMETERS = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @d2i_ECParameters(%struct.TYPE_6__** %0, i8** %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = icmp eq i8** %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11, %3
  %16 = load i32, i32* @EC_F_D2I_ECPARAMETERS, align 4
  %17 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %18 = call i32 @ECerr(i32 %16, i32 %17)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %67

19:                                               ; preds = %11
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %21 = icmp eq %struct.TYPE_6__** %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp eq %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %22, %19
  %27 = call %struct.TYPE_6__* (...) @EC_KEY_new()
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %8, align 8
  %28 = icmp eq %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @EC_F_D2I_ECPARAMETERS, align 4
  %31 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %32 = call i32 @ECerr(i32 %30, i32 %31)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %67

33:                                               ; preds = %26
  br label %37

34:                                               ; preds = %22
  %35 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %8, align 8
  br label %37

37:                                               ; preds = %34, %33
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i8**, i8*** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @d2i_ECPKParameters(i32* %39, i8** %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @EC_F_D2I_ECPARAMETERS, align 4
  %46 = load i32, i32* @ERR_R_EC_LIB, align 4
  %47 = call i32 @ECerr(i32 %45, i32 %46)
  %48 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %49 = icmp eq %struct.TYPE_6__** %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = icmp ne %struct.TYPE_6__* %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50, %44
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = call i32 @EC_KEY_free(%struct.TYPE_6__* %56)
  br label %58

58:                                               ; preds = %55, %50
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %67

59:                                               ; preds = %37
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %61 = icmp ne %struct.TYPE_6__** %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %64, align 8
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %4, align 8
  br label %67

67:                                               ; preds = %65, %58, %29, %15
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %68
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local %struct.TYPE_6__* @EC_KEY_new(...) #1

declare dso_local i32 @d2i_ECPKParameters(i32*, i8**, i64) #1

declare dso_local i32 @EC_KEY_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
