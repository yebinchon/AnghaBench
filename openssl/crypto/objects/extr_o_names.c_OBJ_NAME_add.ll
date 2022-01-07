; ModuleID = '/home/carl/AnghaBench/openssl/crypto/objects/extr_o_names.c_OBJ_NAME_add.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/objects/extr_o_names.c_OBJ_NAME_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32, i8* }
%struct.TYPE_8__ = type { i32 (i8*, i64, i8*)* }

@OBJ_NAME_ALIAS = common dso_local global i32 0, align 4
@obj_lock = common dso_local global i32 0, align 4
@names_lh = common dso_local global i32 0, align 4
@name_funcs_stack = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OBJ_NAME_add(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %12 = call i32 (...) @OBJ_NAME_init()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %94

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @OBJ_NAME_ALIAS, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @OBJ_NAME_ALIAS, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = call %struct.TYPE_7__* @OPENSSL_malloc(i32 24)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %8, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = icmp eq %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %90

27:                                               ; preds = %15
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @obj_lock, align 4
  %41 = call i32 @CRYPTO_THREAD_write_lock(i32 %40)
  %42 = load i32, i32* @names_lh, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = call %struct.TYPE_7__* @lh_OBJ_NAME_insert(i32 %42, %struct.TYPE_7__* %43)
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %9, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %47, label %81

47:                                               ; preds = %27
  %48 = load i32*, i32** @name_funcs_stack, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %78

50:                                               ; preds = %47
  %51 = load i32*, i32** @name_funcs_stack, align 8
  %52 = call i64 @sk_NAME_FUNCS_num(i32* %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp sgt i64 %52, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %50
  %59 = load i32*, i32** @name_funcs_stack, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = call %struct.TYPE_8__* @sk_NAME_FUNCS_value(i32* %59, i64 %63)
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32 (i8*, i64, i8*)*, i32 (i8*, i64, i8*)** %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 %66(i8* %69, i64 %73, i8* %76)
  br label %78

78:                                               ; preds = %58, %50, %47
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = call i32 @OPENSSL_free(%struct.TYPE_7__* %79)
  br label %89

81:                                               ; preds = %27
  %82 = load i32, i32* @names_lh, align 4
  %83 = call i64 @lh_OBJ_NAME_error(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = call i32 @OPENSSL_free(%struct.TYPE_7__* %86)
  br label %90

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %78
  store i32 1, i32* %11, align 4
  br label %90

90:                                               ; preds = %89, %85, %26
  %91 = load i32, i32* @obj_lock, align 4
  %92 = call i32 @CRYPTO_THREAD_unlock(i32 %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %14
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @OBJ_NAME_init(...) #1

declare dso_local %struct.TYPE_7__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local %struct.TYPE_7__* @lh_OBJ_NAME_insert(i32, %struct.TYPE_7__*) #1

declare dso_local i64 @sk_NAME_FUNCS_num(i32*) #1

declare dso_local %struct.TYPE_8__* @sk_NAME_FUNCS_value(i32*, i64) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_7__*) #1

declare dso_local i64 @lh_OBJ_NAME_error(i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
