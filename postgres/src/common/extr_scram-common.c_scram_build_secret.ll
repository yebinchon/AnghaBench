; ModuleID = '/home/carl/AnghaBench/postgres/src/common/extr_scram-common.c_scram_build_secret.c'
source_filename = "/home/carl/AnghaBench/postgres/src/common/extr_scram-common.c_scram_build_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCRAM_KEY_LEN = common dso_local global i32 0, align 4
@SCRAM_DEFAULT_ITERATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SCRAM-SHA-256\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SCRAM-SHA-256$%d:\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"could not encode salt\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"could not encode stored key\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"could not encode server key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @scram_build_secret(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %20 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %27 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = load i32, i32* @SCRAM_DEFAULT_ITERATIONS, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %4
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @scram_SaltedPassword(i8* %35, i8* %36, i32 %37, i32 %38, i32* %23)
  %40 = call i32 @scram_ClientKey(i32* %23, i32* %26)
  %41 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %42 = call i32 @scram_H(i32* %26, i32 %41, i32* %26)
  %43 = call i32 @scram_ServerKey(i32* %23, i32* %29)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @pg_b64_enc_len(i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %47 = call i32 @pg_b64_enc_len(i32 %46)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %49 = call i32 @pg_b64_enc_len(i32 %48)
  store i32 %49, i32* %18, align 4
  %50 = call i32 @strlen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %51 = add nsw i32 %50, 1
  %52 = add nsw i32 %51, 10
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %53, %54
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %17, align 4
  %58 = add nsw i32 %56, %57
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %18, align 4
  %61 = add nsw i32 %59, %60
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i8* @palloc(i32 %63)
  store i8* %64, i8** %13, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @sprintf(i8* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  store i8* %70, i8** %14, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i8*, i8** %14, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @pg_b64_encode(i8* %71, i32 %72, i8* %73, i32 %74)
  store i32 %75, i32* %19, align 4
  %76 = load i32, i32* %19, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %34
  %79 = load i32, i32* @ERROR, align 4
  %80 = call i32 @elog(i32 %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %34
  %82 = load i32, i32* %19, align 4
  %83 = load i8*, i8** %14, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %14, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %14, align 8
  store i8 36, i8* %86, align 1
  %88 = bitcast i32* %26 to i8*
  %89 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %90 = load i8*, i8** %14, align 8
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @pg_b64_encode(i8* %88, i32 %89, i8* %90, i32 %91)
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %19, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %81
  %96 = load i32, i32* @ERROR, align 4
  %97 = call i32 @elog(i32 %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %81
  %99 = load i32, i32* %19, align 4
  %100 = load i8*, i8** %14, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8* %102, i8** %14, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %14, align 8
  store i8 58, i8* %103, align 1
  %105 = bitcast i32* %29 to i8*
  %106 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %107 = load i8*, i8** %14, align 8
  %108 = load i32, i32* %18, align 4
  %109 = call i32 @pg_b64_encode(i8* %105, i32 %106, i8* %107, i32 %108)
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %98
  %113 = load i32, i32* @ERROR, align 4
  %114 = call i32 @elog(i32 %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %98
  %116 = load i32, i32* %19, align 4
  %117 = load i8*, i8** %14, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %14, align 8
  %120 = load i8*, i8** %14, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %14, align 8
  store i8 0, i8* %120, align 1
  %122 = load i8*, i8** %14, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = ptrtoint i8* %122 to i64
  %125 = ptrtoint i8* %123 to i64
  %126 = sub i64 %124, %125
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp sle i64 %126, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @Assert(i32 %130)
  %132 = load i8*, i8** %13, align 8
  %133 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %133)
  ret i8* %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @scram_SaltedPassword(i8*, i8*, i32, i32, i32*) #2

declare dso_local i32 @scram_ClientKey(i32*, i32*) #2

declare dso_local i32 @scram_H(i32*, i32, i32*) #2

declare dso_local i32 @scram_ServerKey(i32*, i32*) #2

declare dso_local i32 @pg_b64_enc_len(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @palloc(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @pg_b64_encode(i8*, i32, i8*, i32) #2

declare dso_local i32 @elog(i32, i8*) #2

declare dso_local i32 @Assert(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
