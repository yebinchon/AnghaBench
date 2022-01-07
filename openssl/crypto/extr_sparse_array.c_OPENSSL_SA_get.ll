; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_sparse_array.c_OPENSSL_SA_get.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_sparse_array.c_OPENSSL_SA_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8**, i32 }

@OPENSSL_SA_BLOCK_BITS = common dso_local global i32 0, align 4
@SA_BLOCK_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @OPENSSL_SA_get(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %8, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = icmp eq %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %66

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %13, %16
  br i1 %17, label %18, label %64

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  store i8** %21, i8*** %7, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %47, %18
  %27 = load i8**, i8*** %7, align 8
  %28 = icmp ne i8** %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 0
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i1 [ false, %26 ], [ %31, %29 ]
  br i1 %33, label %34, label %50

34:                                               ; preds = %32
  %35 = load i8**, i8*** %7, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @OPENSSL_SA_BLOCK_BITS, align 4
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %37, %38
  %40 = ashr i32 %36, %39
  %41 = load i32, i32* @SA_BLOCK_MASK, align 4
  %42 = and i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %35, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = bitcast i8* %45 to i8**
  store i8** %46, i8*** %7, align 8
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %6, align 4
  br label %26

50:                                               ; preds = %32
  %51 = load i8**, i8*** %7, align 8
  %52 = icmp eq i8** %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %62

54:                                               ; preds = %50
  %55 = load i8**, i8*** %7, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @SA_BLOCK_MASK, align 4
  %58 = and i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %55, i64 %59
  %61 = load i8*, i8** %60, align 8
  br label %62

62:                                               ; preds = %54, %53
  %63 = phi i8* [ null, %53 ], [ %61, %54 ]
  store i8* %63, i8** %8, align 8
  br label %64

64:                                               ; preds = %62, %12
  %65 = load i8*, i8** %8, align 8
  store i8* %65, i8** %3, align 8
  br label %66

66:                                               ; preds = %64, %11
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
