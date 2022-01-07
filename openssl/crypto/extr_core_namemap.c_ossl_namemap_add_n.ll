; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_core_namemap.c_ossl_namemap_add_n.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_core_namemap.c_ossl_namemap_add_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_namemap_add_n(%struct.TYPE_9__* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = icmp eq %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = call %struct.TYPE_9__* @ossl_namemap_stored(i32* null)
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %6, align 8
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i8*, i8** %8, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %9, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = icmp eq %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %16
  store i32 0, i32* %5, align 4
  br label %87

26:                                               ; preds = %22
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @ossl_namemap_name2num_n(%struct.TYPE_9__* %27, i8* %28, i64 %29)
  store i32 %30, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %87

34:                                               ; preds = %26
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @CRYPTO_THREAD_write_lock(i32 %37)
  %39 = call %struct.TYPE_10__* @OPENSSL_zalloc(i32 16)
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %10, align 8
  %40 = icmp eq %struct.TYPE_10__* %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32* @OPENSSL_strndup(i8* %42, i64 %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = icmp eq i32* %44, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41, %34
  br label %80

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  br label %59

54:                                               ; preds = %49
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %52
  %60 = phi i32 [ %53, %52 ], [ %58, %54 ]
  store i32 %60, i32* %11, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %67 = call i32 @lh_NAMENUM_ENTRY_insert(i32 %65, %struct.TYPE_10__* %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @lh_NAMENUM_ENTRY_error(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %80

74:                                               ; preds = %59
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @CRYPTO_THREAD_unlock(i32 %77)
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %5, align 4
  br label %87

80:                                               ; preds = %73, %48
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %82 = call i32 @namenum_free(%struct.TYPE_10__* %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @CRYPTO_THREAD_unlock(i32 %85)
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %80, %74, %32, %25
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_9__* @ossl_namemap_stored(i32*) #1

declare dso_local i32 @ossl_namemap_name2num_n(%struct.TYPE_9__*, i8*, i64) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local %struct.TYPE_10__* @OPENSSL_zalloc(i32) #1

declare dso_local i32* @OPENSSL_strndup(i8*, i64) #1

declare dso_local i32 @lh_NAMENUM_ENTRY_insert(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @lh_NAMENUM_ENTRY_error(i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

declare dso_local i32 @namenum_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
