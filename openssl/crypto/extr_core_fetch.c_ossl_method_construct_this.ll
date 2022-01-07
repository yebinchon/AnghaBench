; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_core_fetch.c_ossl_method_construct_this.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_core_fetch.c_ossl_method_construct_this.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.construct_data_st = type { i32, %struct.TYPE_4__*, i32, i32*, i32, i64 }
%struct.TYPE_4__ = type { i32 (i8*, i32)*, i32 (i32, i32*, i8*, i32*, i32, i32, i32, i32)*, i8* (i32, i32, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32, i8*)* @ossl_method_construct_this to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ossl_method_construct_this(i32* %0, %struct.TYPE_5__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.construct_data_st*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.construct_data_st*
  store %struct.construct_data_st* %12, %struct.construct_data_st** %9, align 8
  store i8* null, i8** %10, align 8
  %13 = load %struct.construct_data_st*, %struct.construct_data_st** %9, align 8
  %14 = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i8* (i32, i32, i32*, i32)*, i8* (i32, i32, i32*, i32)** %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.construct_data_st*, %struct.construct_data_st** %9, align 8
  %26 = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i8* %17(i32 %20, i32 %23, i32* %24, i32 %27)
  store i8* %28, i8** %10, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %100

31:                                               ; preds = %4
  %32 = load %struct.construct_data_st*, %struct.construct_data_st** %9, align 8
  %33 = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.construct_data_st*, %struct.construct_data_st** %9, align 8
  %41 = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32 (i32, i32*, i8*, i32*, i32, i32, i32, i32)*, i32 (i32, i32*, i8*, i32*, i32, i32, i32, i32)** %43, align 8
  %45 = load %struct.construct_data_st*, %struct.construct_data_st** %9, align 8
  %46 = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.construct_data_st*, %struct.construct_data_st** %9, align 8
  %51 = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.construct_data_st*, %struct.construct_data_st** %9, align 8
  %60 = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %44(i32 %47, i32* null, i8* %48, i32* %49, i32 %52, i32 %55, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %39, %36
  %64 = load %struct.construct_data_st*, %struct.construct_data_st** %9, align 8
  %65 = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32 (i32, i32*, i8*, i32*, i32, i32, i32, i32)*, i32 (i32, i32*, i8*, i32*, i32, i32, i32, i32)** %67, align 8
  %69 = load %struct.construct_data_st*, %struct.construct_data_st** %9, align 8
  %70 = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.construct_data_st*, %struct.construct_data_st** %9, align 8
  %73 = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.construct_data_st*, %struct.construct_data_st** %9, align 8
  %78 = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.construct_data_st*, %struct.construct_data_st** %9, align 8
  %87 = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 %68(i32 %71, i32* %74, i8* %75, i32* %76, i32 %79, i32 %82, i32 %85, i32 %88)
  %90 = load %struct.construct_data_st*, %struct.construct_data_st** %9, align 8
  %91 = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32 (i8*, i32)*, i32 (i8*, i32)** %93, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = load %struct.construct_data_st*, %struct.construct_data_st** %9, align 8
  %97 = getelementptr inbounds %struct.construct_data_st, %struct.construct_data_st* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 %94(i8* %95, i32 %98)
  br label %100

100:                                              ; preds = %63, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
