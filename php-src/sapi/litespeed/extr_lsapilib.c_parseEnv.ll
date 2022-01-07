; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_parseEnv.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_parseEnv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LSAPI_key_value_pair = type { i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.LSAPI_key_value_pair*, i32, i8**, i8*)* @parseEnv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parseEnv(%struct.LSAPI_key_value_pair* %0, i32 %1, i8** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.LSAPI_key_value_pair*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.LSAPI_key_value_pair*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.LSAPI_key_value_pair* %0, %struct.LSAPI_key_value_pair** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 8192
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %118

16:                                               ; preds = %4
  %17 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %17, i64 %19
  store %struct.LSAPI_key_value_pair* %20, %struct.LSAPI_key_value_pair** %10, align 8
  br label %21

21:                                               ; preds = %79, %16
  %22 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %23 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %10, align 8
  %24 = icmp ne %struct.LSAPI_key_value_pair* %22, %23
  br i1 %24, label %25, label %108

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8
  %27 = load i8**, i8*** %8, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = ptrtoint i8* %26 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = icmp slt i64 %31, 4
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %118

34:                                               ; preds = %25
  %35 = load i8**, i8*** %8, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %35, align 8
  %38 = load i8, i8* %36, align 1
  %39 = zext i8 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = shl i32 %40, 8
  %42 = load i8**, i8*** %8, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %42, align 8
  %45 = load i8, i8* %43, align 1
  %46 = zext i8 %45 to i32
  %47 = add nsw i32 %41, %46
  store i32 %47, i32* %11, align 4
  %48 = load i8**, i8*** %8, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %48, align 8
  %51 = load i8, i8* %49, align 1
  %52 = zext i8 %51 to i32
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = shl i32 %53, 8
  %55 = load i8**, i8*** %8, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %55, align 8
  %58 = load i8, i8* %56, align 1
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %54, %59
  store i32 %60, i32* %12, align 4
  %61 = load i8**, i8*** %8, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8*, i8** %9, align 8
  %70 = icmp ugt i8* %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %118

72:                                               ; preds = %34
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75, %72
  store i32 -1, i32* %5, align 4
  br label %118

79:                                               ; preds = %75
  %80 = load i8**, i8*** %8, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %83 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i8**, i8*** %8, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = sext i32 %84 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %85, align 8
  %89 = load i8**, i8*** %8, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %92 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i8**, i8*** %8, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = sext i32 %93 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %94, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sub nsw i32 %98, 1
  %100 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %101 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %105 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.LSAPI_key_value_pair*, %struct.LSAPI_key_value_pair** %6, align 8
  %107 = getelementptr inbounds %struct.LSAPI_key_value_pair, %struct.LSAPI_key_value_pair* %106, i32 1
  store %struct.LSAPI_key_value_pair* %107, %struct.LSAPI_key_value_pair** %6, align 8
  br label %21

108:                                              ; preds = %21
  %109 = load i8**, i8*** %8, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @memcmp(i8* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 -1, i32* %5, align 4
  br label %118

114:                                              ; preds = %108
  %115 = load i8**, i8*** %8, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 4
  store i8* %117, i8** %115, align 8
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %114, %113, %78, %71, %33, %15
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
