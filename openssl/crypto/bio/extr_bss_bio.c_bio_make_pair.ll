; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_bio.c_bio_make_pair.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bss_bio.c_bio_make_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.bio_bio_st* }
%struct.bio_bio_st = type { i64, i64, %struct.TYPE_4__*, i64, i64, i32*, i32 }

@BIO_F_BIO_MAKE_PAIR = common dso_local global i32 0, align 4
@BIO_R_IN_USE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @bio_make_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_make_pair(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.bio_bio_st*, align 8
  %7 = alloca %struct.bio_bio_st*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.bio_bio_st*, %struct.bio_bio_st** %17, align 8
  store %struct.bio_bio_st* %18, %struct.bio_bio_st** %6, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.bio_bio_st*, %struct.bio_bio_st** %20, align 8
  store %struct.bio_bio_st* %21, %struct.bio_bio_st** %7, align 8
  %22 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %23 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %28 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26, %2
  %32 = load i32, i32* @BIO_F_BIO_MAKE_PAIR, align 4
  %33 = load i32, i32* @BIO_R_IN_USE, align 4
  %34 = call i32 @BIOerr(i32 %32, i32 %33)
  store i32 0, i32* %3, align 4
  br label %106

35:                                               ; preds = %26
  %36 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %37 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %35
  %41 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %42 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @OPENSSL_malloc(i32 %43)
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %47 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %46, i32 0, i32 5
  store i32* %45, i32** %47, align 8
  %48 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %49 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load i32, i32* @BIO_F_BIO_MAKE_PAIR, align 4
  %54 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %55 = call i32 @BIOerr(i32 %53, i32 %54)
  store i32 0, i32* %3, align 4
  br label %106

56:                                               ; preds = %40
  %57 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %58 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %60 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %56, %35
  %62 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %63 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %87

66:                                               ; preds = %61
  %67 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %68 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @OPENSSL_malloc(i32 %69)
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %73 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %72, i32 0, i32 5
  store i32* %71, i32** %73, align 8
  %74 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %75 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load i32, i32* @BIO_F_BIO_MAKE_PAIR, align 4
  %80 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %81 = call i32 @BIOerr(i32 %79, i32 %80)
  store i32 0, i32* %3, align 4
  br label %106

82:                                               ; preds = %66
  %83 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %84 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %83, i32 0, i32 4
  store i64 0, i64* %84, align 8
  %85 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %86 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %82, %61
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %89 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %90 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %89, i32 0, i32 2
  store %struct.TYPE_4__* %88, %struct.TYPE_4__** %90, align 8
  %91 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %92 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.bio_bio_st*, %struct.bio_bio_st** %6, align 8
  %94 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %96 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %97 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %96, i32 0, i32 2
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %97, align 8
  %98 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %99 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = load %struct.bio_bio_st*, %struct.bio_bio_st** %7, align 8
  %101 = getelementptr inbounds %struct.bio_bio_st, %struct.bio_bio_st* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  store i32 1, i32* %3, align 4
  br label %106

106:                                              ; preds = %87, %78, %52, %31
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
