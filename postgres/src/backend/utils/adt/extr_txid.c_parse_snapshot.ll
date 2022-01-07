; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_txid.c_parse_snapshot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_txid.c_parse_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid input syntax for type %s: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"txid_snapshot\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @parse_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_snapshot(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %6, align 8
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i64 @str2txid(i8* %12, i8** %9)
  store i64 %13, i64* %4, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 58
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %95

19:                                               ; preds = %1
  %20 = load i8*, i8** %9, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8* %21, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i64 @str2txid(i8* %22, i8** %9)
  store i64 %23, i64* %5, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 58
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %95

29:                                               ; preds = %19
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %31, i8** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %34, %29
  br label %95

42:                                               ; preds = %37
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @buf_init(i64 %43, i64 %44)
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %91, %42
  %47 = load i8*, i8** %3, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %92

51:                                               ; preds = %46
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @str2txid(i8* %52, i8** %9)
  store i64 %53, i64* %7, align 8
  %54 = load i8*, i8** %9, align 8
  store i8* %54, i8** %3, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %4, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %51
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %58, %51
  br label %95

67:                                               ; preds = %62
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* %10, align 4
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @buf_add_txid(i32 %72, i64 %73)
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i64, i64* %7, align 8
  store i64 %76, i64* %6, align 8
  %77 = load i8*, i8** %3, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 44
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %3, align 8
  br label %91

84:                                               ; preds = %75
  %85 = load i8*, i8** %3, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %95

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %81
  br label %46

92:                                               ; preds = %46
  %93 = load i32, i32* %10, align 4
  %94 = call i32* @buf_finalize(i32 %93)
  store i32* %94, i32** %2, align 8
  br label %102

95:                                               ; preds = %89, %66, %41, %28, %18
  %96 = load i32, i32* @ERROR, align 4
  %97 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %98 = call i32 @errcode(i32 %97)
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %99)
  %101 = call i32 @ereport(i32 %96, i32 %100)
  store i32* null, i32** %2, align 8
  br label %102

102:                                              ; preds = %95, %92
  %103 = load i32*, i32** %2, align 8
  ret i32* %103
}

declare dso_local i64 @str2txid(i8*, i8**) #1

declare dso_local i32 @buf_init(i64, i64) #1

declare dso_local i32 @buf_add_txid(i32, i64) #1

declare dso_local i32* @buf_finalize(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
