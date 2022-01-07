; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encrypt.c_HPDF_Encrypt_InitKey.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encrypt.c_HPDF_Encrypt_InitKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i8** }

@.str = private unnamed_addr constant [20 x i8] c" HPDF_Encrypt_Init\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"@@@ OID=%u, gen_no=%u\0A\00", align 1
@HPDF_ENCRYPT_KEY_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HPDF_Encrypt_InitKey(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @HPDF_PTRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i8**, i8*** %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i8*, i8** %15, i64 %18
  store i8* %12, i8** %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 8
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i8**, i8*** %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  %31 = getelementptr inbounds i8*, i8** %26, i64 %30
  store i8* %23, i8** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 16
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i8**, i8*** %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 2
  %43 = getelementptr inbounds i8*, i8** %38, i64 %42
  store i8* %35, i8** %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i8**, i8*** %48, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 3
  %54 = getelementptr inbounds i8*, i8** %49, i64 %53
  store i8* %46, i8** %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 8
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i8**, i8*** %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 4
  %66 = getelementptr inbounds i8*, i8** %61, i64 %65
  store i8* %58, i8** %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @HPDF_PTRACE(i8* %70)
  %72 = call i32 @HPDF_MD5Init(i32* %7)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i8**, i8*** %74, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 5
  %80 = call i32 @HPDF_MD5Update(i32* %7, i8** %75, i64 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @HPDF_MD5Final(i32 %83, i32* %7)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 5
  %89 = load i64, i64* @HPDF_ENCRYPT_KEY_MAX, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %3
  %92 = load i64, i64* @HPDF_ENCRYPT_KEY_MAX, align 8
  br label %98

93:                                               ; preds = %3
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, 5
  br label %98

98:                                               ; preds = %93, %91
  %99 = phi i64 [ %92, %91 ], [ %97, %93 ]
  store i64 %99, i64* %8, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @ARC4Init(i32* %101, i32 %104, i64 %105)
  ret void
}

declare dso_local i32 @HPDF_PTRACE(i8*) #1

declare dso_local i32 @HPDF_MD5Init(i32*) #1

declare dso_local i32 @HPDF_MD5Update(i32*, i8**, i64) #1

declare dso_local i32 @HPDF_MD5Final(i32, i32*) #1

declare dso_local i32 @ARC4Init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
