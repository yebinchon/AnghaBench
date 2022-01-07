; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_wildcard_match.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_v3_utl.c_wildcard_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_CHECK_FLAG_MULTI_LABEL_WILDCARDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"xn--\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64, i8*, i64, i32)* @wildcard_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wildcard_match(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %21 = load i64, i64* %14, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %12, align 8
  %24 = add i64 %22, %23
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %150

27:                                               ; preds = %7
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @equal_nocase(i8* %28, i64 %29, i8* %30, i64 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %150

36:                                               ; preds = %27
  %37 = load i8*, i8** %13, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %16, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* %12, align 8
  %43 = sub i64 %41, %42
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8* %44, i8** %17, align 8
  %45 = load i8*, i8** %17, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @equal_nocase(i8* %45, i64 %46, i8* %47, i64 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %150

53:                                               ; preds = %36
  %54 = load i64, i64* %10, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = load i8*, i8** %11, align 8
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 46
  br i1 %60, label %61, label %73

61:                                               ; preds = %56
  %62 = load i8*, i8** %16, align 8
  %63 = load i8*, i8** %17, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %150

66:                                               ; preds = %61
  store i32 1, i32* %20, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* @X509_CHECK_FLAG_MULTI_LABEL_WILDCARDS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 1, i32* %19, align 4
  br label %72

72:                                               ; preds = %71, %66
  br label %73

73:                                               ; preds = %72, %56, %53
  %74 = load i32, i32* %20, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %14, align 8
  %78 = icmp uge i64 %77, 4
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i8*, i8** %13, align 8
  %81 = call i64 @strncasecmp(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  br label %150

84:                                               ; preds = %79, %76, %73
  %85 = load i8*, i8** %17, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = icmp eq i8* %85, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i8*, i8** %16, align 8
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 42
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 1, i32* %8, align 4
  br label %150

95:                                               ; preds = %89, %84
  %96 = load i8*, i8** %16, align 8
  store i8* %96, i8** %18, align 8
  br label %97

97:                                               ; preds = %146, %95
  %98 = load i8*, i8** %18, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = icmp ne i8* %98, %99
  br i1 %100, label %101, label %149

101:                                              ; preds = %97
  %102 = load i8*, i8** %18, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp sle i32 48, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i8*, i8** %18, align 8
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp sle i32 %109, 57
  br i1 %110, label %145, label %111

111:                                              ; preds = %106, %101
  %112 = load i8*, i8** %18, align 8
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp sle i32 65, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i8*, i8** %18, align 8
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp sle i32 %119, 90
  br i1 %120, label %145, label %121

121:                                              ; preds = %116, %111
  %122 = load i8*, i8** %18, align 8
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp sle i32 97, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i8*, i8** %18, align 8
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp sle i32 %129, 122
  br i1 %130, label %145, label %131

131:                                              ; preds = %126, %121
  %132 = load i8*, i8** %18, align 8
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 45
  br i1 %135, label %145, label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %19, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i8*, i8** %18, align 8
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %142, 46
  br i1 %143, label %145, label %144

144:                                              ; preds = %139, %136
  store i32 0, i32* %8, align 4
  br label %150

145:                                              ; preds = %139, %131, %126, %116, %106
  br label %146

146:                                              ; preds = %145
  %147 = load i8*, i8** %18, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %18, align 8
  br label %97

149:                                              ; preds = %97
  store i32 1, i32* %8, align 4
  br label %150

150:                                              ; preds = %149, %144, %94, %83, %65, %52, %35, %26
  %151 = load i32, i32* %8, align 4
  ret i32 %151
}

declare dso_local i32 @equal_nocase(i8*, i64, i8*, i64, i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
