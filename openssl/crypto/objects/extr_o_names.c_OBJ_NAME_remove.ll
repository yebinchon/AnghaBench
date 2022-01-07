; ModuleID = '/home/carl/AnghaBench/openssl/crypto/objects/extr_o_names.c_OBJ_NAME_remove.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/objects/extr_o_names.c_OBJ_NAME_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32 }
%struct.TYPE_7__ = type { i32 (i8*, i64, i32)* }

@obj_lock = common dso_local global i32 0, align 4
@OBJ_NAME_ALIAS = common dso_local global i32 0, align 4
@names_lh = common dso_local global i32 0, align 4
@name_funcs_stack = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OBJ_NAME_remove(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = call i32 (...) @OBJ_NAME_init()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

12:                                               ; preds = %2
  %13 = load i32, i32* @obj_lock, align 4
  %14 = call i32 @CRYPTO_THREAD_write_lock(i32 %13)
  %15 = load i32, i32* @OBJ_NAME_ALIAS, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  %23 = load i32, i32* @names_lh, align 4
  %24 = call %struct.TYPE_6__* @lh_OBJ_NAME_delete(i32 %23, %struct.TYPE_6__* %6)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %7, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %61

27:                                               ; preds = %12
  %28 = load i32*, i32** @name_funcs_stack, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %58

30:                                               ; preds = %27
  %31 = load i32*, i32** @name_funcs_stack, align 8
  %32 = call i64 @sk_NAME_FUNCS_num(i32* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = icmp sgt i64 %32, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %30
  %39 = load i32*, i32** @name_funcs_stack, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = call %struct.TYPE_7__* @sk_NAME_FUNCS_value(i32* %39, i64 %43)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32 (i8*, i64, i32)*, i32 (i8*, i64, i32)** %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 %46(i8* %49, i64 %53, i32 %56)
  br label %58

58:                                               ; preds = %38, %30, %27
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = call i32 @OPENSSL_free(%struct.TYPE_6__* %59)
  store i32 1, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %12
  %62 = load i32, i32* @obj_lock, align 4
  %63 = call i32 @CRYPTO_THREAD_unlock(i32 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %11
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @OBJ_NAME_init(...) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local %struct.TYPE_6__* @lh_OBJ_NAME_delete(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @sk_NAME_FUNCS_num(i32*) #1

declare dso_local %struct.TYPE_7__* @sk_NAME_FUNCS_value(i32*, i64) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_6__*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
