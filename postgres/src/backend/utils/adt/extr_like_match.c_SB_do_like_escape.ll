; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_match.c_SB_do_like_escape.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_like_match.c_SB_do_like_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VARHDRSZ = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_ESCAPE_SEQUENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid escape string\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Escape string must be empty or one character.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @do_like_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_like_escape(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i8* @VARDATA_ANY(i32* %13)
  store i8* %14, i8** %7, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @VARSIZE_ANY_EXHDR(i32* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i8* @VARDATA_ANY(i32* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @VARSIZE_ANY_EXHDR(i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = mul nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @VARHDRSZ, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i64 @palloc(i64 %25)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i8* @VARDATA(i32* %28)
  store i8* %29, i8** %9, align 8
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %44, %32
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 92
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %9, align 8
  store i8 92, i8* %42, align 1
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i8*, i8** %9, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @CopyAdvChar(i8* %45, i8* %46, i32 %47)
  br label %33

49:                                               ; preds = %33
  br label %120

50:                                               ; preds = %2
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @NextChar(i8* %51, i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load i32, i32* @ERROR, align 4
  %58 = load i32, i32* @ERRCODE_INVALID_ESCAPE_SEQUENCE, align 4
  %59 = call i32 @errcode(i32 %58)
  %60 = call i32 @errmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %61 = call i32 @errhint(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 @ereport(i32 %57, i32 %61)
  br label %63

63:                                               ; preds = %56, %50
  %64 = load i32*, i32** %5, align 8
  %65 = call i8* @VARDATA_ANY(i32* %64)
  store i8* %65, i8** %8, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 92
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load i32*, i32** %6, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @VARSIZE_ANY(i32* %73)
  %75 = call i32 @memcpy(i32* %71, i32* %72, i32 %74)
  %76 = load i32*, i32** %6, align 8
  store i32* %76, i32** %3, align 8
  br label %131

77:                                               ; preds = %63
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %118, %77
  %79 = load i32, i32* %10, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %119

81:                                               ; preds = %78
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i64 @CHAREQ(i8* %82, i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  store i8 92, i8* %90, align 1
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @NextChar(i8* %92, i32 %93)
  store i32 1, i32* %12, align 4
  br label %118

95:                                               ; preds = %86, %81
  %96 = load i8*, i8** %7, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 92
  br i1 %99, label %100, label %112

100:                                              ; preds = %95
  %101 = load i8*, i8** %9, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %9, align 8
  store i8 92, i8* %101, align 1
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %9, align 8
  store i8 92, i8* %106, align 1
  br label %108

108:                                              ; preds = %105, %100
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @NextChar(i8* %109, i32 %110)
  store i32 0, i32* %12, align 4
  br label %117

112:                                              ; preds = %95
  %113 = load i8*, i8** %9, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @CopyAdvChar(i8* %113, i8* %114, i32 %115)
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %112, %108
  br label %118

118:                                              ; preds = %117, %89
  br label %78

119:                                              ; preds = %78
  br label %120

120:                                              ; preds = %119, %49
  %121 = load i32*, i32** %6, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = bitcast i32* %123 to i8*
  %125 = ptrtoint i8* %122 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  %129 = call i32 @SET_VARSIZE(i32* %121, i32 %128)
  %130 = load i32*, i32** %6, align 8
  store i32* %130, i32** %3, align 8
  br label %131

131:                                              ; preds = %120, %70
  %132 = load i32*, i32** %3, align 8
  ret i32* %132
}

declare dso_local i8* @VARDATA_ANY(i32*) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i8* @VARDATA(i32*) #1

declare dso_local i32 @CopyAdvChar(i8*, i8*, i32) #1

declare dso_local i32 @NextChar(i8*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @VARSIZE_ANY(i32*) #1

declare dso_local i64 @CHAREQ(i8*, i8*) #1

declare dso_local i32 @SET_VARSIZE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
