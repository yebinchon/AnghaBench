; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_readfuncs.c_readDatum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_readfuncs.c_readDatum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"expected \22[\22 to start datum, but got \22%s\22; length = %zu\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[NULL]\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"byval datum but length = %zu\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"expected \22]\22 to end datum, but got \22%s\22; length = %zu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @readDatum(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %9 = call i8* @pg_strtok(i32* %5)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @atoui(i8* %10)
  store i64 %11, i64* %3, align 8
  %12 = call i8* @pg_strtok(i32* %5)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 91
  br i1 %20, label %21, label %32

21:                                               ; preds = %15, %1
  %22 = load i32, i32* @ERROR, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  br label %28

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i8* [ %26, %25 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %27 ]
  %30 = load i64, i64* %3, align 8
  %31 = call i32 (i32, i8*, ...) @elog(i32 %22, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %29, i64 %30)
  br label %32

32:                                               ; preds = %28, %15
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load i64, i64* %3, align 8
  %37 = icmp ugt i64 %36, 8
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i64, i64* %3, align 8
  %41 = call i32 (i32, i8*, ...) @elog(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %38, %35
  store i64 0, i64* %7, align 8
  %43 = bitcast i64* %7 to i8*
  store i8* %43, i8** %8, align 8
  store i64 0, i64* %4, align 8
  br label %44

44:                                               ; preds = %55, %42
  %45 = load i64, i64* %4, align 8
  %46 = icmp ult i64 %45, 8
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = call i8* @pg_strtok(i32* %5)
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @atoi(i8* %49)
  %51 = trunc i64 %50 to i8
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 %51, i8* %54, align 1
  br label %55

55:                                               ; preds = %47
  %56 = load i64, i64* %4, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %4, align 8
  br label %44

58:                                               ; preds = %44
  br label %86

59:                                               ; preds = %32
  %60 = load i64, i64* %3, align 8
  %61 = icmp ule i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i64 0, i64* %7, align 8
  br label %85

63:                                               ; preds = %59
  %64 = load i64, i64* %3, align 8
  %65 = call i64 @palloc(i64 %64)
  %66 = inttoptr i64 %65 to i8*
  store i8* %66, i8** %8, align 8
  store i64 0, i64* %4, align 8
  br label %67

67:                                               ; preds = %79, %63
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* %3, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = call i8* @pg_strtok(i32* %5)
  store i8* %72, i8** %6, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i64 @atoi(i8* %73)
  %75 = trunc i64 %74 to i8
  %76 = load i8*, i8** %8, align 8
  %77 = load i64, i64* %4, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8 %75, i8* %78, align 1
  br label %79

79:                                               ; preds = %71
  %80 = load i64, i64* %4, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %4, align 8
  br label %67

82:                                               ; preds = %67
  %83 = load i8*, i8** %8, align 8
  %84 = call i64 @PointerGetDatum(i8* %83)
  store i64 %84, i64* %7, align 8
  br label %85

85:                                               ; preds = %82, %62
  br label %86

86:                                               ; preds = %85, %58
  %87 = call i8* @pg_strtok(i32* %5)
  store i8* %87, i8** %6, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 93
  br i1 %95, label %96, label %107

96:                                               ; preds = %90, %86
  %97 = load i32, i32* @ERROR, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i8*, i8** %6, align 8
  br label %103

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i8* [ %101, %100 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %102 ]
  %105 = load i64, i64* %3, align 8
  %106 = call i32 (i32, i8*, ...) @elog(i32 %97, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %104, i64 %105)
  br label %107

107:                                              ; preds = %103, %90
  %108 = load i64, i64* %7, align 8
  ret i64 %108
}

declare dso_local i8* @pg_strtok(i32*) #1

declare dso_local i64 @atoui(i8*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i64 @PointerGetDatum(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
