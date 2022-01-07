; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_srp.c_get_index.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_srp.c_get_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DB_SRP_INDEX = common dso_local global i8 0, align 1
@DB_srptype = common dso_local global i64 0, align 8
@DB_srpid = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i8)* @get_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_index(%struct.TYPE_5__* %0, i8* %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8 %2, i8* %7, align 1
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %106

13:                                               ; preds = %3
  %14 = load i8, i8* %7, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8, i8* @DB_SRP_INDEX, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %58, %19
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sk_OPENSSL_PSTRING_num(i32 %26)
  %28 = icmp slt i32 %21, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %20
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i8** @sk_OPENSSL_PSTRING_value(i32 %34, i32 %35)
  store i8** %36, i8*** %8, align 8
  %37 = load i8**, i8*** %8, align 8
  %38 = load i64, i64* @DB_srptype, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @DB_SRP_INDEX, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %29
  %48 = load i8*, i8** %6, align 8
  %49 = load i8**, i8*** %8, align 8
  %50 = load i64, i64* @DB_srpid, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i64 @strcmp(i8* %48, i8* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %106

57:                                               ; preds = %47, %29
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %20

61:                                               ; preds = %20
  br label %105

62:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %101, %62
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sk_OPENSSL_PSTRING_num(i32 %69)
  %71 = icmp slt i32 %64, %70
  br i1 %71, label %72, label %104

72:                                               ; preds = %63
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i8** @sk_OPENSSL_PSTRING_value(i32 %77, i32 %78)
  store i8** %79, i8*** %8, align 8
  %80 = load i8**, i8*** %8, align 8
  %81 = load i64, i64* @DB_srptype, align 8
  %82 = getelementptr inbounds i8*, i8** %80, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = load i8, i8* @DB_SRP_INDEX, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %86, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %72
  %91 = load i8*, i8** %6, align 8
  %92 = load i8**, i8*** %8, align 8
  %93 = load i64, i64* @DB_srpid, align 8
  %94 = getelementptr inbounds i8*, i8** %92, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @strcmp(i8* %91, i8* %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %4, align 4
  br label %106

100:                                              ; preds = %90, %72
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %63

104:                                              ; preds = %63
  br label %105

105:                                              ; preds = %104, %61
  store i32 -1, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %98, %55, %12
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @sk_OPENSSL_PSTRING_num(i32) #1

declare dso_local i8** @sk_OPENSSL_PSTRING_value(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
