; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_fetch.c_put_evp_method_in_store.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_fetch.c_put_evp_method_in_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_method_data_st = type { i32, i32 }

@NAME_SEPARATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32*, i32, i8*, i8*, i8*)* @put_evp_method_in_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_evp_method_in_store(i32* %0, i8* %1, i8* %2, i32* %3, i32 %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.evp_method_data_st*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8* %7, i8** %17, align 8
  %24 = load i8*, i8** %17, align 8
  %25 = bitcast i8* %24 to %struct.evp_method_data_st*
  store %struct.evp_method_data_st* %25, %struct.evp_method_data_st** %18, align 8
  store i64 0, i64* %22, align 8
  %26 = load i8*, i8** %15, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %8
  %29 = load i8*, i8** %15, align 8
  %30 = load i32, i32* @NAME_SEPARATOR, align 4
  %31 = call i8* @strchr(i8* %29, i32 %30)
  store i8* %31, i8** %23, align 8
  %32 = load i8*, i8** %23, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i8*, i8** %15, align 8
  %36 = call i64 @strlen(i8* %35)
  br label %43

37:                                               ; preds = %28
  %38 = load i8*, i8** %23, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = ptrtoint i8* %38 to i64
  %41 = ptrtoint i8* %39 to i64
  %42 = sub i64 %40, %41
  br label %43

43:                                               ; preds = %37, %34
  %44 = phi i64 [ %36, %34 ], [ %42, %37 ]
  store i64 %44, i64* %22, align 8
  br label %45

45:                                               ; preds = %43, %8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32* @ossl_namemap_stored(i32* %46)
  store i32* %47, i32** %19, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %60, label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** %19, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = load i64, i64* %22, align 8
  %53 = call i32 @ossl_namemap_name2num_n(i32* %50, i8* %51, i64 %52)
  store i32 %53, i32* %20, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %20, align 4
  %58 = call i32 @evp_method_id(i32 %56, i32 %57)
  store i32 %58, i32* %21, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %49, %45
  store i32 0, i32* %9, align 4
  br label %82

61:                                               ; preds = %55
  %62 = load i8*, i8** %11, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32*, i32** %10, align 8
  %66 = call i8* @get_evp_method_store(i32* %65)
  store i8* %66, i8** %11, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 0, i32* %9, align 4
  br label %82

69:                                               ; preds = %64, %61
  %70 = load i8*, i8** %11, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %21, align 4
  %73 = load i8*, i8** %16, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = load %struct.evp_method_data_st*, %struct.evp_method_data_st** %18, align 8
  %76 = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.evp_method_data_st*, %struct.evp_method_data_st** %18, align 8
  %79 = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ossl_method_store_add(i8* %70, i32* %71, i32 %72, i8* %73, i8* %74, i32 %77, i32 %80)
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %69, %68, %60
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @ossl_namemap_stored(i32*) #1

declare dso_local i32 @ossl_namemap_name2num_n(i32*, i8*, i64) #1

declare dso_local i32 @evp_method_id(i32, i32) #1

declare dso_local i8* @get_evp_method_store(i32*) #1

declare dso_local i32 @ossl_method_store_add(i8*, i32*, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
