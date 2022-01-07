; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_keygen_test_init.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_keygen_test_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_10__* }

@NID_undef = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"KEYGEN_INIT_ERROR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*)* @keygen_test_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keygen_test_init(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @OBJ_sn2nid(i8* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @NID_undef, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @OBJ_ln2nid(i8* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @NID_undef, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %56

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.TYPE_10__* @EVP_PKEY_CTX_new_id(i32 %23, i32* null)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %7, align 8
  %25 = call i32 @TEST_ptr(%struct.TYPE_10__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  store i32 1, i32* %3, align 4
  br label %56

30:                                               ; preds = %22
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %32 = call i64 @EVP_PKEY_keygen_init(%struct.TYPE_10__* %31)
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %36, align 8
  br label %53

37:                                               ; preds = %30
  %38 = call %struct.TYPE_10__* @OPENSSL_malloc(i32 16)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %6, align 8
  %39 = call i32 @TEST_ptr(%struct.TYPE_10__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %53

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  store i8* null, i8** %52, align 8
  store i32 1, i32* %3, align 4
  br label %56

53:                                               ; preds = %41, %34
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = call i32 @EVP_PKEY_CTX_free(%struct.TYPE_10__* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %42, %27, %20
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @OBJ_sn2nid(i8*) #1

declare dso_local i32 @OBJ_ln2nid(i8*) #1

declare dso_local i32 @TEST_ptr(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @EVP_PKEY_CTX_new_id(i32, i32*) #1

declare dso_local i64 @EVP_PKEY_keygen_init(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @EVP_PKEY_CTX_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
