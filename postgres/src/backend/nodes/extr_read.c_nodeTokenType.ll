; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_read.c_nodeTokenType.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_read.c_nodeTokenType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@T_Float = common dso_local global i32 0, align 4
@T_Integer = common dso_local global i32 0, align 4
@LEFT_PAREN = common dso_local global i32 0, align 4
@RIGHT_PAREN = common dso_local global i32 0, align 4
@LEFT_BRACE = common dso_local global i32 0, align 4
@T_String = common dso_local global i32 0, align 4
@T_BitString = common dso_local global i32 0, align 4
@OTHER_TOKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @nodeTokenType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nodeTokenType(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 43
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %21, label %26

21:                                               ; preds = %16, %2
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @isdigit(i8 zeroext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %29, %26
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %65

37:                                               ; preds = %34
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 46
  br i1 %41, label %42, label %65

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isdigit(i8 zeroext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %42, %29
  store i64 0, i64* @errno, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i32 @strtoint(i8* %49, i8** %9, i32 10)
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = icmp ne i8* %51, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %48
  %58 = load i64, i64* @errno, align 8
  %59 = load i64, i64* @ERANGE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %48
  %62 = load i32, i32* @T_Float, align 4
  store i32 %62, i32* %3, align 4
  br label %121

63:                                               ; preds = %57
  %64 = load i32, i32* @T_Integer, align 4
  store i32 %64, i32* %3, align 4
  br label %121

65:                                               ; preds = %42, %37, %34
  %66 = load i8*, i8** %4, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 40
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* @LEFT_PAREN, align 4
  store i32 %71, i32* %6, align 4
  br label %118

72:                                               ; preds = %65
  %73 = load i8*, i8** %4, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 41
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @RIGHT_PAREN, align 4
  store i32 %78, i32* %6, align 4
  br label %117

79:                                               ; preds = %72
  %80 = load i8*, i8** %4, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 123
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* @LEFT_BRACE, align 4
  store i32 %85, i32* %6, align 4
  br label %116

86:                                               ; preds = %79
  %87 = load i8*, i8** %4, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 34
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load i8*, i8** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 34
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* @T_String, align 4
  store i32 %104, i32* %6, align 4
  br label %115

105:                                              ; preds = %94, %91, %86
  %106 = load i8*, i8** %4, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 98
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* @T_BitString, align 4
  store i32 %111, i32* %6, align 4
  br label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @OTHER_TOKEN, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %112, %110
  br label %115

115:                                              ; preds = %114, %103
  br label %116

116:                                              ; preds = %115, %84
  br label %117

117:                                              ; preds = %116, %77
  br label %118

118:                                              ; preds = %117, %70
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %63, %61
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @strtoint(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
