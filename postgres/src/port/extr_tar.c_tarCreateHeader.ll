; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_tar.c_tarCreateHeader.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_tar.c_tarCreateHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TAR_NAME_TOO_LONG = common dso_local global i32 0, align 4
@TAR_SYMLINK_TOO_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ustar\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@TAR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tarCreateHeader(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load i8*, i8** %11, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = icmp sgt i32 %20, 99
  br i1 %21, label %22, label %24

22:                                               ; preds = %8
  %23 = load i32, i32* @TAR_NAME_TOO_LONG, align 4
  store i32 %23, i32* %9, align 4
  br label %139

24:                                               ; preds = %8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = icmp sgt i32 %29, 99
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @TAR_SYMLINK_TOO_LONG, align 4
  store i32 %32, i32* %9, align 4
  br label %139

33:                                               ; preds = %27, %24
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @memset(i8* %34, i32 0, i32 512)
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @strlcpy(i8* %37, i8* %38, i32 100)
  %40 = load i8*, i8** %12, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %14, align 4
  %44 = call i64 @S_ISDIR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %42, %33
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @strlen(i8* %47)
  store i32 %48, i32* %18, align 4
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @Min(i32 %49, i32 99)
  store i32 %50, i32* %18, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %18, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 47, i8* %54, align 1
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %18, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %46, %42
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 100
  %63 = load i32, i32* %14, align 4
  %64 = and i32 %63, 4095
  %65 = call i32 @print_tar_number(i8* %62, i32 8, i32 %64)
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 108
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @print_tar_number(i8* %67, i32 8, i32 %68)
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 116
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @print_tar_number(i8* %71, i32 8, i32 %72)
  %74 = load i8*, i8** %12, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %60
  %77 = load i32, i32* %14, align 4
  %78 = call i64 @S_ISDIR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76, %60
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 124
  %83 = call i32 @print_tar_number(i8* %82, i32 12, i32 0)
  br label %89

84:                                               ; preds = %76
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 124
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @print_tar_number(i8* %86, i32 12, i32 %87)
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 136
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @print_tar_number(i8* %91, i32 12, i32 %92)
  %94 = load i8*, i8** %12, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 156
  store i8 50, i8* %98, align 1
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 157
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 @strlcpy(i8* %100, i8* %101, i32 100)
  br label %114

103:                                              ; preds = %89
  %104 = load i32, i32* %14, align 4
  %105 = call i64 @S_ISDIR(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 156
  store i8 53, i8* %109, align 1
  br label %113

110:                                              ; preds = %103
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 156
  store i8 48, i8* %112, align 1
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %96
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 257
  %117 = call i32 @strcpy(i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %118 = load i8*, i8** %10, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 263
  %120 = call i32 @memcpy(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %121 = load i8*, i8** %10, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 265
  %123 = call i32 @strlcpy(i8* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 32)
  %124 = load i8*, i8** %10, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 297
  %126 = call i32 @strlcpy(i8* %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 32)
  %127 = load i8*, i8** %10, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 329
  %129 = call i32 @print_tar_number(i8* %128, i32 8, i32 0)
  %130 = load i8*, i8** %10, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 337
  %132 = call i32 @print_tar_number(i8* %131, i32 8, i32 0)
  %133 = load i8*, i8** %10, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 148
  %135 = load i8*, i8** %10, align 8
  %136 = call i32 @tarChecksum(i8* %135)
  %137 = call i32 @print_tar_number(i8* %134, i32 8, i32 %136)
  %138 = load i32, i32* @TAR_OK, align 4
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %114, %31, %22
  %140 = load i32, i32* %9, align 4
  ret i32 %140
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @print_tar_number(i8*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @tarChecksum(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
