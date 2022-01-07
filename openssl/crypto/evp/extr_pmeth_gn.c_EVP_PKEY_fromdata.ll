; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_gn.c_EVP_PKEY_fromdata.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_gn.c_EVP_PKEY_fromdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@EVP_PKEY_OP_TYPE_FROMDATA = common dso_local global i32 0, align 4
@ERR_LIB_EVP = common dso_local global i32 0, align 4
@EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EVP_PKEY_OP_PARAMFROMDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PKEY_fromdata(%struct.TYPE_3__* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @EVP_PKEY_OP_TYPE_FROMDATA, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11, %3
  %19 = load i32, i32* @ERR_LIB_EVP, align 4
  %20 = load i32, i32* @EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE, align 4
  %21 = call i32 @ERR_raise(i32 %19, i32 %20)
  store i32 -2, i32* %4, align 4
  br label %59

22:                                               ; preds = %11
  %23 = load i32**, i32*** %6, align 8
  %24 = icmp eq i32** %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %59

26:                                               ; preds = %22
  %27 = load i32**, i32*** %6, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = call i32* (...) @EVP_PKEY_new()
  %32 = load i32**, i32*** %6, align 8
  store i32* %31, i32** %32, align 8
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32**, i32*** %6, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @ERR_LIB_EVP, align 4
  %39 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %40 = call i32 @ERR_raise(i32 %38, i32 %39)
  store i32 -1, i32* %4, align 4
  br label %59

41:                                               ; preds = %33
  %42 = load i32**, i32*** %6, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @EVP_PKEY_OP_PARAMFROMDATA, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i8* @evp_keymgmt_fromdata(i32* %43, i32 %46, i32* %47, i32 %53)
  store i8* %54, i8** %8, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %59

58:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %57, %37, %25, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @ERR_raise(i32, i32) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i8* @evp_keymgmt_fromdata(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
