; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_prefix_init.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_prefix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@PGP_MAX_BLOCK = common dso_local global i32 0, align 4
@PXE_BUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"prefix_init: short read\00", align 1
@PXE_PGP_CORRUPT_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"prefix_init: corrupt prefix\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32*)* @prefix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prefix_init(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %8, align 8
  %17 = load i32, i32* @PGP_MAX_BLOCK, align 4
  %18 = add nsw i32 %17, 2
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pgp_get_cipher_block_size(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = mul nuw i64 8, %19
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @PXE_BUG, align 4
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %87

32:                                               ; preds = %3
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 2
  %36 = call i32 @pullf_read_max(i32* %33, i32 %35, i64** %11, i64* %21)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %87

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 2
  %45 = icmp ne i32 %42, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = call i32 @px_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %48 = mul nuw i64 8, %19
  %49 = trunc i64 %48 to i32
  %50 = call i32 @px_memset(i64* %21, i32 0, i32 %49)
  %51 = load i32, i32* @PXE_PGP_CORRUPT_DATA, align 4
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %87

52:                                               ; preds = %41
  %53 = load i64*, i64** %11, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %53, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %11, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %58, %63
  br i1 %64, label %79, label %65

65:                                               ; preds = %52
  %66 = load i64*, i64** %11, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %11, align 8
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %71, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %65, %52
  %80 = call i32 @px_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %65
  %84 = mul nuw i64 8, %19
  %85 = trunc i64 %84 to i32
  %86 = call i32 @px_memset(i64* %21, i32 0, i32 %85)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %87

87:                                               ; preds = %83, %46, %39, %30
  %88 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pgp_get_cipher_block_size(i32) #2

declare dso_local i32 @pullf_read_max(i32*, i32, i64**, i64*) #2

declare dso_local i32 @px_debug(i8*) #2

declare dso_local i32 @px_memset(i64*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
