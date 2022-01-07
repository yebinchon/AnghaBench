; ModuleID = '/home/carl/AnghaBench/openssl/crypto/objects/extr_o_names.c_OBJ_NAME_get.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/objects/extr_o_names.c_OBJ_NAME_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i8*, i64 }

@obj_lock = common dso_local global i32 0, align 4
@OBJ_NAME_ALIAS = common dso_local global i32 0, align 4
@names_lh = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @OBJ_NAME_get(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i8* null, i8** %10, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %65

14:                                               ; preds = %2
  %15 = call i32 (...) @OBJ_NAME_init()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i8* null, i8** %3, align 8
  br label %65

18:                                               ; preds = %14
  %19 = load i32, i32* @obj_lock, align 4
  %20 = call i32 @CRYPTO_THREAD_read_lock(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @OBJ_NAME_ALIAS, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @OBJ_NAME_ALIAS, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  br label %32

32:                                               ; preds = %60, %18
  %33 = load i32, i32* @names_lh, align 4
  %34 = call %struct.TYPE_4__* @lh_OBJ_NAME_retrieve(i32 %33, %struct.TYPE_4__* %6)
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %7, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = icmp eq %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %61

38:                                               ; preds = %32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  %49 = icmp sgt i32 %48, 10
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %61

51:                                               ; preds = %46
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i8* %54, i8** %55, align 8
  br label %60

56:                                               ; preds = %43, %38
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %10, align 8
  br label %61

60:                                               ; preds = %51
  br label %32

61:                                               ; preds = %56, %50, %37
  %62 = load i32, i32* @obj_lock, align 4
  %63 = call i32 @CRYPTO_THREAD_unlock(i32 %62)
  %64 = load i8*, i8** %10, align 8
  store i8* %64, i8** %3, align 8
  br label %65

65:                                               ; preds = %61, %17, %13
  %66 = load i8*, i8** %3, align 8
  ret i8* %66
}

declare dso_local i32 @OBJ_NAME_init(...) #1

declare dso_local i32 @CRYPTO_THREAD_read_lock(i32) #1

declare dso_local %struct.TYPE_4__* @lh_OBJ_NAME_retrieve(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
