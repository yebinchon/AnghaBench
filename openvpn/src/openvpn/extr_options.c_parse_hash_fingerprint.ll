; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_parse_hash_fingerprint.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_parse_hash_fingerprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"format error in hash fingerprint: %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"format error in hash fingerprint hex byte: %s\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"format error in hash fingerprint delimiter: %s\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"hash fingerprint is different length than expected (%d bytes): %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i8*, i32, i32, %struct.gc_arena*)* @parse_hash_fingerprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @parse_hash_fingerprint(i8* %0, i32 %1, i32 %2, %struct.gc_arena* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gc_arena*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca [3 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.gc_arena* %3, %struct.gc_arena** %8, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.gc_arena*, %struct.gc_arena** %8, align 8
  %18 = call i64 @gc_malloc(i32 %16, i32 1, %struct.gc_arena* %17)
  %19 = inttoptr i64 %18 to i64*
  store i64* %19, i64** %11, align 8
  store i8 1, i8* %12, align 1
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %76, %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %79

24:                                               ; preds = %20
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 (i32, i8*, ...) @msg(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %10, align 8
  %35 = load i8, i8* %33, align 1
  %36 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  store i8 %35, i8* %36, align 1
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %10, align 8
  %39 = load i8, i8* %37, align 1
  %40 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 1
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 2
  store i8 0, i8* %41, align 1
  store i32 0, i32* %13, align 4
  %42 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %43 = call i32 @sscanf(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load i32, i32* %7, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 (i32, i8*, ...) @msg(i32 %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %45, %32
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64*, i64** %11, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 %51, i64* %55, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %10, align 8
  %58 = load i8, i8* %56, align 1
  store i8 %58, i8* %12, align 1
  %59 = load i8, i8* %12, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 58
  br i1 %61, label %62, label %70

62:                                               ; preds = %49
  %63 = load i8, i8* %12, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 (i32, i8*, ...) @msg(i32 %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %66, %62, %49
  %71 = load i8, i8* %12, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %79

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %20

79:                                               ; preds = %74, %20
  %80 = load i8, i8* %12, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 1
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %83, %79
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 (i32, i8*, ...) @msg(i32 %89, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %90, i8* %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i64*, i64** %11, align 8
  ret i64* %94
}

declare dso_local i64 @gc_malloc(i32, i32, %struct.gc_arena*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
