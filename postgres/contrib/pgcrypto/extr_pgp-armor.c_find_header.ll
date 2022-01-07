; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-armor.c_find_header.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-armor.c_find_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@find_header.start_sep = internal global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [11 x i8] c"-----BEGIN\00", align 1
@find_header.end_sep = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"-----END\00", align 1
@PXE_PGP_CORRUPT_ARMOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8**, i32)* @find_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_header(i8* %0, i8* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i8*, i8** @find_header.end_sep, align 8
  br label %19

17:                                               ; preds = %4
  %18 = load i8*, i8** @find_header.start_sep, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i8* [ %16, %15 ], [ %18, %17 ]
  store i8* %20, i8** %11, align 8
  br label %21

21:                                               ; preds = %19, %43
  %22 = load i8*, i8** %10, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = call i8* @find_str(i8* %22, i8* %23, i8* %24, i32 %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @PXE_PGP_CORRUPT_ARMOR, align 4
  store i32 %31, i32* %5, align 4
  br label %140

32:                                               ; preds = %21
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 -1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %32
  br label %49

43:                                               ; preds = %36
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = load i8*, i8** %10, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %10, align 8
  br label %21

49:                                               ; preds = %42
  %50 = load i8*, i8** %10, align 8
  %51 = load i8**, i8*** %8, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = load i8*, i8** %10, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %10, align 8
  br label %57

57:                                               ; preds = %76, %49
  %58 = load i8*, i8** %10, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ult i8* %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i8*, i8** %10, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 45
  br label %66

66:                                               ; preds = %61, %57
  %67 = phi i1 [ false, %57 ], [ %65, %61 ]
  br i1 %67, label %68, label %79

68:                                               ; preds = %66
  %69 = load i8*, i8** %10, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sge i32 %71, 32
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @PXE_PGP_CORRUPT_ARMOR, align 4
  store i32 %75, i32* %5, align 4
  br label %140

76:                                               ; preds = %73
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %10, align 8
  br label %57

79:                                               ; preds = %66
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = icmp slt i64 %84, 5
  br i1 %85, label %91, label %86

86:                                               ; preds = %79
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = call i64 @memcmp(i8* %87, i8* %88, i32 5)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86, %79
  %92 = load i32, i32* @PXE_PGP_CORRUPT_ARMOR, align 4
  store i32 %92, i32* %5, align 4
  br label %140

93:                                               ; preds = %86
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 5
  store i8* %95, i8** %10, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = icmp ult i8* %96, %97
  br i1 %98, label %99, label %132

99:                                               ; preds = %93
  %100 = load i8*, i8** %10, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 10
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load i8*, i8** %10, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 13
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @PXE_PGP_CORRUPT_ARMOR, align 4
  store i32 %110, i32* %5, align 4
  br label %140

111:                                              ; preds = %104, %99
  %112 = load i8*, i8** %10, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 13
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %10, align 8
  br label %119

119:                                              ; preds = %116, %111
  %120 = load i8*, i8** %10, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = icmp ult i8* %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %119
  %124 = load i8*, i8** %10, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 10
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i8*, i8** %10, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %10, align 8
  br label %131

131:                                              ; preds = %128, %123, %119
  br label %132

132:                                              ; preds = %131, %93
  %133 = load i8*, i8** %10, align 8
  %134 = load i8**, i8*** %8, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = ptrtoint i8* %133 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %132, %109, %91, %74, %30
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i8* @find_str(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
