; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_evp_test.c_digestsigver_test_init.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_evp_test.c_digestsigver_test_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__*, i32* }

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@NID_undef = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32, i32)* @digestsigver_test_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @digestsigver_test_init(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32* @EVP_get_digestbyname(i8* %16)
  store i32* %17, i32** %10, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @OBJ_sn2nid(i8* %20)
  %22 = load i64, i64* @NID_undef, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @OBJ_ln2nid(i8* %25)
  %27 = load i64, i64* @NID_undef, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %19
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  store i32 1, i32* %5, align 4
  br label %61

32:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %61

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %33, %4
  %35 = call %struct.TYPE_9__* @OPENSSL_zalloc(i32 24)
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %11, align 8
  %36 = call i32 @TEST_ptr(%struct.TYPE_9__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %61

39:                                               ; preds = %34
  %40 = load i32*, i32** %10, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 3
  store i32* %40, i32** %42, align 8
  %43 = call %struct.TYPE_9__* (...) @EVP_MD_CTX_new()
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  store %struct.TYPE_9__* %43, %struct.TYPE_9__** %45, align 8
  %46 = call i32 @TEST_ptr(%struct.TYPE_9__* %43)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %50 = call i32 @OPENSSL_free(%struct.TYPE_9__* %49)
  store i32 0, i32* %5, align 4
  br label %61

51:                                               ; preds = %39
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %60, align 8
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %51, %48, %38, %32, %29
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @EVP_get_digestbyname(i8*) #1

declare dso_local i64 @OBJ_sn2nid(i8*) #1

declare dso_local i64 @OBJ_ln2nid(i8*) #1

declare dso_local i32 @TEST_ptr(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @OPENSSL_zalloc(i32) #1

declare dso_local %struct.TYPE_9__* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
