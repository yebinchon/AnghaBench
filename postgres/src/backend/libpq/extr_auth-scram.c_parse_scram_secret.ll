; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth-scram.c_parse_scram_secret.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth-scram.c_parse_scram_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"SCRAM-SHA-256\00", align 1
@errno = common dso_local global i64 0, align 8
@SCRAM_KEY_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_scram_secret(i8* %0, i32* %1, i8** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @pstrdup(i8* %23)
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = call i8* @strtok(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %14, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %121

29:                                               ; preds = %5
  %30 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %16, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %121

33:                                               ; preds = %29
  %34 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %15, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %121

37:                                               ; preds = %33
  %38 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %38, i8** %17, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %121

41:                                               ; preds = %37
  %42 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i8* %42, i8** %18, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %121

45:                                               ; preds = %41
  %46 = load i8*, i8** %14, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %121

50:                                               ; preds = %45
  store i64 0, i64* @errno, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = call i32 @strtol(i8* %51, i8** %13, i32 10)
  %53 = load i32*, i32** %8, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i8*, i8** %13, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %50
  %59 = load i64, i64* @errno, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %50
  br label %121

62:                                               ; preds = %58
  %63 = load i8*, i8** %15, align 8
  %64 = call i32 @strlen(i8* %63)
  %65 = call i32 @pg_b64_dec_len(i32 %64)
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %19, align 4
  %67 = call i8* @palloc(i32 %66)
  store i8* %67, i8** %20, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = load i8*, i8** %20, align 8
  %72 = load i32, i32* %19, align 4
  %73 = call i32 @pg_b64_decode(i8* %68, i32 %70, i8* %71, i32 %72)
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %19, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %121

77:                                               ; preds = %62
  %78 = load i8*, i8** %15, align 8
  %79 = call i8* @pstrdup(i8* %78)
  %80 = load i8**, i8*** %9, align 8
  store i8* %79, i8** %80, align 8
  %81 = load i8*, i8** %17, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = call i32 @pg_b64_dec_len(i32 %82)
  store i32 %83, i32* %19, align 4
  %84 = load i32, i32* %19, align 4
  %85 = call i8* @palloc(i32 %84)
  store i8* %85, i8** %21, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = load i8*, i8** %17, align 8
  %88 = call i32 @strlen(i8* %87)
  %89 = load i8*, i8** %21, align 8
  %90 = load i32, i32* %19, align 4
  %91 = call i32 @pg_b64_decode(i8* %86, i32 %88, i8* %89, i32 %90)
  store i32 %91, i32* %19, align 4
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %77
  br label %121

96:                                               ; preds = %77
  %97 = load i32*, i32** %10, align 8
  %98 = load i8*, i8** %21, align 8
  %99 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %100 = call i32 @memcpy(i32* %97, i8* %98, i32 %99)
  %101 = load i8*, i8** %18, align 8
  %102 = call i32 @strlen(i8* %101)
  %103 = call i32 @pg_b64_dec_len(i32 %102)
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %19, align 4
  %105 = call i8* @palloc(i32 %104)
  store i8* %105, i8** %22, align 8
  %106 = load i8*, i8** %18, align 8
  %107 = load i8*, i8** %18, align 8
  %108 = call i32 @strlen(i8* %107)
  %109 = load i8*, i8** %22, align 8
  %110 = load i32, i32* %19, align 4
  %111 = call i32 @pg_b64_decode(i8* %106, i32 %108, i8* %109, i32 %110)
  store i32 %111, i32* %19, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %96
  br label %121

116:                                              ; preds = %96
  %117 = load i32*, i32** %11, align 8
  %118 = load i8*, i8** %22, align 8
  %119 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %120 = call i32 @memcpy(i32* %117, i8* %118, i32 %119)
  store i32 1, i32* %6, align 4
  br label %123

121:                                              ; preds = %115, %95, %76, %61, %49, %44, %40, %36, %32, %28
  %122 = load i8**, i8*** %9, align 8
  store i8* null, i8** %122, align 8
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %121, %116
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @pg_b64_dec_len(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @pg_b64_decode(i8*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
