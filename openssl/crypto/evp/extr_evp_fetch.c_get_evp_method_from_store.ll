; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_fetch.c_get_evp_method_from_store.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_fetch.c_get_evp_method_from_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evp_method_data_st = type { i32, i8*, i32 (i8*)*, i32, i32 }

@NAME_SEPARATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*)* @get_evp_method_from_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_evp_method_from_store(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.evp_method_data_st*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.evp_method_data_st*
  store %struct.evp_method_data_st* %17, %struct.evp_method_data_st** %8, align 8
  store i8* null, i8** %9, align 8
  %18 = load %struct.evp_method_data_st*, %struct.evp_method_data_st** %8, align 8
  %19 = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = call i32* @ossl_namemap_stored(i32* %23)
  store i32* %24, i32** %12, align 8
  %25 = load %struct.evp_method_data_st*, %struct.evp_method_data_st** %8, align 8
  %26 = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = load i32, i32* @NAME_SEPARATOR, align 4
  %30 = call i8* @strchr(i8* %28, i32 %29)
  store i8* %30, i8** %14, align 8
  %31 = load i8*, i8** %14, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i8*, i8** %13, align 8
  %35 = call i64 @strlen(i8* %34)
  br label %42

36:                                               ; preds = %22
  %37 = load i8*, i8** %14, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  br label %42

42:                                               ; preds = %36, %33
  %43 = phi i64 [ %35, %33 ], [ %41, %36 ]
  store i64 %43, i64* %15, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i8* null, i8** %4, align 8
  br label %90

47:                                               ; preds = %42
  %48 = load i32*, i32** %12, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i64, i64* %15, align 8
  %51 = call i32 @ossl_namemap_name2num_n(i32* %48, i8* %49, i64 %50)
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %47, %3
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load %struct.evp_method_data_st*, %struct.evp_method_data_st** %8, align 8
  %57 = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @evp_method_id(i32 %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55, %52
  store i8* null, i8** %4, align 8
  br label %90

63:                                               ; preds = %55
  %64 = load i8*, i8** %6, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32*, i32** %5, align 8
  %68 = call i8* @get_evp_method_store(i32* %67)
  store i8* %68, i8** %6, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i8* null, i8** %4, align 8
  br label %90

71:                                               ; preds = %66, %63
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.evp_method_data_st*, %struct.evp_method_data_st** %8, align 8
  %75 = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ossl_method_store_fetch(i8* %72, i32 %73, i32 %76, i8** %9)
  %78 = load i8*, i8** %9, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %71
  %81 = load %struct.evp_method_data_st*, %struct.evp_method_data_st** %8, align 8
  %82 = getelementptr inbounds %struct.evp_method_data_st, %struct.evp_method_data_st* %81, i32 0, i32 2
  %83 = load i32 (i8*)*, i32 (i8*)** %82, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 %83(i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  store i8* null, i8** %9, align 8
  br label %88

88:                                               ; preds = %87, %80, %71
  %89 = load i8*, i8** %9, align 8
  store i8* %89, i8** %4, align 8
  br label %90

90:                                               ; preds = %88, %70, %62, %46
  %91 = load i8*, i8** %4, align 8
  ret i8* %91
}

declare dso_local i32* @ossl_namemap_stored(i32*) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ossl_namemap_name2num_n(i32*, i8*, i64) #1

declare dso_local i32 @evp_method_id(i32, i32) #1

declare dso_local i8* @get_evp_method_store(i32*) #1

declare dso_local i32 @ossl_method_store_fetch(i8*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
