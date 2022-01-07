; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_cron.c_lcron_parsepart.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_cron.c_lcron_parsepart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"invalid spec (each %d)\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"invalid spec (val %d out of range %d..%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8**, i64, i64)* @lcron_parsepart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcron_parsepart(i32* %0, i8* %1, i8** %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %35, %5
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 9
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i1 [ true, %21 ], [ %30, %26 ]
  br label %33

33:                                               ; preds = %31, %16
  %34 = phi i1 [ false, %16 ], [ %32, %31 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  br label %16

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 42
  br i1 %43, label %44, label %95

44:                                               ; preds = %38
  store i64 1, i64* %13, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8**, i8*** %9, align 8
  store i8* %46, i8** %47, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 47
  br i1 %52, label %53, label %71

53:                                               ; preds = %44
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  %56 = load i8**, i8*** %9, align 8
  %57 = call i64 @strtol(i8* %55, i8** %56, i32 10)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %53
  %61 = load i64, i64* %13, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %10, align 8
  %64 = sub nsw i64 %62, %63
  %65 = icmp sge i64 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60, %53
  %67 = load i32*, i32** %7, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i32 (i32*, i8*, i64, ...) @luaL_error(i32* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %68)
  store i32 %69, i32* %6, align 4
  br label %134

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %44
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %91, %71
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %10, align 8
  %77 = sub nsw i64 %75, %76
  %78 = icmp sle i64 %74, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %72
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %13, align 8
  %83 = srem i64 %81, %82
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load i32, i32* %14, align 4
  %87 = shl i32 1, %86
  %88 = load i32, i32* %12, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %85, %79
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %72

94:                                               ; preds = %72
  br label %132

95:                                               ; preds = %38
  br label %96

96:                                               ; preds = %95, %127
  %97 = load i8*, i8** %8, align 8
  %98 = load i8**, i8*** %9, align 8
  %99 = call i64 @strtol(i8* %97, i8** %98, i32 10)
  store i64 %99, i64* %15, align 8
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* %10, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %96
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp sgt i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103, %96
  %108 = load i32*, i32** %7, align 8
  %109 = load i64, i64* %15, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* %11, align 8
  %112 = call i32 (i32*, i8*, i64, ...) @luaL_error(i32* %108, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %109, i64 %110, i64 %111)
  store i32 %112, i32* %6, align 4
  br label %134

113:                                              ; preds = %103
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* %10, align 8
  %116 = sub nsw i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = shl i32 1, %117
  %119 = load i32, i32* %12, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %12, align 4
  %121 = load i8**, i8*** %9, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp ne i32 %124, 44
  br i1 %125, label %126, label %127

126:                                              ; preds = %113
  br label %131

127:                                              ; preds = %113
  %128 = load i8**, i8*** %9, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  store i8* %130, i8** %8, align 8
  br label %96

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131, %94
  %133 = load i32, i32* %12, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %107, %66
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
