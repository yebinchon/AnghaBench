; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encrypt.c_HPDF_Encrypt_CreateEncryptionKey.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encrypt.c_HPDF_Encrypt_CreateEncryptionKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i64*, i64*, i64*, i64* }

@.str = private unnamed_addr constant [35 x i8] c" HPDF_Encrypt_CreateEncryptionKey\0A\00", align 1
@HPDF_PASSWD_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"@@@ permission =%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"@ Algorithm 3.2 step 5\0A\00", align 1
@HPDF_ID_LEN = common dso_local global i32 0, align 4
@HPDF_ENCRYPT_R3 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"@ Algorithm 3.3 step 6 loop %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HPDF_Encrypt_CreateEncryptionKey(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i64], align 16
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @HPDF_MD5Init(i32* %3)
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 6
  %10 = load i64*, i64** %9, align 8
  %11 = load i32, i32* @HPDF_PASSWD_LEN, align 4
  %12 = call i32 @HPDF_MD5Update(i32* %3, i64* %10, i32 %11)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 5
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* @HPDF_PASSWD_LEN, align 4
  %17 = call i32 @HPDF_MD5Update(i32* %3, i64* %15, i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @HPDF_PTRACE(i8* %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  store i64 %27, i64* %28, align 16
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %31, 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  store i64 %33, i64* %34, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = ashr i32 %37, 16
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  store i64 %39, i64* %40, align 16
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %43, 24
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  store i64 %45, i64* %46, align 8
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %48 = call i32 @HPDF_MD5Update(i32* %3, i64* %47, i32 4)
  %49 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* @HPDF_ID_LEN, align 4
  %54 = call i32 @HPDF_MD5Update(i32* %3, i64* %52, i32 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  %57 = load i64*, i64** %56, align 8
  %58 = call i32 @HPDF_MD5Final(i64* %57, i32* %3)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @HPDF_ENCRYPT_R3, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %85, %64
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 50
  br i1 %67, label %68, label %88

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @HPDF_PTRACE(i8* %71)
  %73 = call i32 @HPDF_MD5Init(i32* %3)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @HPDF_MD5Update(i32* %3, i64* %76, i32 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  %83 = load i64*, i64** %82, align 8
  %84 = call i32 @HPDF_MD5Final(i64* %83, i32* %3)
  br label %85

85:                                               ; preds = %68
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %65

88:                                               ; preds = %65
  br label %89

89:                                               ; preds = %88, %1
  ret void
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_MD5Init(i32*) #1

declare dso_local i32 @HPDF_MD5Update(i32*, i64*, i32) #1

declare dso_local i32 @HPDF_MD5Final(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
